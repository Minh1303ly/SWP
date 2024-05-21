<%-- 
    Document   : test
    Created on : May 21, 2024, 10:00:11 PM
    Author     : Nhat Anh
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*, model.*, dao.*, util.* " %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>


        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

        <c:set var="colors" value='["Red", "Green", "Blue"]' />

        <c:set var="formattedColors" value="" />
        <c:forEach items="${colors}" var="color" varStatus="loop">
            <c:set var="formattedColor" value='"${color}"' />
            <c:if test="${not loop.last}">
                <c:set var="formattedColor" value='${formattedColor}, ' />
            </c:if>
            <c:set var="formattedColors" value="${formattedColors}${formattedColor}" />
        </c:forEach>

        <p>${formattedColors}" </p>

    </body>
</html>
