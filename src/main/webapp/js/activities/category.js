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
								      }
								  },//end rules
								  messages: {
									  name:{required: "This field is required!"}
								    }//end message
								};//end obj rules 
					 var frm = $( "#frm-news-catgory" );
						 frm.validate(objrules);		   
		 	    
	    $(".btn-catgory-edit").click(function(){
	    	var Catgory=$(this).data('catgory');
			 $('#frm-news-catgory')[0].reset();
			 $('#frm-news-catgory').find("input[name='sqltype']").val("E");
			 $("#btn-news-catgory-add").prop('value', 'Update');
			 $("#btn-news-catgory-reset").prop('value', 'Close');
			 $('.box-title').html('<i class="fa fa-tag"></i>Activities Category Update ');
			 frm.fromOBJECT(Catgory);
			 	
		 });
						 
						 
						 
		 $("#btn-news-catgory-add").click(function(){
		    	var frm_valid=frm.valid();
		    	if(frm_valid){
		    		var pdata=$("#frm-news-catgory").serialize();    
		    		var sqltype=$('#frm-news-catgory').find("input[name='sqltype']").val();
		    		if(sqltype==''){
		    			sqltype='A';
		    		}
		    		if(sqltype=='A'){
		    			//alert("A");
		    			//alert(pdata);
		    			do_insert_catgory(pdata);
		    					    			
		    		}else if(sqltype=='E'){
		    			//alert("E");
		    			do_update_catgory(pdata);
		    		}	
		    	}	
			});
						 
		 $("#btn-news-catgory-reset").click(function(){
			 location.reload();
		 });
		 
	 //Enable iCheck plugin for checkboxes
	    //iCheck for checkbox and radio inputs
	    $('.tb-news-catgory input[type="checkbox"]').iCheck({
	      checkboxClass: 'icheckbox_flat-blue',
	      radioClass: 'iradio_flat-blue'
	    });

	    //Enable check and uncheck all functionality
	   $(".checkbox-toggle4").click(function () {
	      var clicks = $(this).data('clicks');
	      if (clicks) {
	        //Uncheck all checkboxes
	        $(".tb-news-catgory input[type='checkbox']").iCheck("uncheck");
	        $(".fa", this).removeClass("fa-check-square-o").addClass('fa-square-o');
	      } else {
	        //Check all checkboxes
	        $(".tb-news-catgory input[type='checkbox']").iCheck("check");
	        $(".fa", this).removeClass("fa-square-o").addClass('fa-check-square-o');
	      }
	      $(this).data("clicks", !clicks);
	    });
	   
	   
	   $("#do_delete_newscatgory1,#do_delete_newscatgory2").click(function(){
			 var ids = [];
		     $.each($(".tb-news-catgory input[type='checkbox']:checked"), function(){            
		    	 ids.push($(this).val());
		     });
		     if(ids.length>0){
		    	 /*alert("My favourite sports are: " + ids.join(","));*/
		    	 var pdata={"ids":ids.join(",")};
		    	 var _length=ids.length
		    	 $.post("admin/activities/catgory/delete",pdata,function(data){
		    		 if(parseInt(data) ==_length){
		    			 alert("Delete Catgory successfull!")
		    			 location.reload();
		    		 }else{
		    			 alert("Server error! Please try again!");
		    		 }
		    	 },"text");
		     }else{
		    	 return;
		     }
		}) ;  
	   
	  function do_insert_catgory(pdata){
		   $.post("admin/activities/catgory/insert",pdata,function(data){
		 		 if(parseInt(data) == 1){
		 			 alert("Add New Catgory successfull!");
		 			 location.reload();
		 		 }else{
		 			 alert("Server error! Please try again!");
		 		 }
		 	 },"text");
	  }
 
	  function do_update_catgory(pdata){
		   $.post("admin/activities/catgory/update",pdata,function(data){
		 		 //alert(data);
		 		 if(parseInt(data) == 1){
		 			 alert("Update Catgory successfull!");
		 			 location.reload();
		 		 }else{
		 			 alert("Server error! Please try again!");
		 		 }
		 	 },"text");
	   }
	  	   
 });   