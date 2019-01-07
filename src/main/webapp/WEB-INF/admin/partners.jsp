<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<div class="content-wrapper" style="min-height: 1126px;">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
       	Partners
      </h1>
      <ol class="breadcrumb">
        <li><a href="admin/"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="admin/Partners">Partners</a></li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">

      <!-- Default box -->
      <div class="box box-primary">
        <div class="box-header with-border">
		         <a href="admin/Partners/new" class="btn btn-success">Add</a>
		   
        </div> 
        <div class="box-body table-responsive no-padding tb-partners">
		      <div class="mailbox-controls">
                <!-- Check all button -->
                <button type="button" class="btn btn-default btn-sm checkbox-toggle22"><i class="fa fa-square-o"></i>
                </button>
                <div class="btn-group">
                  <button type="button" id="do_delete_partners1" class="btn btn-default btn-sm"><i class="fa fa-trash-o"></i></button>
     
                </div>
       
                <div class="pull-right">
                ${pag.s_recore}-${pag.t_recore}/${pag.total_record}
                  <div class="btn-group">
                 	 <a href="admin/Partners?p=${pag.previousp}" class="btn btn-default btn-sm"><i class="fa fa-chevron-left"></i></a>
                    <a href="admin/Partners?p=${pag.nextp}" class="btn btn-default btn-sm"><i class="fa fa-chevron-right"></i></a>
                  </div>
                  <!-- /.btn-group -->
                </div>
                <!-- /.pull-right -->
              </div>
           	<table class="table table-hover">
                <tbody><tr>
               <th>  </th>
               <th>  </th>
                  <th>Id#</th>
                  <th>Logo</th>
                  <th>Name</th>
                  <th>Description</th>
                    <th>Web site</th>
                </tr>
                
              <c:forEach var="ppartners_o" items="${l_pPartners}" varStatus="loopCounter">
                <tr>
                <td><input type="checkbox"  value="${ppartners_o.id}"></td>
                <td><a href="admin/Partners/edit/${ppartners_o.id}" class=""><i class="fa fa-pencil"></i></a></td>
                  <td>${ppartners_o.id}</td>
                  <td><img src="upload/partners/${ppartners_o.logo}" style="width:150px;height:150px;"></td>
                  <td>${ppartners_o.name}</td>
                  <td>${ppartners_o.description}</td>
                  <td>${ppartners_o.link}</td>
                </tr>
              </c:forEach>
               
              </tbody></table>
            
        </div>
        <!-- /.box-body -->
        <div class="box-footer no-padding">
              <div class="mailbox-controls">
                <!-- Check all button -->
                <button type="button" class="btn btn-default btn-sm checkbox-toggle22"><i class="fa fa-square-o"></i>
                </button>
                <div class="btn-group">
                  <button type="button" id="do_delete_partners2" class="btn btn-default btn-sm"><i class="fa fa-trash-o"></i></button>
     
                </div>
       
                <div class="pull-right">
                ${pag.s_recore}-${pag.t_recore}/${pag.total_record}
                  <div class="btn-group">
                 	 <a href="admin/Partners?p=${pag.previousp}" class="btn btn-default btn-sm"><i class="fa fa-chevron-left"></i></a>
                    <a href="admin/Partners?p=${pag.nextp}" class="btn btn-default btn-sm"><i class="fa fa-chevron-right"></i></a>
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
     <script src="js/partner/main.js"></script>