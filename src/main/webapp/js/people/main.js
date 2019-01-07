 $(function () {
   
    
    var objrules= {
			  invalidHandler: function(form, validator) {
				      var errors = validator.numberOfInvalids();
				      if (errors) {                    
				          validator.errorList[0].element.focus();
				      }
				} ,
						  rules : {
							  name: {
						          required: true
						      },
						      img_profile: {
						          required: true
						      },
						      position: {
						          required: true,
						      },
						      description: {
						          required: true,
						      },
						      order: {
						          required: true,
						      }
						  },
						  messages: {
							  name:{required: "This field is required!"},
							  img_profile:{required: "This field is required!"},
							  position:{required: "This field is required!"},
							  description:{required: "This field is required!"},
							  order:{required: "This field is required!"}
						    }//end message
						};//end obj rules 
    var frm_add =   $('#modal-people-insert form');
    frm_add.validate(objrules);		   
	//frm_add.validate(objrules);	
    $("#btn-open-modal-people-add").click(function(){
		 $('#modal-people-insert form')[0].reset();
		 $('#modal-people-insert form').find("input[name='sqltype']").val("A");
		 $('#modal-people-insert form').find("input[name='id']").val("0");
		 $("#img-people-id").attr('src','upload/people/no_image.jpg');
		 $("#modal-people-insert .modal-title").html('<i class="fa fa-plus"></i> Add new contact');
		 $("#modal-people-insert").modal("show");
	 });
  $(".btn-open-modal-people-edit").click(function(){
    	//alert("edit");
    	var People=$(this).data('people');

		// console.log(User);
		 $('#modal-people-insert form')[0].reset();
		 $('#modal-people-insert form').find("input[name='sqltype']").val("E");
		 var MCEeditor=tinymce.get('my_editor_people');
			 MCEeditor.setContent(People.description);	
		//alert(JSON.stringify(People));
		 frm_add.fromOBJECT(People);
		 
		 $("#img-people-id").attr('src','upload/people/'+People.img_profile);
		 $("#img-people-id1").attr('src','upload/people/'+People.img_content);
		 $("#modal-people-insert .modal-title").html('<i class="fa fa-edit"></i> Edit People');		 
		 $("#modal-people-insert").modal("show");
	 });
    $("#btn-submit-people-insert").click(function(){
    	
    	var frm_valib=frm_add.valid();
    	//alert("insert function");
    	if(frm_valib){
    		var MCEeditor=tinymce.get('my_editor_people');
			var content=MCEeditor.getContent();		
			//alert(content)
			$("#frm_add #my_editor_people").val(content);
			//var pdata=$("#frm-about").serialize();
    		var pdata=$("#frm_add").serialize();    
    		var sqltype=$('#modal-people-insert form').find("input[name='sqltype']").val();
    		if(sqltype==''){
    			sqltype='A';
    		}
    		if(sqltype=='A'){
    			//alert(pdata);
    			$.post("admin/ajax/people/insert",pdata,function(data){
    				alert(data);
    				if(data==1){
    					alert("Item was successfully inserted");
    					location.reload();
    				}else{
    					alert("Item was failed inserted");
    				}
    			},"text"); 
    			
    		}else if(sqltype=='E'){
    			$.post("admin/ajax/people/edit",pdata,function(data){
    				
    				/*alert(pdata)*/
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
    
    $(".btn-people-delete").click(function(){
    	var id=$(this).data('id');
    	var r = confirm("Are you sure you want to delete?");
    	if (r == true) {
    		$.post("admin/ajax/people/delete",{'id':id},function(data){
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
  
	   
	   $("#btn-upload-people").click(function(){
		   $("#filespeople").click();
	   });
	   var url="upload/publicimg/?folder=people";
	   $("#filespeople").ajaxfileupload({
	        'action': url,
	        'method':'post',
	        'valid_extensions' : ['jpg','png','gif'],
	        'onComplete': function(response) {   
	        		 if (response.status==false) {
	                     alert(response.message);
	                 }
	                 if (response.status==true) {
	                	// console.log(response);
	                     var pram = response.pram;
	                     //console.log(pram);
	                     //var imgtag='<img alt="" src="image/upload/product/'+pram+'" class="img img-responsive">';
	                     $("#img-people-id").attr('src','upload/people/'+pram);
	                     $("#feature_image_input").val(pram);
	                 }
	        },
	        'onStart': function() {
	        }
	    });
	   
	   $("#btn-upload-people1").click(function(){
		   $("#filespeople1").click();
	   });
	   var url1="upload/publicimg/?folder=people";
	   $("#filespeople1").ajaxfileupload({
	        'action': url1,
	        'method':'post',
	        'valid_extensions' : ['jpg','png','gif'],
	        'onComplete': function(response) {   
	        		 if (response.status==false) {
	                     alert(response.message);
	                 }
	                 if (response.status==true) {
	                	// console.log(response);
	                     var pram = response.pram;
	                     //console.log(pram);
	                     //var imgtag='<img alt="" src="image/upload/product/'+pram+'" class="img img-responsive">';
	                     $("#img-people-id1").attr('src','upload/people/'+pram);
	                     $("#feature_image_input1").val(pram);
	                 }
	        },
	        'onStart': function() {
	        }
	    });
	   
	   
	   $(".checkbox-toggle-people").click(function () {
		      var clicks = $(this).data('clicks');
		      if (clicks) {
		        //Uncheck all checkboxes
		        $(".tb-People input[type='checkbox']").iCheck("uncheck");
		        $(".fa", this).removeClass("fa-check-square-o").addClass('fa-square-o');
		      } else {
		        //Check all checkboxes
		        $(".tb-People input[type='checkbox']").iCheck("check");
		        $(".fa", this).removeClass("fa-square-o").addClass('fa-check-square-o');
		      }
		      $(this).data("clicks", !clicks);
		    });
	   
	   $("#do_disabled_People").click(function(){
			var ids = [];
		     $.each($(".tb-People input[type='checkbox']:checked"), function(){            
		    	 ids.push("'"+$(this).val()+"'");
		     });
		     if(ids.length>0){
		    	 var pdata={"ids":ids.join(","),"status":0};
		    	 var _length=ids.length
		    	 $.post("admin/ajax/people/active",pdata,function(data){
		    		 if(parseInt(data) ==_length){
		    			 location.reload();
		    		 }else{
		    			 alert("Server error! Please try again!");
		    		 }
		    	 },"text");
		     }else{
		    	 return;
		     }
			
		}) ;  
	   
	   $("#do_active_People").click(function(){
			var ids = [];
		     $.each($(".tb-People input[type='checkbox']:checked"), function(){            
		    	 ids.push("'"+$(this).val()+"'");
		     });
		     if(ids.length>0){
		    	 var pdata={"ids":ids.join(","),"status":1};
		    	 var _length=ids.length
		    	 $.post("admin/ajax/people/active",pdata,function(data){
		    		 if(parseInt(data) ==_length){
		    			 location.reload();
		    		 }else{
		    			 alert("Server error! Please try again!");
		    		 }
		    	 },"text");
		     }else{
		    	 return;
		     }
			
		}) ;  
	   
	   tinymce.init({
			  selector: '#my_editor_people',
			  height: 300,
			  menubar: 'file edit insert view format table tools',
			 /* plugins: [
			    'advlist autolink lists link image charmap print preview anchor',
			    'searchreplace visualblocks code fullscreen',
			    'insertdatetime media table contextmenu paste code'
			  ],*/
			   plugins: ["link","textcolor","code","charmap","searchreplace","visualblocks","preview","fullscreen","table","lists"],
			  toolbar: 'undo redo | bold italic | fontselect fontsizeselect | forecolor backcolor |alignleft aligncenter alignright  alignjustify | bullist numlist indent outdent | link unlink image',
			  content_css: '//www.tinymce.com/css/codepen.min.css',			    
		});
	   
	  
 }); 
