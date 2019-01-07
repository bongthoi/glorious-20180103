   <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
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