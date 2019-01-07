<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
  <!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">

    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">

      <!-- Sidebar user panel (optional) -->
      <div class="user-panel">
        <div class="pull-left image">
          <img src="dist/img/Avatar-blank.jpg" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p>	<c:if test="${pageContext.request.userPrincipal.name != null}">
              			${pageContext.request.userPrincipal.name}
              	</c:if>
              </p>
          <!-- Status -->
       <i class="fa fa-circle text-success"></i> Online
        </div>
      </div>

    

      <!-- Sidebar Menu -->
      <ul class="sidebar-menu">
        <li class="header"></li>
        <!-- Optionally, you can add icons to the links -->
        <li class="" id="activeDashboard"><a href="admin">
        <i class="fa fa-dashboard"></i> <span>Dashboard</span></a></li>
		        <li class=""  id="activeDepartment">
		          <a href="admin/department">
		            <i class="fa fa-building-o" aria-hidden="true"></i> <span>Department</span>
		          </a>
		        </li>
		        <li class=""  id="activePeople">
		          <a href="admin/people">
		            <i class="fa fa fa-user-circle" aria-hidden="true"></i> <span>Peoples</span>
		          </a>
		        </li>
		        <li class=""  id="activeUser">
		          <a href="admin/user">
		            <i class="fa fa-users"></i> <span>Users</span>
		          </a>
		        </li>
		        <li class=""  id="activeContact">
		          <a href="admin/contact">
		            <i class="fa fa-address-book" aria-hidden="true"></i> <span>Contacts</span>
		          </a>
		        </li>
		        <li class=""  id="activeSlide">
		          <a href="admin/slide">
		            <i class="fa fa-sliders" aria-hidden="true"></i> <span>Slides</span>
		          </a>
		        </li>
		        <li class="treeview"  id="activeAbout">
		          <a href="javascript:void(0);">
		            <i class="fa fa-info " aria-hidden="true"></i> <span>Company info</span>
		            <span class="pull-right-container">
			              <i class="fa fa-angle-left pull-right"></i>
			            </span>
		          </a>
		          
						   <ul class="treeview-menu">
				            <li><a href="admin/about/1"><i class="fa fa-circle-o"></i> Corporate Profile </a></li>
				            <li><a href="admin/about/2"><i class="fa fa-circle-o"></i> Business Commerce</a></li>
				            <li><a href="admin/about/3"><i class="fa fa-circle-o"></i> Subsidiaries</a></li>
				          </ul>      
		        </li>	    
		            
		         <li class=""  id="activePartners">
		          <a href="admin/Partners">
		            <i class="fa fa-vcard" aria-hidden="true"></i> <span>Partners</span>
		          </a>
		        </li>
		        <li class=""  id="activeCatgory">
		          <a href="admin/catgory">
		            <i class="fa  fa-tags"></i> <span>Category</span>
		          </a>
		        </li>
		         <li class=""  id="activeNews">
		          <a href="admin/news">
		            <i class="fa fa-newspaper-o"></i> <span>News</span>
		          </a>
		        </li>
		        
		        <li class=""  id="activeActivitiesCategory">
		          <a href="admin/activities/catgory">
		            <i class="fa  fa-tags"></i> <span>Activities Category</span>
		          </a>
		        </li>
		         <li class=""  id="activeActivitiesPosts">
		          <a href="admin/activities/posts">
		            <i class="fa fa-newspaper-o"></i> <span>Activities Posts</span>
		          </a>
		        </li>
      </ul>
      <!-- /.sidebar-menu -->
    </section>
    <!-- /.sidebar -->
  </aside>