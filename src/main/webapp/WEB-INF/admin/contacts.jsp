<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>


<div class="content-wrapper" style="min-height: 1126px;">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
       Contact <small>List Items</small>
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
		         <a href="javascript:void(0)" class="btn btn-success" id="btn-modal-contact-insert"><i class="fa fa-plus" aria-hidden="true"></i> Add</a>
		   <div class="box-tools pull-right">
                
              </div>
        </div> 
        
        <div class="box-body table-responsive no-padding tb-User">
		  
               
           	<table class="table table-hover">
             <tbody><tr style="background-color:#B0C4DE;">
                <th colspan="2">Actions</th>  
                               
                  <th>FLAG</th>
                  <th>COUNTRY</th>
                  <th>OFFICE ADDRESS</th>
                   <th>SHOW ROOM ADDRESS</th> 
                   <th>PHONE</th> 
                   <th>FAX</th>                   
                </tr>
              <c:forEach var="contact" items="${contacts}" varStatus="loopCounter">
                   <tr>
                       <c:set var="json_Contact" value="${jspHelper.toJson(contact)}"/>
			               <td width="20"><a  href="javascript:void(0);" class="btn-open-modal-contact-edit" data-Contact='${json_Contact }'><i class="fa fa-pencil"></i></a></td>
			               <td width="20"><a  href="javascript:void(0);" class='btn-contact-delete'  data-id="${contact.id }"><i class="fa fa-trash-o" aria-hidden="true"></i></a></td>
		                   <td><img src="upload/contact/${contact.location_img}" alt="no-image" height="42" width="42"/></td>
		                   <td>${contact.location_name}</td>
		                   <td>${contact.office_address}</td>
		                   <td>${contact.show_room_address}</td>
		                   <td>${contact.phone}</td>
		                   <td>${contact.fax}</td>		                     
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
 	<div class="modal" class="modal fade" role="dialog" id="modal-contact-insert">
          <div class="modal-dialog">
            <div class="modal-content">
                  <form role="form" id="frm_add">
		              <div class="modal-header bg-green color-palette">
		                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		                  <span aria-hidden="true">×</span></button>
		                <h4 class="modal-title"><i class="fa fa-plus"></i> Add new Contact</h4>
		              </div>
		              <div class="modal-body">
					              <div class="box-body">
					               <input type="hidden" name="sqltype" value="A">
					                 <input type="hidden" name="id" value="">
					                <div class="form-group">
					                  <label for="">FLAG IMAGE</label>
					                  <img alt="" class="img img-responsive" src="upload/contact/no_image.jpg" id="img-contact-id" name="location_img" style="margin:0 auto;width:100;height:100px">
					                  	<input type="hidden" id="feature_image_input"  name="location_img" value="no_image.jpg">
					    				<br>
					    				<input type="button" class="btn btn-primary" id="btn-upload-contact" value="Upload">
					    				
					                </div>
					                <div class="form-group">
					                  <label for="">COUNTRY</label>
					                  <input type="text" class="form-control"  placeholder="Enter country..." value="" name="location_name">
					                </div>
					                 <div class="form-group">
					                  <label for="">OFFICE ADDRESS</label>
					                  <textarea class="form-control col-xs-12"  placeholder="Enter office address..."  name="office_address"></textarea>
					                </div>
					                <div class="form-group">
					                  <label for="">SHOW ROOM ADDRESS</label>
					                  <textarea class="form-control col-xs-12" name="show_room_address" placeholder="Enter show room address.."></textarea>
					                </div>
					                   <div class="form-group">
					                  <label for="">PHONE NUMBER</label>
					                  <input type="text" class="form-control"  placeholder="Enter Phone..."  name="phone">
					                </div>
					                
					                <div class="form-group">
					                  <label for="">FAX</label>
					                  <input type="text" class="form-control"  placeholder="Enter fax..." name="fax">
					                   
					                </div>			                
					                
					               
					               
					              </div>
			              </div>
			              <div class="modal-footer">
			                <button type="button" class="btn btn-default pull-left" data-dismiss="modal"> <i class="fa fa-close"></i> Close</button>
			                <button type="button" class="btn btn-success" id="btn-submit-contact-insert"><i class="fa fa-save"></i> Save changes</button>
			              </div>
	                </form>
	            </div>
            <!-- /.modal-content -->
          </div>
          <!-- /.modal-dialog -->
        </div>
    
    
    <input type="file" id="filecontact" name="filecontact" style="display:none">
   
 <script src="js/contact/main.js"></script>