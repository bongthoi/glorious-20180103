<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<div class="content-wrapper" style="min-height: 1126px;">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Categories <small></small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="admin/"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="admin/category">Category</a></li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
	<div class="row">
		<div class="col-md-4">
			 <!-- Default box -->
      <div class="box box-primary">
        <div class="box-header with-border">
		    <h3 class="box-title"><i class="fa fa-tag"></i> Add News Category</h3>
		   
        </div> 
        <div class="box-body">
       		<form action="post" id="frm-news-catgory">
       					<input type="hidden" name="sqltype" value="A">
       					<input type="hidden" name="id" value="1">
		    			<div class="form-group">
		    				<label class="text-primary">Name</label>
		    				<input type="text" class="form-control" placeholder="Name" name="name">
		    			</div>
		    			<div class="form-group">
		    				<label class="text-primary"> Description</label>
		    				<textarea class="form-control" rows="10" cols="10" placeholder="Description..." name="description"></textarea>
		    			</div>
		    </form>	
        
        </div>
        <!-- /.box-body -->
        <div class="box-footer ">
      	  <div class="mailbox-controls">
	             <div class="pull-right">
	             	<input type="button" class="btn btn-primary" value="Add" id="btn-news-catgory-add">
	             </div>
	             <div class="pull-left">
	             	<input type="button" class="btn btn-primary" value="Reset" id="btn-news-catgory-reset">
	             </div>
	            </div>
            </div>
      </div>
      <!-- /.box -->
		</div><!-- end col md 6 -->
	
	<div class="col-md-8">
			 <!-- Default box -->
      <div class="box box-primary">
      
        <div class="box-body table-responsive no-padding tb-news-catgory">
		      <div class="mailbox-controls">
                <!-- Check all button -->
                <button type="button" class="btn btn-default btn-sm checkbox-toggle4"><i class="fa fa-square-o"></i>
                </button>
                <div class="btn-group">
                  <button type="button" id="do_delete_newscatgory1" class="btn btn-default btn-sm"><i class="fa fa-trash-o"></i></button>
     
                </div>
                <!-- /.pull-right -->
              </div>
           	<table class="table table-hover tb-news-catgory">
                <tbody><tr style="background-color:#B0C4DE;">
               <th colspan="2">Actions</th>
                  <th>ID</th>
                  <th>NAME</th>
                  <th>DESCRIPTION</th>
                </tr>
                  <c:forEach var="catgory" items="${catgories}" varStatus="loopCounter">
                  <tr>
		                <td><input type="checkbox"  value="${catgory.id}"></td>
		                <c:set var="json_Category" value="${jspHelper.toJson(catgory)}"/>
			               <td width="20"><a  href="javascript:void(0);" class="btn-catgory-edit" data-Catgory='${json_Category}'><i class="fa fa-pencil"></i></a></td>
		                  <td>${catgory.id}</td>
		                  <td><span class="text-primary">${catgory.name}</span></td>
		              		<td><span class="text-primary">${catgory.description}</span></td>
		                </tr>
                  </c:forEach>
            
               
              </tbody></table>
            
        </div>
        <!-- /.box-body -->
        <div class="box-footer no-padding">
              <div class="mailbox-controls">
                <!-- Check all button -->
                <button type="button" class="btn btn-default btn-sm checkbox-toggle4"><i class="fa fa-square-o"></i>
                </button>
                <div class="btn-group">
                  <button type="button" id="do_delete_newscatgory2" class="btn btn-default btn-sm"><i class="fa fa-trash-o"></i></button>
     
                </div>
 
                <!-- /.pull-right -->
              </div>
            </div>
      </div>
      <!-- /.box -->
		</div><!-- end col md 6 -->
	
	</div>

    </section>
    <!-- /.content -->
  </div>
  
  <script src="js/category/category.js"></script>