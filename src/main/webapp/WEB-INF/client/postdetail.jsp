<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
						<li class="item "  data-active="${category.id }">
							<a href="getPostByCateID?category=${category.id}">${category.name}</a>
						</li>
					</c:forEach>
				</ul>
			</div>
		</div>
		<div class="col-md-9">
			<div class="storyview clearfix">


				<div class="story-head clearfix">
					<h1>
						<span>${post.title}</span>
					</h1>

					<h5>
						<span class="clock_icon"></span> <span>${post.createdate}</span>
					</h5>

				</div>

				<div class="story-body clearfix" style="border-top: 1px solid #ddd;">


					<p style="margin: 6pt 0; text-align: justify; line-height: 150%;">
						${post.content}
					</p>
				</div>
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

