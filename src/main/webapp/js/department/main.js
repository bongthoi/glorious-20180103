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
							  description: {
						          required: true
						      }
						  },
						  messages: {
							  name:{required: "This field is required!"},
							  description:{required: "This field is required!"}	
						    }//end message
						};//end obj rules 
   var frm_add =   $('#modal-department-insert form');
   frm_add.validate(objrules);	
	  
	var frm_add =   $('#modal-department-insert form');
	//frm_add.validate(objrules);		   
	
	 $("#btn-modal-department-insert").click(function(){
		 $('#modal-department-insert form')[0].reset();
		 $(frm_add).find("input[name='sqltype']").val("A");
		 
		 $("#modal-department-insert .modal-title").html('<i class="fa fa-plus"></i> Add new department');
		 $("#modal-department-insert").modal("show");
	 });
	 
	 $(".btn-open-modal-department-edit").click(function(){
		 var department=$(this).data('department');
		 $('#modal-department-insert form')[0].reset();
		// alert(JSON.stringify(department));
		 frm_add.fromOBJECT(department);
		 $(frm_add).find("input[name='sqltype']").val("E");
		 $("#modal-department-insert .modal-title").html('<i class="fa fa-edit"></i> Edit department');
		 $("#modal-department-insert").modal("show");
	 });
	   
	   
	$("#btn-submit-department-insert").click(function(){
		
		var frm_valib=frm_add.valid();
    	if(frm_valib){
				var pdata=  frm_add.serialize();
				var sqltype=$('#modal-department-insert form').find("input[name='sqltype']").val();
	    		if(sqltype==''){
	    			sqltype='A';
	    		}
	    		if(sqltype=='A'){
	    			//alert("A");
	    			$.post("admin/ajax/department/insert",pdata,function(data){
	    				console.log(data);
	    				if(data==1){
	    					alert("Item was successfully inserted");
	    					location.reload();
	    				}else{
	    					alert("Item was failed inserted");
	    				}
	    			},"text"); 
	    			
	    		}else if(sqltype=='E'){
	    			$.post("admin/ajax/department/edit",pdata,function(data){
	    				
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
	
	$(".btn-department-delete").click(function(){
    	//alert("aaaaaa");
    	
    	var id=$(this).data('id');
    	var txt;
    	//alert(id);

    	var r = confirm("Are you sure you want to delete?");
    	if (r == true) {
    		$.post("admin/ajax/department/delete",{'id':id},function(data){
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
    
	
 });