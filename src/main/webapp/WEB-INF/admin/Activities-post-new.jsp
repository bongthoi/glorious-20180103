<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>


<div class="content-wrapper" style="min-height: 1126px;">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        News<small> Add new post</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="admin/"><i class="fa fa-dashboard"></i> Home</a></li>
          <li><a href="admin/activities">News</a></li>
        <li class="active">Add new post</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
	    <form id="frm-news-post">
				<div class="row">
					<div class="col-md-9" >
						 <!-- Default box -->
			      <div class="box box-primary">
			        <div class="box-header with-border">
					    <h3 class="box-title"><i class="fa fa-tag"></i>Content</h3>
					   
			        </div> 
			        <div class="box-body">
			        				<div class="form-group">
					    				<label class="">Catgory:</label>
					    				<select name="activities_catgory" class="form-control" style="width:40%">
					    						<c:forEach var="catgory" items="${catgories}" varStatus="loopCounter">
					    							<option value="${catgory.id}">${catgory.name}</option>
						                        </c:forEach>
					    				</select>
					    				
					    			</div>
									<div class="form-group">
					    				<label class="">Title:</label>
					    				<input type="text" class="form-control"  name="title" style="width:60%">
					    			</div>
					    			<div class="form-group">
					    				<label class="">Description:</label>
					    				<input type="text" class="form-control"  name="description" >
					    			</div>
					    			<div class="form-group">
					    				<label class="">Full Content:</label>
					    				<textarea  class="form-control"  id="my_edit_activities"  name="content" ></textarea>
					    			</div>
					    		
			        </div>
			        <!-- /.box-body -->
			        <div class="box-footer ">
			      	  <div class="mailbox-controls">
				             <div class="pull-right">
				             	<input type="button" class="btn btn-primary" value="Save" id="btn-news-post-new">
				             </div>
				            </div>
			            </div>
			      </div>
			      <!-- /.box -->
					</div><!-- end col md 6 -->
				
					<div class="col-md-3">
						 <!-- Default box -->
						      <div class="box box-primary">
						        <div class="box-header with-border">
								    <h3 class="box-title"><i class="fa fa-tag"></i>Status</h3>
								    <div class="box-tools pull-right">
							            <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
			          				</div>
						        </div> 
						        <div class="box-body">
						       		   <div class="form-group">
							                <label>
							                  <input type="radio" name="status" class="minimal" value="1" >
							                   <span class='label label-success'>Active</span>
							        		</label>
							              </div>
							             <div class="form-group">
							                <label>
							                  <input type="radio" name="status" class="minimal" checked value="0">
							                    <span class='label label-danger'>Disabled</span>
							        		</label>
							              </div>  
						        </div>
						        <!-- /.box-body -->
						      </div>
						      <!-- /.box -->
						      
						       <!-- Default box -->
						      <div class="box box-primary">
						        <div class="box-header with-border">
								    <h3 class="box-title"><i class="fa fa-tag"></i> Feature Image</h3>
								      <div class="box-tools pull-right">
							            <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
			          				</div>
						        </div> 
						        <div class="box-body">
						        		<div id="feature_image_div">
						        			
						        		</div>
								    			<div class="form-group">
								    					<input type="hidden"value="no_image.jpg" name="feature_image" id="feature_image_input">
								    					<a href="javascript:void(0);" id="feature_image_btn-new-post"> Set feature image</a>	
								    			</div>
						        </div>
						        <!-- /.box-body -->
						      </div>
						      <!-- /.box -->
					</div><!-- end col md 3 -->
					
				
				</div>
	    </form>

    </section>
    <!-- /.content -->
  </div>
  	<input type="file" id="filenews" name="img" style="display:none">
  	<script src="js/activities/post.js"></script>

