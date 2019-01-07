<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
 <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->    
     <section class="content-header">
      <h1>
       Company Info <small>${about.about_name}</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="admin"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">${about.about_name}</li>
      </ol>
    </section>
    
    <!-- Main content -->
    <section class="content">
    	<div class="row">
    		<form method="post" id="frm_about_edit">
    			<div class="col-md-9">
    					<div class="box box-primary" >            
				            <div class="box-body"><hr>
				            
				          		  <input type="hidden" value="${about.id }" name="id">
								<div class="form-group">
									<label >Title</label>
									 <input class="form-control"  placeholder="Enter title...." type="text" value="${about.title}" name="title" id="title">
								</div>
									<div class="form-group">
									<label >Description</label>
									 <input class="form-control" placeholder="Enter description..." type="text" value="${about.description }" name="description" id="description">
								</div>
									<div class="form-group">
									<label >Key word</label>
									<input class="form-control" placeholder="Enter key word..." type="text" value="${about.key_word }" name="key_word" id="key_word">
								</div>
									
								<div>
									<label>Content:</label>
									<textarea class="form-control" id="my_editor_about" placeholder="Enter content.." style="width: 100%; height: 200px;"  name="content" required>${about.content}</textarea>
									
								</div>
									
							</div>
							 <div class="box-footer">
								 	<a class="btn btn-app" id="btnSaveAbout">
						                <i class="fa fa-save"></i> Save
						      		</a>
								 </div>
				       </div>
    			</div>
    			<div class="col-md-3">
  					<!-- primary box -->
    				<div class="box box-primary">
    					<div class="box-header with-border">Feature Image</div>
    					<div class="box-body">
    							 <img alt="" src="upload/about/${about.feature_image }" class="img img-responsive" style="margin:0 auto;" id="img-feature_image_about">
    							 <input type="hidden" name="feature_image" value="${about.feature_image }">
    					</div>
    					<div class="box-footer"><a href="javascript:void(0)" id="btn-do-upload-about"><i class="fa fa-upload"></i> Upload Image</a></div>  
    				</div>
    				<!-- end box -->
    			</div>
    		</form>
    	</div>
    	
    	
	</section>
    <!-- /.content -->
  </div>
  <input type="file" style="display:none" id="file-upload-feature-about" name="img">
   <iframe id="form_target_frame" name="form_target" style="display:none"></iframe>
			<form id="my_form_uploadabout"  target="form_target" method="post" 
						enctype="multipart/form-data" style="width:0px;height:0;overflow:hidden">
							<input id="txtimage_about" name="txtimage_about" type="file" data-ideditor="my_editor_about">
				</form>	 	
  <!-- /.content-wrapper -->
  	

<script src="js/about/main.js"></script>