<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>




    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper contact_us" style="margin-left:0; ">
        <!-- Content Header (Page header) -->
        <section class="content-header" style="padding: 0;">
            <div class="title " style="padding:40px;">
                <a class="fix_font">
                        PARTNERS
                    </a>
            </div>
        </section>

        <!-- Main content -->
        <section class="content" style="padding: 0;">
            <div class="container">
                <div class="row">
                    <c:forEach var="partner" items="${partners}" varStatus="loopCounter">
                    <div class="col-md-4 col-xs-6">
                        <div class="contact_card wrap_center" style="width:90%;background: transparent;">
                            <div class="">
                                <div class="flag_img wrap_center" style="width:100%;height:100%">
                                    <a href="${partner.link}" target="_blank"><img class="img" style="width:100%;height:95px;margin:0 auto;" src="upload/partners/${partner.logo}"/></a>
                                </div>
                                <div class="info" style="width:100%">
                                    <div class="name fix_font" ><a href="${partner.link}" style="font-size: 16px !important;" target="_blank">${partner.name}</a></div>
                                    <div class="des">
                                        <p>
	                                        <strong>Description:</strong><br>
	                                        <span>${jspHelper.subParagraph(partner.description,20)}</span>
                                        </p>
                                        <p>
	                                        <strong>Website:</strong><br>
	                                        <span><a href="${partner.link}" target="_blank">${partner.link}</a></span>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    </c:forEach>
                </div>
            </div>

        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->

   