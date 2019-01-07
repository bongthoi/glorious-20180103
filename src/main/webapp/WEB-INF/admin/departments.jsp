<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>


<div class="content-wrapper" style="min-height: 1126px;">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
       Department <small>List Items</small>
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
		         <a href="javascript:void(0)" class="btn btn-success" id="btn-modal-department-insert"><i class="fa fa-plus" aria-hidden="true"></i> Add</a>
		   <div class="box-tools pull-right">
                
              </div>
        </div> 
        
        <div class="box-body table-responsive no-padding tb-User">
		  
               
           	<table class="table table-hover">
             <tbody><tr style="background-color:#B0C4DE;">
                <th colspan="2">Actions</th>  
                             
                  <th>Department Name</th>
                  <th>Description</th>                                   
                </tr>
              <c:forEach var="department" items="${departments}" varStatus="loopCounter">
                <tr>
                      <c:set var="json_department" value="${jspHelper.toJson(department)}"/>
		                <td width="20"><a  href="javascript:void(0);" class="btn-open-modal-department-edit" data-department='${json_department }'><i class="fa fa-pencil"></i></a></td>
						<td width="20"><a  href="javascript:void(0);" class='btn-department-delete'  data-id="${department.id }"><i class="fa fa-trash-o" aria-hidden="true"></i></a></td>		                
		                <td>${department.name }</td>
		                <td>${department.description}</td>                
		         </tr>
               </c:forEach>
               
              </tbody>              
              </table>
            
        </div>
        <!-- /.box-body -->
      </div>
    </section>   
 </div>    
 <div class="modal" class="modal fade" role="dialog" id="modal-department-insert">
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
					                  <label for="">NAME</label>
					                  <input type="text" class="form-control"  placeholder="Enter name..." value="" name="name">
					                </div>
					                <div class="form-group">
					                  <label for="">DESCRIPTION</label>
					                  <input type="text" class="form-control"  placeholder="Enter description..." value="" name="description">
					                </div>					                 
					              </div>
			              </div>
			              <div class="modal-footer">
			                <button type="button" class="btn btn-default pull-left" data-dismiss="modal"> <i class="fa fa-close"></i> Close</button>
			                <button type="button" class="btn btn-success" id="btn-submit-department-insert"><i class="fa fa-save"></i> Save changes</button>
			              </div>
	                </form>
	            </div>
            <!-- /.modal-content -->
          </div>
          <!-- /.modal-dialog -->
        </div>
    
    <script src="js/department/main.js"></script>
   
   
 