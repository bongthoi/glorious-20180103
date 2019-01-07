 <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
 	
 	<div class="row">
 		<div class="col-md-3">
 				<div class="news_type_block" data-active="${activeSidebar}">
                                <div class="header">
                                    About Us
                                </div>
                                <ul class="types">
                                    <li class="item " data-active="Corporate-Profile">
                                        <a href="Corporate-Profile">${abouts[0].title}</a>
                                    </li>
                                    <li class="item" data-active="Business-Commerce">
                                        <a href="Business-Commerce">${abouts[1].title}</a>
                                    </li>
                                    <li class="item" data-active="Subsidiaries">
                                        <a href="Subsidiaries">${abouts[2].title}</a>
                                    </li>
                                   
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
                                        ${about.title }
                                    </div>
                                   
                                </div>
 				<div class="index_block_content" style="/*padding: 10px 20px;*/">
 					 ${about.content }
 				</div>
 			</div>	<!-- ./index_block-->
 		</div><!-- ./end col-md -9 -->
 	</div>
 	