<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<div class="content-wrapper" style="min-height: 1126px;">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
       New partners
      </h1>
      <ol class="breadcrumb">
        <li><a href="admin/"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="admin/Partners">partners</a></li>
          <li class="active">Edit</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
		<div class="row">
		    	<form method="post" id="frm-partners">
		    	<input type="hidden" name="id" value="${Partners.id }">
		    		<div class="col-md-9">
		    			    <div class="box box-primary">
					 		 <div class="box-header with-border">
					
					        </div>
					        <div class="box-body">
					        		<div class="form-group">
					    				<label>Company Name</label>
					    				<input type="text" class="form-control" placeholder="Company Name" name="name" value="${Partners.name }">
					    			</div>
					    			
					    			<div class="form-group">
					    				<label>Link</label>
					    				<input type="text" class="form-control" placeholder="Link" name="link" value="${Partners.link }">
					    			</div>
					    			<div class="form-group">
					    				<label>Description</label>
					    				<textarea class="form-control" rows="10" cols="10" name="description">${Partners.description }</textarea>
					    			</div>
					        </div>
					         <div class="box-footer no-padding">
					              <div class="mailbox-controls">
					                <!-- Check all button -->
					               <a class="btn btn-app btn-primary" id="btnupdatepartners">
					                <i class="fa fa-save"></i> Save
					              </a>
					                <div class="pull-right">
					
					                </div>
					                <!-- /.pull-right -->
					              </div>
					            </div>
					        </div>
		    		</div>
		    		<div class="col-md-3">
		    				<!-- primary box -->
	    				<div class="box box-primary">
	    					<div class="box-header with-border">Logo</div>
	    					<div class="box-body">
	    							 <img alt="" src="upload/partners/${Partners.logo }" class="img img-responsive" style="margin:0 auto;" id="img-feature_image_partners">
	    							 <input type="hidden" name="logo" value="${Partners.logo }">
	    					</div>
	    					<div class="box-footer"><a href="javascript:void(0)" id="btn-do-upload-partners"><i class="fa fa-upload"></i> Upload Image</a></div>  
	    				</div>
	    				<!-- end box -->
		    		</div>
		    	</form>	
		</div>    	
    </section>
    <!-- /.content -->
  </div>
  
   <input type="file" style="display:none" id="file-upload-feature-partners" name="img">
 
   <script src="js/partner/main.js"></script>