<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
                <div class="">
                    <div class="row">
                        <div class="col-md-3">
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
                                        About Us
                                    </div>
                                    <div class="more">
                                        <a href="Corporate-Profile">More</a>
                                    </div>
                                </div>
                                <div class="index_block_content">
                                    <img class="image" src="upload/about/${about.feature_image}" style="width:130px;height:180px" align="left">
                                		
                                    <span class="text"> 
                                        <p>${about.description} </p>
                                    </span>
                                </div>
                            </div>

                        </div>
                        <div class="col-md-6">
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
                                        <a href="News/3">More</a>
                                    </div>
                                </div>
                                <div class="index_block_content">
                                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                        <tbody>
                                        
                                        	  <c:forEach var="new_o" items="${news}" varStatus="loopCounter">
	                                        	  <tr class="new">
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

                        </div>
                        <div class="col-md-3" style="margin-top: -50px;z-index: 9;">
                            <div class="right_box shadow_box">
                                <div class="header">
                                    Prospectus
                                </div>
                                <div class="right_box_content">
                                    <div class="row">
                                        <div class="col-md-6">
                                               <a href="Glorious Prospectus (FINAL - April 4, 2017).pdf" target="_blank">
                                                <img src="upload/financial/report1.jpg" alt=""/>
                                                <div class="report">2017 Prospectus</div>
                                            </a>

                                        </div>
                                        <div class="col-md-6">
                                          

                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="right_box shadow_box" style="margin-top: 20px;">
                                <div class="header">
                                    Stock Quote
                                </div>
                                <div class="right_box_content">
                                    <table width="100%" border="0" cellspacing="0" cellpadding="2">

                                        <tbody>
                                            <tr>

                                                <td width="64%" class="text">Glorious (VN) :</td>

                                                <td width="36%" class="text"></td>

                                            </tr>

                                            <tr>

                                                <td class="text">Stock Exchange:</td>

                                                <td class="text">GCIT</td>

                                            </tr>

                                        </tbody>
                                    </table>
                                    <a href="http://thecse.com/en/listings/technology/glorious-creation-limited" class="lxtext_more">Detail Information

                            </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>