<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<c:set var="slides"  value="${SlideImp.get_all_slides() }"></c:set>
                <div class="slider-wrapper theme-default">
                    <div id="slider" class="nivoSlider" style="">
                       <c:forEach var="slide" items="${slides}" varStatus="loopCounter">
                        <div>
                            <img src="upload/slide/${slide.img_fullname }" data-thumb="upload/slide/${slide.img_fullname }" alt="${loopCounter.index}" />
                        
                        </div>
                       </c:forEach>
                    </div>
                </div>
       