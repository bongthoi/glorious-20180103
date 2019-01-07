<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<div class="content-wrapper" style="min-height: 1126px;">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
       Ativities <small>List item</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="admin/"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="admin/activities">Ativities</a></li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">

      <!-- Default box -->
      <div class="box box-primary">
        <div class="box-header with-border">
		         <a href="admin/activities/posts/new" class="btn btn-success">Add new post</a>
		   <div class="box-tools pull-right">
                <div class="has-feedback">
                  <select class="form-control input-sm" id="sle_Ativities-catgory" data-option="${_selected}" >
                    	<option value=0  >View all catgories</option>
                        <c:forEach var="catgory" items="${catgories}" varStatus="loopCounter">
                          <option value="${catgory.id}">${catgory.name}</option>
                        </c:forEach>
                  </select>
                </div>
              </div>
        </div> 
        <div class="box-body table-responsive no-padding tb-post">
		      <div class="mailbox-controls">
                <!-- Check all button -->
                <button type="button" class="btn btn-default btn-sm checkbox-toggle55"><i class="fa fa-square-o"></i>
                </button>
                <div class="btn-group">
                  <button type="button" id="do_delete_post1" class="btn btn-default btn-sm"><i class="fa fa-trash-o"></i></button>
                </div>
                 <div class="btn-group">
                  <button type="button" id="do_active_post1" class="btn btn-default btn-sm"><i class="fa  fa-check"></i></button>
                </div>      
            	 <div class="btn-group">
                  <button type="button" id="do_disabled_post1" class="btn btn-default btn-sm"><i class="fa  fa-ban"></i></button>
                </div>   
               
                <div class="pull-right">
                ${pag.s_recore}-${pag.t_recore}/${pag.total_record}
                  <div class="btn-group">
                 	 <a href="admin/activities/posts?${paramcatgory}p=${pag.previousp}" class="btn btn-default btn-sm"><i class="fa fa-chevron-left"></i></a>
                    <a href="admin/activities/posts?${paramcatgory}p=${pag.nextp}" class="btn btn-default btn-sm"><i class="fa fa-chevron-right"></i></a>
                  </div>
                  <!-- /.btn-group -->
                </div>
                <!-- /.pull-right -->
              </div>
           	<table class="table table-hover">
                <tbody><tr>
               <th>  </th>
               <th>  </th>
                  <th>Feature image</th>
                  <th>Title</th>
                  <th>Create user</th>
                  <th>Catgory</th>
                  <th>Date</th>
                   <th>Status</th>
                </tr>
              <c:forEach var="new_o" items="${ativities}" varStatus="loopCounter">
                   <tr>
		                <td><input type="checkbox"  value="${new_o.id}"></td>
		                <td><a  href="admin/activities/posts/edit/${new_o.id}"><i class="fa fa-pencil"></i></a></td>
		                  <td>${new_o.feature_image}</td>
		                  <td><span class="text-primary">${new_o.title}</span></td>
		                  <td>${new_o.creator}</td>
		              		<td><span class="text-primary">${new_o.activities_catgory}</span></td>
		              		<td>${jspHelper.vietnamdate(new_o.createdate)}</td>
		              		<td>${jspHelper.slide_status(new_o.status)}</td>
		                </tr>
               </c:forEach>
               
              </tbody></table>
           
           
            
        </div>
        <!-- /.box-body -->
        <div class="box-footer no-padding">
              <div class="mailbox-controls">
                <!-- Check all button -->
                <button type="button" class="btn btn-default btn-sm checkbox-toggle5"><i class="fa fa-square-o"></i>
                </button>
                <div class="btn-group">
                  <button type="button" id="do_delete_post2" class="btn btn-default btn-sm"><i class="fa fa-trash-o"></i></button>
                </div>
                 <div class="btn-group">
                  <button type="button" id="do_active_post2" class="btn btn-default btn-sm"><i class="fa  fa-check"></i></button>
                </div>      
            	 <div class="btn-group">
                  <button type="button" id="do_disabled_post2" class="btn btn-default btn-sm"><i class="fa  fa-ban"></i></button>
                </div>   
       
                <div class="pull-right">
               ${pag.s_recore}-${pag.t_recore}/${pag.total_record}
                  <div class="btn-group">
                 	 	 <a href="admin/activities/posts?${paramcatgory}p=${pag.previousp}" class="btn btn-default btn-sm"><i class="fa fa-chevron-left"></i></a>
                    <a href="admin/activities/posts?${paramcatgory}p=${pag.nextp}" class="btn btn-default btn-sm"><i class="fa fa-chevron-right"></i></a>
                  </div>
                  <!-- /.btn-group -->
                </div>
                <!-- /.pull-right -->
              </div>
            </div>
      </div>
      <!-- /.box -->
        

    </section>
    <!-- /.content -->
  </div>
  <script src="js/activities/post.js"></script>