 $(function () {
   
    
    var objrules= {
			  invalidHandler: function(form, validator) {
				      var errors = validator.numberOfInvalids();
				      if (errors) {                    
				          validator.errorList[0].element.focus();
				      }
				} ,
						  rules : {
							  location_img: {
						          required: true
						      },
							  location_name: {
						          required: true
						      },
						      office_address: {
						          required: true,
						      },
						      show_room_address: {
						          required: true,
						      }
						  },
						  messages: {
							  location_name:{required: "This field is required!"},
							  office_address:{required: "This field is required!"},
							  show_room_address:{required: "This field is required!"},
							  location_name:{required: "This field is required!"},
						    }//end message
						};//end obj rules 
    var frm_add =   $('#modal-contact-insert form');
    frm_add.validate(objrules);		   
	//frm_add.validate(objrules);	
    $("#btn-modal-contact-insert").click(function(){
		 $('#modal-contact-insert form')[0].reset();
		 $('#modal-contact-insert form').find("input[name='sqltype']").val("A");
		 $('#modal-contact-insert form').find("input[name='id']").val("0");
		 $("#img-contact-id").attr('src','upload/contact/no_image.jpg');
		 $("#modal-contact-insert .modal-title").html('<i class="fa fa-plus"></i> Add new contact');
		 $("#modal-contact-insert").modal("show");
	 });
  $(".btn-open-modal-contact-edit").click(function(){
    	
    	var Contact=$(this).data('contact');
		// console.log(User);
		 $('#modal-contact-insert form')[0].reset();
		 $('#modal-contact-insert form').find("input[name='sqltype']").val("E");
		 
		// alert(JSON.stringify(Contact));
		 frm_add.fromOBJECT(Contact);
		 $("#img-contact-id").attr('src','upload/contact/'+Contact.location_img);
		 $("#modal-contact-insert .modal-title").html('<i class="fa fa-edit"></i> Edit Contact');		 
		 $("#modal-contact-insert").modal("show");
	 });
    $("#btn-submit-contact-insert").click(function(){
    	var frm_valib=frm_add.valid();
    	if(frm_valib){
    		var pdata=$("#frm_add").serialize();    
    		var sqltype=$('#modal-contact-insert form').find("input[name='sqltype']").val();
    		if(sqltype==''){
    			sqltype='A';
    		}
    		if(sqltype=='A'){
    			//alert("A");
    			$.post("admin/ajax/contact/insert",pdata,function(data){
    				console.log(data);
    				if(data==1){
    					alert("Item was successfully inserted");
    					location.reload();
    				}else{
    					alert("Item was failed inserted");
    				}
    			},"text"); 
    			
    		}else if(sqltype=='E'){
    			$.post("admin/ajax/contact/edit",pdata,function(data){
    				
    				//console.log(data);
    				if(data==1){
    					alert("Item was successfully edited");
    					location.reload();
    				}else{
    					alert("Item was failed edited");
    				}
    			},"text"); 
    		}	
    	}	
	});
    
    $(".btn-contact-delete").click(function(){
    	var id=$(this).data('id');
    	var txt;
    	var r = confirm("Are you sure you want to delete?");
    	if (r == true) {
    		$.post("admin/ajax/contact/delete",{'id':id},function(data){
     			//console.log(data);
     			if(data==1){
     				alert("Item was successfully deleted");
     				location.reload();
     			}else{
     				alert("Item was failed deleted");
     			}
     		},"text");
    	} 
    	 
    });
    
    
    $("#btn-upload-contact").click(function(){
		   $("input[name='filecontact']").click();
	   });
	   var url="upload/contact/?folder=contact";
	   $("input[name='filecontact']").ajaxfileupload({
	        'action': url,
	        'method':'post',
	        'valid_extensions' : ['jpg','png','gif'],
	        'onComplete': function(response) {   
	        		 if (response.status==false) {
	                     alert(response.message);
	                 }
	                 if (response.status==true) {
	                	 console.log(response);
	                     var pram = response.pram;
	                     //var imgtag='<img alt="" src="image/upload/product/'+pram+'" class="img img-responsive">';
	                     $("#img-contact-id").attr('src','upload/contact/'+pram);
	                     $("#feature_image_input").val(pram);
	                 }
	        },
	        'onStart': function() {
	        }
	    });
 }); 
  