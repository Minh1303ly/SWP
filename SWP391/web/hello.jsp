<%-- 
    Document   : hello
    Created on : May 19, 2024, 5:37:01 PM
    Author     : Nhat Anh
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<h1>Hello page</h1>
<h1>${message} ${newProduct.get(0).brand_name}</h1>

<c:forEach var="a" items="${newProduct}">
    <p>${a.name}</p>
    <p>${a.price}</p>
</c:forEach>
