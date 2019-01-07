<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>


<div class="content-wrapper" style="min-height: 1126px;">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
       User <small>List Items</small>
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
		         <a href="javascript:void(0)" class="btn btn-success" id="btn-open-modal-User-add"><i class="fa fa-plus" aria-hidden="true"></i> Add</a>
		   <div class="box-tools pull-right">
                
              </div>
        </div> 
        
        <div class="box-body table-responsive no-padding tb-User">
		      <div class="mailbox-controls">
		        <!-- Check all button -->
                <button type="button" class="btn btn-default btn-sm checkbox-toggle-user"><i class="fa fa-square-o"></i>
                </button>
                 <div class="btn-group">
                  <button type="button" id="do_active_User" class="btn btn-success btn-sm"><i class="fa  fa-check"></i></button>
                </div>      
            	 <div class="btn-group">
                  <button type="button" id="do_disabled_User" class="btn btn-danger btn-sm"><i class="fa  fa-ban"></i></button>
                </div>   
                
                <!-- /.pull-right -->
              </div>
           	<table class="table table-hover">
                <tbody>
                <tr style="background-color:#B0C4DE;">
	                <th colspan="3">Actions  </th>
	               	<th>Name</th>
	                <th>UserName</th>
	                <th>Password</th>
	                <th>Phone</th>
	                <th>User Role</th> 
	                <th>Enable</th>
                </tr>
				<c:forEach var="user" items="${users}">
                   <tr>
                   		<td width="20"><input type="checkbox"  value="${user.username}"></td>
                       <c:set var="json_User" value="${jspHelper.toJson(user)}"/>
			               <td width="20"><a  href="javascript:void(0);" class="btn-open-modal-user-edit" data-User='${json_User}'><i class="fa fa-pencil"></i></a></td>
			               <td width="20"><a  href="javascript:void(0);" class='btn-user-delete'  data-username="${user.username }"><i class="fa fa-trash-o" aria-hidden="true"></i></a></td>
		                   <td>${user.name}</td>
		                  <td>${user.username}</td>
		                   <td>${user.password}</td>
		                   <td>${user.phone}</td>
		                   <td>${user.user_role}</td>
		                   		                   
		                  <c:set var="flag"  value="${user.enabled}"/>		                   
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
      </div>
      <!-- /.box -->
      
	
    </section>
    <!-- /.content -->
  </div>
  
  <div class="modal" class="modal fade" role="dialog" id="modal-user-insert">
          <div class="modal-dialog">
            <div class="modal-content">
                  <form role="form" id="frm_add">
		              <div class="modal-header bg-green color-palette">
		                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		                  <span aria-hidden="true">×</span></button>
		                <h4 class="modal-title"><i class="fa fa-plus"></i> Add new User</h4>
		              </div>
		              <div class="modal-body">
					              <div class="box-body">
					               <input type="hidden" name="sqltype" value="A">
					                 <div class="form-group">
					                  <label for="">Username</label>
					                  <input type="text" class="form-control "  placeholder="Enter username..." value="" name="username">
					                </div>
					                <div class="form-group">
					                  <label for="">Password</label>
					                  <input type="text" class="form-control" name="password" placeholder="Enter password...."></textarea>
					                </div>
					                <div class="form-group">
					                  <label for="">Name</label>
					                  <input type="text" class="form-control"  placeholder="Enter name..." value="" name="name">
					                </div>
					                <div class="form-group">
					                  <label for="">Phone</label>
					                  <input type="text" class="form-control"  placeholder="Enter Phone..."  name="phone">
					                </div>
					                
					                <div class="form-group">
					                  <label for="">User Role</label>
					                  <input type="text" class="form-control"  placeholder="Enter user role..." name="user_role">
					                   
					                </div>			                
					                <div class="form-group">
					                  <label for="">Status:</label>
					                 	<input type="radio" name="enabled"  value="0" aria-label="..." checked><span class='label label-danger'>Disabled</span> &nbsp;
					                 	<input type="radio" name="enabled"  value="1" aria-label="..."><span class='label label-success'>Active</span>
					                </div>	
					               
					               
					              </div>
			              </div>
			              <div class="modal-footer">
			                <button type="button" class="btn btn-default pull-left" data-dismiss="modal"> <i class="fa fa-close"></i> Close</button>
			                <button type="button" class="btn btn-success" id="btn-submit-user-insert"><i class="fa fa-save"></i> Save changes</button>
			              </div>
	                </form>
	            </div>
            <!-- /.modal-content -->
          </div>
          <!-- /.modal-dialog -->
        </div>