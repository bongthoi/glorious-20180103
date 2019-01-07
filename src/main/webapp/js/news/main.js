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
		  location.href="admin/news?catgory="+catgory;
	   });
	   
	   
	   $("#do_active_post1,#do_active_post2").click(function(){
			 var ids = [];
		     $.each($(".tb-post input[type='checkbox']:checked"), function(){            
		    	 ids.push($(this).val());
		     });
		     if(ids.length>0){
		    	 var pdata={"ids":ids.join(","),"status":1};
		    	 var _length=ids.length
		    	 $.post("admin/ajax/news/post/active",pdata,function(data){
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
		    	 $.post("admin/ajax/news/post/active",pdata,function(data){
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
			    	 $.post("admin/ajax/news/post/delete",pdata,function(data){
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
	   
	   $("#btn-news-post-new").click(function(){
			var pdata= $("#frm-news-post").serialize();
			$.post("admin/ajax/news/post/insert",pdata,function(data){
				if(data==1){
					alert("Save success !");
					location.href="admin/news/post-new";
				}else{
					alert("Server error,please try again !");
				}
			},"text")
	   });
	   
	   $("#btn-news-post-edit").click(function(){
			var pdata= $("#frm-news-post").serialize();
		
				$.post("admin/ajax/news/post/update",pdata,function(data){
					if(data==1){
						alert("Save success !");
						location.href="admin/news";
					}else{
						alert("Server error,please try again !");
					}
				},"text")
				
		   });
 
	   
	   $("#feature_image_btn-new-post").click(function(){
		   $("#filenews").click();
	   });
	   var url="upload/ByYearFolder/?folder=news";
	   $("#filenews").ajaxfileupload({
	        'action': url,
	        'valid_extensions' : ['jpg','png','gif'],
	        'onComplete': function(response) {   
	        
	        		 if (response.status==false) {
	                     alert(response.message);
	                 }
	                 if (response.status==true) {
	                     var pram = response.pram;
	                     var fullpath= baseurl +pram;
	                     var imgtag='<img alt="" src="'+fullpath+'" class="img img-responsive">';
	                     $("#feature_image_input").val(pram);
	                     $("#feature_image_div").html(imgtag);
	                 }
	        },
	        'onStart': function() {
	        }
	    });
	   
	$("#btn-new-upload-pdf").click(function(){
		   $("#filenews-pdf").click();
	   });
	   $("#filenews-pdf").ajaxfileupload({
	        'action': "upload/ByYearFolder/?folder=news",
	        'valid_extensions' : ['pdf'],
	        'onComplete': function(response) {   
	        
	        		 if (response.status==false) {
	                     alert(response.message);
	                 }
	                 if (response.status==true) {
	                	// console.log("status");
	                     var pram = response.pram;
	                     var fullpath= baseurl +pram;
	                     var arr_filename=pram.split("/");
	                    $("#pdf-file-new-post").attr('href',fullpath);
	                    $("#pdf-file-new-post b").text(arr_filename[arr_filename.length-1]);
	                   //console.log(arr_filename[arr_filename.length-1]);
	                     $("#frm-news-post input[name='pdf_report']").val(pram);
	                 }
	        },
	        'onStart': function() {
	           // console.log("start");
	        }
	    });
	
	
 });   