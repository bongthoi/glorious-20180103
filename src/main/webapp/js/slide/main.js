 $(function () {
       
    	//frm_add.validate(objrules);	
    $("#btn-modal-slide-insert").click(function(){
		 $('#modal-slide-insert form')[0].reset();
		 $('#modal-slide-insert form').find("input[name='sqltype']").val("A");
		 $('#modal-slide-insert form').find("input[name='id']").val("0");
		 $("#img-slide-id").attr('src','upload/slide/no_image.jpg');
		 $("#modal-slide-insert .modal-title").html('<i class="fa fa-plus"></i> Add new slide');
		 $("#modal-slide-insert").modal("show");
	 });
 
    $("#btn-submit-slide-insert").click(function(){
    	//var frm_valib=frm_add.valid();
    	//if(frm_valib){
    	
    		var pdata=$("#frm_add").serialize();    
    		var sqltype=$('#modal-slide-insert form').find("input[name='sqltype']").val();
			

    		if(sqltype==''){
    			sqltype='A';
    		}
    		
    		if(sqltype=='A'){
    		
    			$.post("admin/ajax/slide/insert",pdata,function(data){
    				
    				//console.log(data);
    				if(data==1){
    					alert("Item was successfully inserted");
    					location.reload();
    				}else{
    					alert("Item was failed inserted");
    				}
    			},"text"); 
    			
    		}else if(sqltype=='E'){
    			
    			$.post("admin/ajax/slide/edit",pdata,function(data){
    				
    				//console.log(data);
    				
    				if(data==1){
    					alert("Item was successfully edited");
    					location.reload();
    				}else{
    					alert("Item was failed edited");
    				}
    			},"text"); 
    		}	
    	//}	
	});
    
    $(".btn-open-modal-slide-edit").click(function(){
    	var Slide=$(this).data('slide');
    	//alert(Slide);

		// console.log(User);
		 $('#modal-slide-insert form')[0].reset();
		 $('#modal-slide-insert form').find("input[name='sqltype']").val("E");
		 
		 //alert(JSON.stringify(Slide));
		 $('#modal-slide-insert form').fromOBJECT(Slide);
		 
		  $('#modal-slide-insert form input[name="id"]').val(Slide.id);
		 $("#img-slide-id").attr('src','upload/slide/'+Slide.img_fullname);
		 $("#modal-slide-insert .modal-title").html('<i class="fa fa-edit"></i> Edit Slide');		 
		 $("#modal-slide-insert").modal("show");
	 });
    
    $(".btn-slide-delete").click(function(){
    	//alert("aaaaaa");
    	
    	var id=$(this).data('id');
    	var txt;
    	//alert(id);

    	var r = confirm("Are you sure you want to delete?");
    	if (r == true) {
    		$.post("admin/ajax/slide/delete",{'id':id},function(data){
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
    
    
    $("#btn-upload-slide").click(function(){
		   $("#fileslide").click();
	   });
	   var url="upload/publicimg/?folder=slide";
	   $("#fileslide").ajaxfileupload({
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
	                     $("#img-slide-id").attr('src','upload/slide/'+pram);
	                     $("#feature_image_input").val(pram);
	                 }
	        },
	        'onStart': function() {
	        }
	    });
 }); 
  