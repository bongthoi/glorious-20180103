 $(function () {
   
	 var objrules= {
			  invalidHandler: function(form, validator) {
				      var errors = validator.numberOfInvalids();
				      if (errors) {                    
				          validator.errorList[0].element.focus();
				      }
				} ,
						  rules : {
							  username: {
						          required: true
						      },
						      password: {
						          required: true
						      },
						      name: {
						          required: true,
						      },
						      phone: {
						          required: true,
						      },
						      user_role: {
						          required: true,
						      },
						      enabled: {
						          required: true,
						      }
						  },
						  messages: {
							  username:{required: "This field is required!"},
							  password:{required: "This field is required!"},
							  name:{required: "This field is required!"},
							  phone:{required: "This field is required!"},
							  user_role:{required: "This field is required!"},
							  enabled:{required: "This field is required!"}	
						    }//end message
						};//end obj rules 
	 
	 
	 var frm_add =   $('#modal-user-insert form');
	 frm_add.validate(objrules);
    $("#btn-open-modal-User-add").click(function(){
		 $('#modal-user-insert form')[0].reset();
		 $('#modal-user-insert form').find("input[name='sqltype']").val("A");
		 $('#modal-user-insert form').find("input[name='username']").prop("readonly",false);
		 $("modal-user-insert .modal-title").html('<i class="fa fa-plus"></i> Add new User');
		 $("#modal-user-insert").modal("show");
	 });
    
    $(".btn-open-modal-user-edit").click(function(){
    	
    	var User=$(this).data('user');
		// console.log(User);
		 $('#modal-user-insert form')[0].reset();
		 $('#modal-user-insert form').find("input[name='username']").prop("readonly",true);
		 $('#modal-user-insert form').find("input[name='sqltype']").val("E");
		// alert(User);
		 
		 frm_add.fromOBJECT(User);
		// alert(JSON.stringify(User));
		 $("#modal-user-insert .modal-title").html('<i class="fa fa-edit"></i> Edit User');		 
		 $("#modal-user-insert").modal("show");
	 });
    
    $("#btn-submit-user-insert").click(function(){
    	var frm_valid=frm_add.valid();
    	if(frm_valid){
    		var pdata=$("#frm_add").serialize();    
    		var sqltype=$('#modal-user-insert form').find("input[name='sqltype']").val();
    		if(sqltype==''){
    			sqltype='A';
    		}
    		if(sqltype=='A'){
    			//alert(pdata);
    			
    			$.post("admin/ajax/user/insert",pdata,function(data){
    				//console.log(data);
    				if(data==1){
    					alert("Item was successfully inserted");
    					location.reload();
    				}else{
    					alert("Item was failed inserted");
    				}
    			},"text"); 
    			
    		}else if(sqltype=='E'){
    			$.post("admin/ajax/user/edit",pdata,function(data){
    				
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
    
    $(".btn-user-delete").click(function(){
    	var key=$(this).data('username');
    	var r = confirm("Are you sure you want to delete?");
    	if (r == true) {
    		$.post("admin/ajax/user/delete",{'username':key},function(data){
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
    
    $(".checkbox-toggle-user").click(function () {
	      var clicks = $(this).data('clicks');
	      if (clicks) {
	        //Uncheck all checkboxes
	        $(".tb-User input[type='checkbox']").iCheck("uncheck");
	        $(".fa", this).removeClass("fa-check-square-o").addClass('fa-square-o');
	      } else {
	        //Check all checkboxes
	        $(".tb-User input[type='checkbox']").iCheck("check");
	        $(".fa", this).removeClass("fa-square-o").addClass('fa-check-square-o');
	      }
	      $(this).data("clicks", !clicks);
	    });
    
    $("#do_disabled_User").click(function(){
    	
		var ids = [];
	     $.each($(".tb-User input[type='checkbox']:checked"), function(){            
	    	 ids.push("'"+$(this).val()+"'");
	     });
	     if(ids.length>0){
	    	 var pdata={"ids":ids.join(","),"status":0};
	    	 var _length=ids.length
	    	 $.post("admin/ajax/user/active",pdata,function(data){
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
    
    $("#do_active_User").click(function(){
		var ids = [];
	     $.each($(".tb-User input[type='checkbox']:checked"), function(){            
	    	 ids.push("'"+$(this).val()+"'");
	     });
	     if(ids.length>0){
	    	 var pdata={"ids":ids.join(","),"status":1};
	    	 var _length=ids.length
	    	 $.post("admin/ajax/user/active",pdata,function(data){
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
  
 }); 
  