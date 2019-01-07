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
        Slides
        <small>slide items</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="admin"><i class="fa fa-dashboard"></i> Back-End</a></li>
        <li class="active"><a href="#">Front-End</a></li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <!-- Default box -->
      <div class="box box-primary">
        <div class="box-header with-border">
		         <a href="javascript:void(0)" class="btn btn-success" id="btn-modal-slide-insert"><i class="fa fa-plus" aria-hidden="true"></i> Add</a>
		   <div class="box-tools pull-right">
                
              </div>
        </div> 
        
        <div class="box-body table-responsive no-padding tb-User">
		  
               
           	<table class="table table-hover">
             <tbody><tr style="background-color:#B0C4DE;">
                <th colspan="2">Actions</th>  
                          
                  <th>SLIDE IMAGES</th>
                  <th>CREATED DATE</th>                                   
                </tr>
              <c:forEach var="slide" items="${slides}" varStatus="loopCounter">
                   <tr>
                       <c:set var="json_Slide" value="${jspHelper.toJson(slide)}"/>
		                <td><a  href="javascript:void(0);" class="btn-open-modal-slide-edit" data-Slide='${json_Slide}'><i class="fa fa-pencil"></i></a>
		                		</td>
		                		<td><a  href="javascript:void(0);" class='btn-slide-delete'  data-id="${slide.id }"><i class="fa fa-trash-o" aria-hidden="true"></i></a></td>
		                   <td><img src="upload/slide/${slide.img_fullname}" alt="no-image" height="100" width="800"/></td>
		                   <td>${slide.create_date}</td>		                   	                     
		            </tr>
               </c:forEach>
               
              </tbody>
              
              </table>
            
        </div>
        <!-- /.box-body -->
      </div>
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  
  <div class="modal" class="modal fade" role="dialog" id="modal-slide-insert">
          <div class="modal-dialog">
            <div class="modal-content">
                  <form role="form" id="frm_add">
		              <div class="modal-header bg-green color-palette">
		                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		                  <span aria-hidden="true">×</span></button>
		                <h4 class="modal-title"><i class="fa fa-plus"></i> Add new Slide</h4>
		              </div>
		              <div class="modal-body">
					              <div class="box-body">
					               <input type="hidden" name="sqltype" value="A">
					                 <input type="hidden" name="id" value="">
					                <div class="form-group">
					                  <label for="">SLIDE IMAGE</label>
					                  <img alt="" class="img img-responsive" src="upload/slide/no_image.jpg" id="img-slide-id" name="img_fullname" style="margin:0 auto;">
					                  	<input type="hidden" id="feature_image_input"  name="img_fullname" value="no_image.jpg">
					    				<br>
					    				<input type="button" class="btn btn-primary" id="btn-upload-slide" value="Upload">
					    				
					                </div>            
					               	      
					              </div>
			              </div>
			              <div class="modal-footer">
			                <button type="button" class="btn btn-default pull-left" data-dismiss="modal"> <i class="fa fa-close"></i> Close</button>
			                <button type="button" class="btn btn-success" id="btn-submit-slide-insert"><i class="fa fa-save"></i> Save changes</button>
			              </div>
	                </form>
	            </div>
            <!-- /.modal-content -->
          </div>
          <!-- /.modal-dialog -->
        </div>
    
    
    <input type="file" id="fileslide" name="img" style="display:none">
    
    <script src="js/slide/main.js"></script>