$(function () {
	
	 var objrules= {
			  invalidHandler: function(form, validator) {
				      var errors = validator.numberOfInvalids();
				      if (errors) {                    
				          validator.errorList[0].element.focus();
				      }
				} ,
						  rules : {
							  title: {
						          required: true
						      },
						      description: {
						          required: true
						      },
						      key_word: {
						          required: true,
						      },
						      content: {
						          required: true,
						      }						      
						  },
						  messages: {
							  title:{required: "This field is required!"},
							  description:{required: "This field is required!"},
							  key_word:{required: "This field is required!"},
							  content:{required: "This field is required!"},
							 
						    }//end message
						};//end obj rules 
	
	 	var frm_add =   $('#frm_about_edit');
	    frm_add.validate(objrules);		   
		//frm_add.validate(objrules);	
	 
	 
	tinymce.init({
		  selector: '#my_editor_about',
		  height: 300,
		  menubar: 'file edit insert view format table tools',
		 /* plugins: [
		    'advlist autolink lists link image charmap print preview anchor',
		    'searchreplace visualblocks code fullscreen',
		    'insertdatetime media table contextmenu paste code'
		  ],*/
		   plugins: ["image","link","textcolor","code","charmap","searchreplace","visualblocks","preview","fullscreen","table","lists"],
		  toolbar: 'undo redo | bold italic | fontselect fontsizeselect | forecolor backcolor |alignleft aligncenter alignright  alignjustify | bullist numlist indent outdent | link unlink image',
		  content_css: '//www.tinymce.com/css/codepen.min.css',
		  file_browser_callback_types: 'image',
		    file_browser_callback: function(field_name, url, type, win) {
		        if(type=='image'){
		        	$('#my_form_uploadabout input').click();
		        }
		    }
	});
	$("#btnSaveAbout").click(function(){
			//var pdata=$("#frm-about").serialize();
			var frm_valib=frm_add.valid();
			if(frm_valib)
			{
					var MCEeditor=tinymce.get('my_editor_about');
					var content=MCEeditor.getContent();		
					$("#frm_about_edit #my_editor_about").val(content);
					var pdata=$("#frm_about_edit").serialize();
					//console.log(pdata);
					//return;
					/*var pdata = {"title":$("#title").val(),						
								"description":$("#description").val(),	
								"key_word":$("#key_word").val(),
								"content":content};*/
				//alert(pdata);	
				$.post("admin/ajax/about/edit_info",pdata,function(data){
					//console.log(data);
					
					if(data==1){
						alert("Item was successfully saved");
						location.reload();
					}else{
						alert("Item was failed saved");
					}
				},"text");
		
			}
	});
	
	
	
	
	$('input[name="txtimage_about"]').ajaxfileupload({
		'valid_extensions' : ['gif','png','jpg','jpeg'],
	    'action': "upload/about/?folder=about",
	    'onComplete': function(response) {	
	        if (response.status==false) {
	        	$.messager.alert('Error',response.message,'error');
	        	 //$("#strongmessage").html("<font color='red'>" + JSON.stringify(response.message) + " </font>");
	        }
	        if (response.status==true) {
	        	//$.messager.alert('Info',response.message,'info');
	            var pram = response.pram;
	            var url_img=baseurl+"upload/about/"+pram;
	            top.$('.mce-btn.mce-open').parent().find('.mce-textbox').val(url_img);
	           // $("#id_uploadsuccess").val(pram);
	            //$("#branchimg_@index").attr('src','upload/branch/'+pram);
	           // $("#strongmessage").html("<font color='green'>" + JSON.stringify(response.message) + " </font>");
	            
	        }
	    },
	    'onStart': function() {
	    
	    }
	});
	
	
	$("#btn-do-upload-about").click(function(){
		$("#file-upload-feature-about").click();
	});
	
	$('#file-upload-feature-about').ajaxfileupload({
		'valid_extensions' : ['gif','png','jpg','jpeg'],
	    'action': "upload/publicimg/?folder=about",
	    'onComplete': function(response) {	
	        if (response.status==false) {
	        	$.messager.alert('Error',response.message,'error');
	        	 //$("#strongmessage").html("<font color='red'>" + JSON.stringify(response.message) + " </font>");
	        }
	        if (response.status==true) {
	        	//$.messager.alert('Info',response.message,'info');
	            var pram = response.pram;
	            var url_img="upload/about/"+pram;
	            $("#img-feature_image_about").attr('src',url_img);
	            $('#frm_about_edit input[name="feature_image"]').val(pram);
	           // $("#id_uploadsuccess").val(pram);
	            //$("#branchimg_@index").attr('src','upload/branch/'+pram);
	           // $("#strongmessage").html("<font color='green'>" + JSON.stringify(response.message) + " </font>");
	            
	        }
	    },
	    'onStart': function() {
	    
	    }
	});
	
});