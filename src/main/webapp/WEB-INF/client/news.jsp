 <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
 	<c:set var="categorys"  value="${CatgoryImp.getAll_Catgory() }"></c:set>
 	<div class="row">
 		<div class="col-md-3">
 				<div class="news_type_block" data-active="${activeSidebar}">
                                <div class="header">
                                    News
                                </div>
                                <ul class="types">
                                
                                 <c:forEach var="category_o" items="${categorys}" varStatus="loopCounter">
                                    <li class="item " data-active="${category_o.id }">
                                        <a href="News/${category_o.id }">${category_o.name }</a>
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
                                        What's New
                                    </div>
                                    <div class="more">
                                        <a href="#">More</a>
                                    </div>
                                </div>
                                <div class="index_block_content" style="padding: 10px 20px;" id="display_listnews">
                                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                        <tbody>
                                            <tr class="new">
                                                <th width="65px" valign="top" class="year" id="display_yeay" data-option="${year }">Year ${year }</td>
                                                    <th width="" valign="top">
                                                        <select name="jumpMenu" class="texts pull-right" id="jumpMenu" onchange="" style="font-size: 0.8em;">
                                                            <option value="0">Please Select Year</option>
                                                              <c:forEach var="item_year" items="${group_year}" varStatus="loopCounter">
                                                                    <option data-year="${item_year }" value="News/${catgorynew}?year=${item_year }">${item_year }</option>
                                                              </c:forEach>
                                                        </select>
                                                    </th>
                                            </tr>
                                               <c:forEach var="new_o" items="${news}" varStatus="loopCounter">
	                                        	  <tr class="new tr-new">
	                                                <td width="15%" valign="top" class="date">${jspHelper.long_date(new_o.createdate) }</td>
	                                                <td width="" valign="top" style="padding-left:10px">
	                                                    <a href="${new_o.pdf_report }" class="lxtext" target="_blank">
	                                                    		${new_o.title }
	                                                    </a>
	                                                    <br>
	                                                </td>
	                                            </tr>
                                        	  </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
 		</div><!-- ./end col-md -9 -->
 	</div>
<script src="js/Client/News.js"></script>