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
	<link rel="icon" type="image/png" sizes="32x32" href="favicon-32x32.png">
<link rel="icon" type="image/png" sizes="96x96" href="favicon-96x96.png">
<link rel="icon" type="image/png" sizes="16x16" href="favicon-16x16.png">
	<meta name="description" content="${description_tag} ">
	<meta name="keyword" content="${keyword_tag} ">
   <!-- Bootstrap 3.3.6 -->
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">

    <!-- Theme style -->
    <link rel="stylesheet" href="dist/css/AdminLTE.min.css">

    <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">
    <link rel="stylesheet" href="dist/client/css/nivo-slider.css">
	<link rel="stylesheet" href="dist/fancybox/jquery.fancybox.css">
    <link rel="stylesheet" href="dist/client/css/style.css">
    <link rel="stylesheet" href="dist/client/css/categories_style.css">
    <!-- jQuery 2.2.3 -->
    <script src="plugins/jQuery/jquery-2.2.3.min.js"></script>
    <!-- Bootstrap 3.3.6 -->
    <script src="bootstrap/js/bootstrap.min.js"></script>
 	<!-- FastClick -->
    <script src="plugins/fastclick/fastclick.js"></script>
    <!-- AdminLTE App -->
    <script src="dist/js/app.min.js"></script>
    <script src="dist/js/demo.js"></script>
    
	</head>
<body  class="skin-glorious">
<!-- wrapper -->
	 <div class="wrapper background_body">
		<tiles:insertAttribute name="header" />
		    <!-- Content Wrapper. Contains page content -->
        <div class="contact_us container" style="background:white;min-height: 800px;">
            <!-- Content Header (Page header) -->
            <section class="content-header row " style="padding: 0;">
            		<tiles:insertAttribute name="slide" />
            </section>
                   
                   <!-- Main content -->
              <section class="content" style="padding: 20px 0;">
              		<tiles:insertAttribute name="content" />
              </section><!-- Main content -->
       </div>
        <!-- /.content-wrapper -->  
		<tiles:insertAttribute name="footer" />
	</div><!-- ./wrapper -->

    <script>
        var selector = '.carousel-indicators_custom li';

        $(selector).on('click', function() {
            $(selector).removeClass('active');
            $(this).addClass('active');
        });
    </script>

    <script src="dist/js/jquery.nivo.slider.js"></script>
    <script type="text/javascript">
        $(window).load(function() {
            $('#slider').nivoSlider();
        });
        
        $(function () {
			 var sidebaractive=$("#Header_inActiveMenu").val();
		
			 $("#menu_status").find("ul li[data-active='"+sidebaractive+"'] a").addClass("active");
			 /* $.get("temp.json",function(data){
		        	console.log(data);
		        },"json");*/
		        
		     var leftbarActive=$(".news_type_block").data("active") ;
		        //console.log(leftbarActive);
		        if(leftbarActive!=null){
		       	 $(".news_type_block").find("ul.types li[data-active='"+leftbarActive+"'] ").addClass("active");
		        }
        });
        
    </script>
    
</body>
</html>