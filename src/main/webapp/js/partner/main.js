 $(function () {
    //Enable iCheck plugin for checkboxes
    //iCheck for checkbox and radio inputs
    $('.tb-partners input[type="checkbox"]').iCheck({
      checkboxClass: 'icheckbox_flat-blue',
      radioClass: 'iradio_flat-blue'
    });

    //Enable check and uncheck all functionality
   $(".checkbox-toggle22").click(function () {
      var clicks = $(this).data('clicks');
      if (clicks) {
        //Uncheck all checkboxes
        $(".tb-partners input[type='checkbox']").iCheck("uncheck");
        $(".fa", this).removeClass("fa-check-square-o").addClass('fa-square-o');
      } else {
        //Check all checkboxes
        $(".tb-partners input[type='checkbox']").iCheck("check");
        $(".fa", this).removeClass("fa-square-o").addClass('fa-check-square-o');
      }
      $(this).data("clicks", !clicks);
    });
    
   
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
						      link: {
						          required: true,
						      }
						  
						     
						  }//end rules
					  
						};//end obj rules 
			 var frm = $( "#frm-partners" );
				 frm.validate(objrules);		   


$("#btnnewpartners").click(function(){
	  var frm_valib=frm.valid();
		if(frm_valib){
			var pdata=   $("#frm-partners").serialize();
			do_insert(pdata);
		}	
});
function do_insert(pdata){
	   $.post("admin/ajax/Partners/insert",pdata,function(data){
 		// alert(data);
 		 if(parseInt(data) == 1){
 			 alert("New partners successfull!");
 			 location.href="admin/Partners";
 		 }else{
 			 alert("Server error! Please try again!");
 		 }
 	 },"text");
}

$("#btnupdatepartners").click(function(){
		  var frm_valib=frm.valid();
			if(frm_valib){
				var pdata=   $("#frm-partners").serialize();
				do_update(pdata);
			}	
	   });
	   function do_update(pdata){
		   $.post("admin/ajax/Partners/update",pdata,function(data){
	    		// alert(data);
	    		 if(parseInt(data) == 1){
	    			 alert("Edit partners successfull!");
	    			 location.href="admin/Partners";
	    		 }else{
	    			 alert("Server error! Please try again!");
	    		 }
	    	 },"text");
	   }
	$("#do_delete_partners1,#do_delete_partners2").click(function(){
		 var ids = [];
	     $.each($(".tb-partners input[type='checkbox']:checked"), function(){            
	    	 ids.push($(this).val());
	     });
	     if(ids.length>0){
	    	 /*alert("My favourite sports are: " + ids.join(","));*/
	    	 var pdata={"ids":ids.join(",")};
	    	 var _length=ids.length
	    	 $.post("admin/ajax/Partners/delete",pdata,function(data){
	    		// alert(data);
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
	
	$("#btn-do-upload-partners").click(function(){
		$("#file-upload-feature-partners").click();
	});
	
	$('#file-upload-feature-partners').ajaxfileupload({
		'valid_extensions' : ['gif','png','jpg','jpeg'],
	    'action': "upload/publicimg/?folder=partners",
	    'onComplete': function(response) {	
	        if (response.status==false) {
	        	$.messager.alert('Error',response.message,'error');
	        	 //$("#strongmessage").html("<font color='red'>" + JSON.stringify(response.message) + " </font>");
	        }
	        if (response.status==true) {
	        	//$.messager.alert('Info',response.message,'info');
	            var pram = response.pram;
	            var url_img="upload/partners/"+pram;
	            $("#img-feature_image_partners").attr('src',url_img);
	            $('#frm-partners input[name="logo"]').val(pram);
	           // $("#id_uploadsuccess").val(pram);
	            //$("#branchimg_@index").attr('src','upload/branch/'+pram);
	           // $("#strongmessage").html("<font color='green'>" + JSON.stringify(response.message) + " </font>");
	            
	        }
	    },
	    'onStart': function() {
	    
	    }
	});
 });  
