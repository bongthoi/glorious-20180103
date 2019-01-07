 $(function () {
	    //Enable iCheck plugin for checkboxes
	    //iCheck for checkbox and radio inputs
	    $('.tb-post input[type="checkbox"]').iCheck({
	      checkboxClass: 'icheckbox_flat-blue',
	      radioClass: 'iradio_flat-blue'
	    });

	    //Enable check and uncheck all functionality
	   $(".checkbox-toggle55").click(function () {
	      var clicks = $(this).data('clicks');
	      if (clicks) {
	        //Uncheck all checkboxes
	        $(".tb-post input[type='checkbox']").iCheck("uncheck");
	        $(".fa", this).removeClass("fa-check-square-o").addClass('fa-square-o');
	      } else {
	        //Check all checkboxes
	        $(".tb-post input[type='checkbox']").iCheck("check");
	        $(".fa", this).removeClass("fa-square-o").addClass('fa-check-square-o');
	      }
	      $(this).data("clicks", !clicks);
	    });
	   
	   var dataJson=$("#frm-news-post").data('json');
	   if(dataJson!=null&&dataJson!=undefined){
		
		   $("#frm-news-post").fromOBJECT(dataJson);
           var fullpath= baseurl +dataJson.feature_image;
           var imgtag='<img alt="" src="'+fullpath+'" class="img img-responsive">';  
           $("#feature_image_div").html(imgtag);
           var pdffile=dataJson.pdf_report;
           var fullpath= baseurl +pdffile;
           var arr_filename=pdffile.split("/");
          $("#pdf-file-new-post").attr('href',fullpath);
          $("#pdf-file-new-post b").text(arr_filename[arr_filename.length-1]);
     
		   
	   }
	
	   
	 
	/*   var edit_status=$("#box-post-status").data('option');
	   var edit_post_catgory=$("#box-post-catgory").data('option');
	   
	   if(edit_status!=null&&edit_status!=undefined){
		   $('input[name="rstatus"]').filter('[value="'+edit_status+'"]').attr('checked', true);
	   }
	   
	   if(edit_post_catgory!=null&&edit_post_catgory!=undefined){
		   $('input[name="rcatgory"]').filter('[value="'+edit_post_catgory+'"]').attr('checked', true);
		
	   }*/
	   
	/*		  //iCheck for checkbox and radio inputs
	$('input[type="checkbox"].minimal, input[type="radio"].minimal').iCheck({
			      checkboxClass: 'icheckbox_minimal-blue',
			      radioClass: 'iradio_minimal-blue'
	});
	
	   */
	   
	   $("#sle_news-catgory").val($("#sle_news-catgory").data('option'));
	   $("#sle_news-catgory").change(function(){
		  var catgory=$(this).val(); 
		  location.href="admin/activities/posts?catgory="+catgory;
	   });
	   
	   
	   
	   
	   tinymce.init({
			  selector: '#my_edit_activities',
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
			        	$('#my_form_uploadactivities input').click();
			        }
			    }
		});
	   
	   
	   
	   
	   $("#do_active_post1,#do_active_post2").click(function(){
			 var ids = [];
		     $.each($(".tb-post input[type='checkbox']:checked"), function(){            
		    	 ids.push($(this).val());
		     });
		     if(ids.length>0){
		    	 var pdata={"ids":ids.join(","),"status":1};
		    	 var _length=ids.length
		    	 $.post("admin/activities/posts/active",pdata,function(data){
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
	   
	   $("#do_disabled_post1,#do_disabled_post2").click(function(){
			 var ids = [];
		     $.each($(".tb-post input[type='checkbox']:checked"), function(){            
		    	 ids.push($(this).val());
		     });
		     if(ids.length>0){
		    	 var pdata={"ids":ids.join(","),"status":0};
		    	 var _length=ids.length
		    	 $.post("admin/activities/posts/active",pdata,function(data){
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
	   $("#do_delete_post1,#do_delete_post2").click(function(){
		   
		   var r = confirm("Are you sure you want to delete?");
		   if (r == true) {
			   var ids = [];
			     $.each($(".tb-post input[type='checkbox']:checked"), function(){            
			    	 ids.push($(this).val());
			     });
			     if(ids.length>0){
			    	 /*alert("My favourite sports are: " + ids.join(","));*/
			    	 var pdata={"ids":ids.join(",")};
			    	 var _length=ids.length
			    	 $.post("admin/activities/posts/delete",pdata,function(data){
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
		   }
			 
			
		}) ;  
	   
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
							      content: {
							          required: true,
							      }						      
							  },
							  messages: {
								  title:{required: "This field is required!"},
								  description:{required: "This field is required!"},
								  content:{required: "This field is required!"}
								 
							    }//end message
							};//end obj rules 
		
		 	var frm_add =   $('#frm-news-post');
		    frm_add.validate(objrules);		   
			//frm_add.validate(objrules);	
	   function setContentMCEtotextArea(){
			var MCEeditor=tinymce.get('my_edit_activities');
			var content=MCEeditor.getContent();		
			$("#my_edit_activities").val(content);
	   }
	   $("#btn-news-post-new").click(function(){
			var frm_valib=frm_add.valid();
			if(frm_valib)
			{
				setContentMCEtotextArea();
				var pdata= $("#frm-news-post").serialize();
				$.post("admin/activities/posts/insert",pdata,function(data){
					if(data==1){
						alert("Save success !");
						location.href="admin/activities/posts/new";
					}else{
						alert("Server error,please try again !");
					}
				},"text");
			   }//end if
		  });

	   
	   $("#btn-news-post-edit").click(function(){
			
			var frm_valib=frm_add.valid();
			if(frm_valib)
			{
				setContentMCEtotextArea();
				var pdata= $("#frm-news-post").serialize();
				$.post("admin/activities/posts/update",pdata,function(data){
					if(data==1){
						alert("Save success !");
						location.href="admin/activities/posts";
					}else{
						alert("Server error,please try again !");
					}
				},"text");
			}//end if
		   });
 
	   
	   $("#feature_image_btn-new-post").click(function(){
		   $("#filenews").click();
	   });
	   var url="upload/publicimg/?folder=activities";
	   $("#filenews").ajaxfileupload({
	        'action': url,
	        'valid_extensions' : ['jpg','png','gif'],
	        'onComplete': function(response) {   
	        
	        		 if (response.status==false) {
	                     alert(response.message);
	                 }
	                 if (response.status==true) {
	                     var pram = response.pram;
	                     var fullpath= baseurl +"upload/activities/"+pram;
	                     var imgtag='<img alt="" src="'+fullpath+'" class="img img-responsive">';
	                     $("#feature_image_input").val(pram);
	                     $("#feature_image_div").html(imgtag);
	                 }
	        },
	        'onStart': function() {
	        }
	    });
	   
	   $('#txtimage_activities').ajaxfileupload({
			'valid_extensions' : ['gif','png','jpg','jpeg'],
		    'action': "upload/publicimg/?folder=activities",
		    'onComplete': function(response) {	
		        if (response.status==false) {
		        	$.messager.alert('Error',response.message,'error');
		        	 //$("#strongmessage").html("<font color='red'>" + JSON.stringify(response.message) + " </font>");
		        }
		        if (response.status==true) {
		        	//$.messager.alert('Info',response.message,'info');
		            var pram = response.pram;
		            var url_img=baseurl+"upload/activities/"+pram;
		            top.$('.mce-btn.mce-open').parent().find('.mce-textbox').val(url_img);
		           // $("#id_uploadsuccess").val(pram);
		            //$("#branchimg_@index").attr('src','upload/branch/'+pram);
		           // $("#strongmessage").html("<font color='green'>" + JSON.stringify(response.message) + " </font>");
		            
		        }
		    },
		    'onStart': function() {
		    
		    }
		});
	
	
 });   