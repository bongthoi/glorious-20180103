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
                        CONTACT US
                    </a>
            </div>
        </section>

        <!-- Main content -->
        <section class="content" style="padding: 0;">
            <div class="container">
                <div class="row">
                    <c:forEach var="contact" items="${contacts}" varStatus="loopCounter">
                    <div class="col-md-3 col-xs-6">
                        <div class="contact_card wrap_center" style="width:100%;background: transparent;">
                            <div class="" style="width: 200px;">
                                <div class="flag_img wrap_center">
                                    <img class="" src="upload/contact/${contact.location_img}"/>
                                </div>
                                <div class="info">
                                    <div class="name fix_font">${contact.location_name}</div>
                                    <div class="des">
                                        <p>
                                        <strong>Office:</strong><br>
                                        <span>${contact.office_address}</span>
                                        </p>
                                         <%-- <p>
                                            <strong>Showroom:</strong><br>
                                            <span>${contact.show_room_address}</span>
                                        </p> --%>
                                        <p>
                                            <strong>Phone:</strong>
                                            <span>${contact.phone }</span>
                                            <%-- <br>
                                            <strong>Fax:</strong>
                                            <span>${contact.fax }</span> --%>

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

   