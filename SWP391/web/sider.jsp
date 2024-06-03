<%-- 
    Document   : sider
    Created on : May 15, 2024, 6:28:37 PM
    Author     : Nhat Anh
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*, model.*, dao.*, util.*" %>
<aside>
    <div class="filter_col">
        <div class="inner_bt"><a href="#" class="open_filters"><i class="ti-close"></i></a></div>
        <div class="filter_type version_2">
            <div class="d-none d-md-block">
                <div class="custom-search-input row">
                    <div class="col-10"> 
                        <input type="search" class="form-control p-3 col-10" placeholder="keywords"
                               aria-describedby="search-icon-1">
                    </div>
                    <button class="col-2" type="submit" ><i class="header-icon_search_custom"></i></button>
                </div>
            </div>						
        </div>
        <!-- /filter_type -->
        <div class="filter_type version_2">
            <h4><a href="#filter_1" data-bs-toggle="collapse" class="closed">Categories</a></h4>
            <div class="collapse" id="filter_1">
                <ul>
                    <li>
                        <div class="filter_type version_2">
                             <h4><a href="#men" data-bs-toggle="collapse" class="arrowRight">Men</a></h4>
                             <div class="collapse" id="men">
                                 <ul>
                                     <li><a href="#"> Running</a></li>
                                      <li><a href="#"> Sneakers</a></li>
                                       <li><a href="#">Boots</a></li>
                                 </ul>
                             </div>
                        </div>
                    </li>
                    <li>
                        <div class="filter_type version_2">
                             <h4><a href="#women" data-bs-toggle="collapse" class="arrowRight">Women</a></h4>
                             <div class="collapse" id="women">
                                 <ul>
                                     <li><a href="#"> Running</a></li>
                                      <li><a href="#"> Sneakers</a></li>
                                       <li><a href="#">Sports</a></li>
                                 </ul>
                             </div>
                        </div>
                    </li>
                    <li>
                        <div class="filter_type version_2">
                             <h4><a href="#boy" data-bs-toggle="collapse" class="arrowRight">Boy</a></h4>
                             <div class="collapse" id="boy">
                                 <ul>
                                     <li><a href="#"> Running</a></li>
                                      <li><a href="#"> Sneakers</a></li>
                                       <li><a href="#">Sports</a></li>
                                 </ul>
                             </div>
                        </div>
                    </li>
                    <li>
                        <div class="filter_type version_2">
                             <h4><a href="#girl" data-bs-toggle="collapse" class="arrowRight">Girl</a></h4>
                             <div class="collapse" id="girl">
                                 <ul>
                                     <li><a href="#"> Running</a></li>
                                      <li><a href="#"> Sneakers</a></li>
                                       <li><a href="#"></a></li>
                                 </ul>
                             </div>
                        </div>
                    </li>
                </ul>
            </div>
            <!-- /filter_type -->
        </div>
        <!-- /filter_type -->
        <div class="filter_type version_2">
            <h4><a href="#filter_2" data-bs-toggle="collapse" class="closed">Color</a></h4>
            <div class="collapse" id="filter_2">
                <ul>
                    <c:forEach var="element" items="${colorSider}">
                        <li>
                            <label class="container_check">${element}
                                <input type="checkbox" name="color" value="${element}">
                                <span class="checkmark"></span>
                            </label>
                        </li>
                    </c:forEach>                                   
                </ul>
            </div>
        </div>
        <!-- /filter_type -->
        <div class="filter_type version_2">
            <h4><a href="#filter_3" data-bs-toggle="collapse" class="closed">Brands</a></h4>
            <div class="collapse" id="filter_3">
                <ul>
                    <c:forEach var="element" items="${brandSider}">
                        <li>
                            <label class="container_check">${element.name}
                                <input type="checkbox" name="brand" value="${element.name}">
                                <span class="checkmark"></span>
                            </label>
                        </li> 
                    </c:forEach>                                   
                </ul>
            </div>
        </div>
        <!-- /filter_type -->
        <div class="filter_type version_2">
            <h4><a href="#filter_4" data-bs-toggle="collapse" class="closed">Price</a></h4>
            <div class="collapse" id="filter_4">
                <ul>
                    <c:forEach var="element" items="${category}">

                    </c:forEach>
                    <li>
                        <label class="container_check">$0 — $50<small>11</small>
                            <input type="checkbox">
                            <span class="checkmark"></span>
                        </label>
                    </li>
                    <li>
                        <label class="container_check">$50 — $100<small>08</small>
                            <input type="checkbox">
                            <span class="checkmark"></span>
                        </label>
                    </li>
                    <li>
                        <label class="container_check">$100 — $150<small>05</small>
                            <input type="checkbox">
                            <span class="checkmark"></span>
                        </label>
                    </li>
                    <li>
                        <label class="container_check">$150 — $200<small>18</small>
                            <input type="checkbox">
                            <span class="checkmark"></span>
                        </label>
                    </li>
                </ul>
            </div>
        </div>
        <!-- /filter_type -->
        <div class="buttons">
            <a href="#0" class="btn_1">Filter</a> <a href="#0" class="btn_1 gray">Reset</a>
        </div>
    </div>
    <div class="col-lg-12">
        <h4 class="mb-3">New products</h4>
        <c:forEach var="element" items="${latestProduct}"> 

            <div class="d-flex align-items-center justify-content-start p-lg-1">
                <div class="rounded me-4" style="width: 100px; height: 100px;">
                    <a href="product?service=detail&name=${element.name}">
                        <img src="${element.img1}" class="img-fluid rounded" alt="">
                    </a>
                </div>
                <div>
                    <h6 class="mb-2">${element.name}</h6>
                    <div class="rating">
                        <c:forEach begin="1" end="${element.ratting.ratting}" step="1">
                            <i class="icon-star voted"></i>
                        </c:forEach>
                        <c:forEach begin="${element.ratting.ratting + 1}" end="5" step="1">
                            <i class="icon-star"></i>
                        </c:forEach>
                    </div>
                    <div class="price_box">
                        <c:if test="${element.discount.active}">                                              
                            <span class="new_price">$${String.format("%.2f", element.price*(100-element.discount.discountPercent)/100)}</span>
                            <span class="old_price">$${element.price}</span>
                        </c:if>
                        <c:if test="${!element.discount.active}">                                              
                            <span class="new_price">$${element.price}</span>                                                
                        </c:if> 
                    </div>
                </div>
            </div>
        </c:forEach>
        <div class="d-flex justify-content-center my-4">
            <a href="#"
               class="btn border border-secondary px-3 py-2 rounded-pill text-primary w-100">Contact</a>
        </div>
    </div>
</aside>
<!-- /col -->
