<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>




<!-- Content Wrapper. Contains page content -->


<section class="content" style="padding: 20px 0">
	<div class="row">
		<div class="col-md-3">
			<div class="news_type_block" data-active="${activeSidebar}">
				<div class="header">OUR ACTIVITIES</div>
				<ul class="types">
                  <c:forEach var="category" items="${categories}">
                     <li class="item" data-active="${category.id }">
                         <a href="getPostByCateID?category=${category.id}">${category.name}</a>
                     </li>
                   </c:forEach>
                 </ul>
			</div>
		</div>
		<div class="col-md-9">
			<div class="index_block">
				<div class="header">

					<!-- Project One -->
				<c:forEach var="post" items="${cate_post}">
					<div class="row">
						<div class="col-sm-3">
							<a href="postdetail/${post.id}"> 
							<img class="img-fluid rounded mb-3 mb-md-0" src="upload/activities/${post.feature_image}" alt="">
							</a>
						</div>
						<div class="col-sm-9">
							<a href="postdetail/${post.id}">
								<h3>${post.title}</h3>
							</a>
							<h5>
								<span class="clock_icon"></span> <span>${post.createdate}</span>
							</h5>
							<p class="op-item">${jspHelper.subParagraph(post.content,30)}</p>

						</div>
					</div>
					<hr>
				</c:forEach>
					<!-- /.row -->


					<!-- Pagination -->
					<!--Pagination-->
					<!-- <div class="pagination ">
                                  <a class="disabled" href="getallposts/7">&laquo;</a>
                                  <a class="disabled" href="getallposts/7">1</a>
                                  <a class="disabled" href="getallposts/7">&raquo;</a>
                     </div> -->
					<!--End Pagination-->
					<div class="pull-right">
		               Page ${pag.current_page} of ${pag.total_page}
		                  <div class="btn-group">
		                 	<a href="getPostByCateID?${paramcatgory}p=${pag.previousp}" class="btn btn-default btn-sm"><i class="fa fa-chevron-left"></i></a>
		                 	 
		                    <a href="getPostByCateID?${paramcatgory}p=${pag.nextp}" class="btn btn-default btn-sm"><i class="fa fa-chevron-right"></i></a>
		                  </div>
		                  <!-- /.btn-group -->
		                </div>

				</div>
				<!-- <div class="index_block_content" style="">
       <p style="color: #000; font-weight: 400;">The Corporation was incorporated in Canada on December 24, 2015, under the name Glorious Creation Limited, and was registered as an extraprovincial company in British Columbia on January 28, 2016. The Corporation's head office is located at Suite 407 — 1328 West Pender Street, Vancouver, British Columbia V6E 4T1 and its registered office is located at Suite 1100 — 736 Granville Street, Vancouver, British Columbia V6Z 1 G3. The Corporation has a wholly-owned subsidiary, Glorious IT Creation Limited, a Hong Kong company. Glorious IT, in turn, owns</p> 
        <img src="images/IMG_3207.jpg" alt="" width="300px;" height="100px;">
  </div> -->
			</div>
		</div>
	</div>
</section>














<%-- <div class="row">
 		<div class="col-md-3">
 				<div class="news_type_block" data-active="${activeSidebar}">
                                <div class="header">
                                    ACTIVITES
                                </div>
                                <ul class="types">
                                 <c:forEach var="category" items="${categories}">
                                    <li class="item " data-active="Corporate-Profile">
                                        <a href="#">${category.name}</a>
                                    </li>
                                    
                                  </c:forEach>
                                </ul>
                            </div>
 		</div><!-- ./end col-md -3 -->
 		<div class="col-md-9">
 				<div class="index_block">
 						<div class="header">
                                    <div class="header_line">
                                        <svg width="4" height="17">
                                            <rect x="0" y="0" width="5" height="10" style="fill:#ffcc25"></rect>
                                            <rect x="0" y="9" width="5" height="5" style="fill:#ff7125"></rect>
                                            Sorry, your browser does not support inline SVG.  
                                        </svg>
                                    </div>
                                    <div class="title">
                                    	<c:forEach var="post" items="${cate_post}">
                                        <div>${post.title}</div><br>
                                        </c:forEach>
                                    </div>
                                   
                                </div>
 				<div class="index_block_content" style="/*padding: 10px 20px;*/">
 					 ${about.content }
 				</div>
 			</div>	<!-- ./index_block-->
 		</div><!-- ./end col-md -9 -->
 	</div> --%>
<!-- /.content-wrapper -->

