<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>


<div class="content-wrapper" style="min-height: 1126px;">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
       People <small>List Items</small>
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
		         <a href="javascript:void(0)" class="btn btn-success" id="btn-open-modal-people-add"><i class="fa fa-plus" aria-hidden="true"></i> Add</a>
		   <div class="box-tools pull-right">
                
              </div>
        </div> 
        
        <div class="box-body table-responsive no-padding tb-People">
		      <div class="mailbox-controls">
		        <!-- Check all button -->
                <button type="button" class="btn btn-default btn-sm checkbox-toggle-people"><i class="fa fa-square-o"></i>
                </button>
                 <div class="btn-group">
                  <button type="button" id="do_active_People" class="btn btn-success btn-sm"><i class="fa  fa-check"></i></button>
                </div>      
            	 <div class="btn-group">
                  <button type="button" id="do_disabled_People" class="btn btn-danger btn-sm"><i class="fa  fa-ban"></i></button>
                </div>
                <div class="pull-right">
                ${pag.s_recore}-${pag.t_recore}/${pag.total_record}
                  <div class="btn-group">
                 	 <a href="admin/people?${findparam1}p=${pag.previousp}" class="btn btn-default btn-sm"><i class="fa fa-chevron-left"></i></a>
                    <a href="admin/people?${findparam1}p=${pag.nextp}" class="btn btn-default btn-sm"><i class="fa fa-chevron-right"></i></a>
                  </div>
                  <!-- /.btn-group -->
                </div>   
                <!-- /.pull-right -->
              </div>
           	<table class="table table-hover">
                <tbody><tr style="background-color:#B0C4DE;">
                <th colspan="3">Actions  </th>
                
                <th>Profile Image</th>
                <th>Content Image</th>
                <th>Name</th>
                <th>Position</th>
                <th>Description</th>
                <th>Order</th> 
                <th>Department</th> 
                <th>Status</th>
                </tr>
              	<c:forEach var="people" items="${peoples}" varStatus="loopCounter">
                   <tr>
                   		<td width="20"><input type="checkbox"  value="${people.id}"></td>
                       <c:set var="json_People" value="${jspHelper.toJson(people)}"/>
			               <td width="20"><a  href="javascript:void(0);" class="btn-open-modal-people-edit" data-People='${json_People}'><i class="fa fa-pencil"></i></a></td>
			               <td width="20"><a  href="javascript:void(0);" class='btn-people-delete'  data-id="${people.id }"><i class="fa fa-trash-o" aria-hidden="true"></i></a></td>
							<td><img src="upload/people/${people.img_profile}" alt="no-image" height="42" width="42"/></td>
							<td><img src="upload/people/${people.img_content}" alt="no-image" height="42" width="42"/></td>
		                   <td>${people.name}</td>
		                   <td>${people.position}</td>
		                   <c:set var="fulldescription" value="${people.description}" />
		                   <c:set var="subdescription" value="${fn:substring(fulldescription, 0, 40)}" />
		                   <td><p>${subdescription}</p></td>
		                   <td>${people.order}</td>
		                   <td>${people.dept_name}</td>
		                   
		                  <c:set var="flag"  value="${people.isactive}"/>		                   
		                     <c:choose>
							  <c:when test="${flag==1}">
							    <td><span class="label label-success">Active</span></td>
							  </c:when>							  
							  <c:otherwise>
							    <td><span class="label label-danger">Disable</span></td>
							  </c:otherwise>
							</c:choose>                   
		            </tr>
               </c:forEach>
               
              </tbody></table>
            
        </div>
        <!-- /.box-body -->
        <div class="box-footer no-padding">
              <div class="mailbox-controls">
                <div class="pull-right">
               ${pag.s_recore}-${pag.t_recore}/${pag.total_record}
                  <div class="btn-group">
                 	 	 <a href="admin/people?${findparam1}p=${pag.previousp}" class="btn btn-default btn-sm"><i class="fa fa-chevron-left"></i></a>
                    <a href="admin/people?${findparam1}p=${pag.nextp}" class="btn btn-default btn-sm"><i class="fa fa-chevron-right"></i></a>
                  </div>
                  <!-- /.btn-group -->
                </div>
                <!-- /.pull-right -->
              </div>
            </div>
      </div>
      <!-- /.box -->
      
	<div class="modal" class="modal fade" role="dialog" id="modal-people-insert">
          <div class="modal-dialog">
            <div class="modal-content">
                  <form role="form" id="frm_add">
		              <div class="modal-header bg-green color-palette">
		                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		                  <span aria-hidden="true">×</span></button>
		                <h4 class="modal-title"><i class="fa fa-plus"></i> Add new People</h4>
		              </div>
		              <div class="modal-body">
					              <div class="box-body">
					               <input type="hidden" name="sqltype" value="A">
					                 <input type="hidden" name="id" value="">
					                <div class="form-group">
					                  <label for="">Profile Image</label>
					                  <img alt="" class="img img-responsive" src="upload/people/no_image.jpg" id="img-people-id" name="img_profile" style="margin:0 auto;width:100;height:100px">
					                  	<input type="hidden" id="feature_image_input"  name="img_profile" value="no_image.jpg">
					    				<br>
					    				<input type="button" class="btn btn-primary" id="btn-upload-people" value="Upload">
					    				
					                </div>
					                <div class="form-group">
					                  <label for="">Content Image</label>
					                  <img alt="" class="img img-responsive" src="upload/people/no_image.jpg" id="img-people-id1" name="img_content" style="margin:0 auto;width:100;height:100px">
					                  	<input type="hidden" id="feature_image_input1"  name="img_content" value="no_image.jpg">
					    				<br>
					    				<input type="button" class="btn btn-primary" id="btn-upload-people1" value="Upload">
					    				
					                </div>
					                <div class="form-group">
					                  <label for="">Name</label>
					                  <input type="text" class="form-control"  placeholder="Enter name..." value="" name="name">
					                </div>
					                 <div class="form-group">
					                  <label for="">Position</label>
					                  <input type="text" class="form-control"  placeholder="Enter position..." value="" name="position">
					                </div>
					                <div class="form-group">
					                  <label for="">Description</label>
					                  <textarea  class="form-control col-xs-12" id="my_editor_people" style="width: 100%; height: 200px;" name="description" placeholder="Enter description.."></textarea>
					                </div>					                   
					                <div class="form-group">
					                  <label for="">Order</label>
					                  <select name="order" class="form-control" style="width:80px;" >
					                  		<option value="1">1</option>
					                  		<option value="2">2</option>
					                  		<option value="3">3</option>
					                  		<option value="4">4</option>
					                  		<option value="5">5</option>
					                  		<option value="6">6</option>
					                  		<option value="7">7</option>
					                  		<option value="8">8</option>
					                  		<option value="9">9</option>
					                  		<option value="10">10</option>
					                  </select>
					                </div>		              
					                <div class="form-group">
					                  <label for="">Department</label>
					                  <select name="department_id" class="form-control"  >
					                  		 <c:forEach var="department" items="${departments}" varStatus="loopCounter">
					                  		 			<option value="${department.id }">${department.name } </option>
					                  		 </c:forEach>
					                  </select>
					                </div>		
					                <div class="form-group">
					                  <label for="">Status:</label>
					                 	<input type="radio" name="isactive"  value="0" aria-label="..." checked><span class='label label-danger'>Disabled</span> &nbsp;
					                 	<input type="radio" name="isactive"  value="1" aria-label="..."><span class='label label-success'>Active</span>
					                </div>	                
					                
					               
					               
					              </div>
			              </div>
			              <div class="modal-footer">
			                <button type="button" class="btn btn-default pull-left" data-dismiss="modal"> <i class="fa fa-close"></i> Close</button>
			                <button type="button" class="btn btn-success" id="btn-submit-people-insert"><i class="fa fa-save"></i> Save changes</button>
			              </div>
	                </form>
	            </div>
            <!-- /.modal-content -->
          </div>
          <!-- /.modal-dialog -->
        </div>
    </section>
    <!-- /.content -->
  </div>
			
      <input type="file" id="filespeople" name="img" style="display:none">
      <input type="file" id="filespeople1" name="img" style="display:none">