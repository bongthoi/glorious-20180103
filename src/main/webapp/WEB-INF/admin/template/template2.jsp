<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@page session="false"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
	<!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
 	<base href="<tiles:getAsString name="base_tag" />"/>
	<title>${title_tag} </title>
	<meta name="description" content="${description_tag} ">

	 <!-- Bootstrap 3.3.6 -->
  <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
	
	<!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
  
  	
	<!-- REQUIRED JS SCRIPTS -->
<!-- jQuery 2.2.3 -->
<script src="plugins/jQuery/jquery-2.2.3.min.js"></script>
<!-- Bootstrap 3.3.6 -->
<script src="bootstrap/js/bootstrap.min.js"></script>
<script src="plugins/pace/pace.min.js"></script>
<script src="js/jquery.validate.min.js"></script>
<script src="js/additional-methods.min.js"></script>

<!-- InputMask -->
<script src="plugins/input-mask/jquery.inputmask.js"></script>
<script src="plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
<script src="plugins/input-mask/jquery.inputmask.extensions.js"></script>
<!-- Slimscroll -->
<script src="plugins/slimScroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="plugins/fastclick/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/app.min.js"></script>
<!-- iCheck -->
<script src="plugins/iCheck/icheck.min.js"></script>
<!-- Bootstrap WYSIHTML5 -->
<script src="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<!-- bootstrap datepicker -->
<script src="plugins/datepicker/bootstrap-datepicker.js"></script>
<!-- Page Script -->
<script src="js/jquery.ajaxfileupload.js"></script>
<script>

//var baseurl="http://agr.qnomall.com/";
/*
var baseurl="http://localhost:8080/agent/";
var url_upload_img="manage/uploadcontrol/doupload?folder=product";
var url_upload_cke="manage/uploadcontrol/doupload?folder=editor";
var remote_img_product="image/upload/product/";
var remote_img_cke= baseurl+"image/upload/product/";*/

var baseurl="http://localhost:8080/glorious/";
var sidebaractive="${activeSidebar}";//JSP setvalue
$("#"+sidebaractive).addClass("active");
function remove_box_thunbnal(e){
		var elem= $(e).closest('.box-event-thunbnail');
	   $(elem).remove();
}
$("[data-mask]").inputmask();
$(document).ajaxStart(function() { Pace.restart(); }); 
</script>

<!-- AdminLTE for demo purposes -->
<script src="js/tinymce/tinymce.min.js"></script>
<script src="js/tinymce/jquery.tinymce.min.js"></script>
<script src="js/jsonhelpper.js"></script>
<script src="dist/js/demo.js"></script>
  

</head>
<body  class="">
	<div class="wrapper">
		<tiles:insertAttribute name="content" />
	</div>
<!-- ./wrapper -->

</body>
</html>