<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*, model.*, dao.* " %>

<!DOCTYPE html>
<html lang="en">

    <head>
        <jsp:include page="head.jsp"/>

    </head>

    <body>

        <div id="page" class="theia-exception">	
            <jsp:include page="header.jsp"/>
            <main>
                <div class="top_banner">
                    <div class="opacity-mask d-flex align-items-center" data-opacity-mask="rgba(0, 0, 0, 0.3)">
                        <div class="container">
                            <!-- <div class="breadcrumbs">
                                    <ul>
                                            <li><a href="#">Home</a></li>
                                            <li><a href="#">Category</a></li>
                                            <li>Page active</li>
                                    </ul>
                            </div> -->
                            <h1>Shoes - Grid listing</h1>
                        </div>
                    </div>
                    <img src="img/bg_cat_shoes.jpg" class="img-fluid" alt="">
                </div>
                <!-- /top_banner -->

                <!-- /toolbox -->
                <div class="container margin_30">
                    <div class="row">
                        <!-- Sider -->
                        <div class="col-lg-3"> 
                            <jsp:include page="sider.jsp"/> 
                        </div>

                        <!-- Body content -->
                        <div class="col-lg-9 bg_gray">
                            <div class="row small-gutters">
                                <div class="col-6 col-md-4">
                                    <div class="grid_item">
                                        <span class="ribbon off">-30%</span>
                                        <figure>
                                            <a href="product-detail-1.html">
                                                <img class="img-fluid lazy" src="img/products/product_placeholder_square_medium.jpg" data-src="img/products/shoes/1.jpg" alt="">
                                            </a>
                                            <div data-countdown="2019/05/15" class="countdown"></div>
                                        </figure>
                                        <a href="product-detail-1.html">
                                            <h3>Armor Air x Fear</h3>
                                        </a>
                                        <div class="price_box">
                                            <span class="new_price">$48.00</span>
                                            <span class="old_price">$60.00</span>
                                        </div>
                                        <ul>
                                            <li><a href="#0" class="tooltip-1" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to favorites"><i class="ti-heart"></i><span>Add to favorites</span></a></li>
                                            <li><a href="#0" class="tooltip-1" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to compare"><i class="ti-control-shuffle"></i><span>Add to compare</span></a></li>
                                            <li><a href="#0" class="tooltip-1" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to cart"><i class="ti-shopping-cart"></i><span>Add to cart</span></a></li>
                                        </ul>
                                    </div>
                                    <!-- /grid_item -->
                                </div>
                                <!-- /col -->

                                <div class="col-6 col-md-4">
                                    <div class="grid_item">
                                        <span class="ribbon off">-30%</span>
                                        <figure>
                                            <a href="product-detail-1.html">
                                                <img class="img-fluid lazy" src="img/products/product_placeholder_square_medium.jpg" data-src="img/products/shoes/2.jpg" alt="">
                                            </a>
                                            <div data-countdown="2019/05/10" class="countdown"></div>
                                        </figure>
                                        <a href="product-detail-1.html">
                                            <h3>Armor Okwahn II</h3>
                                        </a>
                                        <div class="price_box">
                                            <span class="new_price">$90.00</span>
                                            <span class="old_price">$170.00</span>
                                        </div>
                                        <ul>
                                            <li><a href="#0" class="tooltip-1" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to favorites"><i class="ti-heart"></i><span>Add to favorites</span></a></li>
                                            <li><a href="#0" class="tooltip-1" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to compare"><i class="ti-control-shuffle"></i><span>Add to compare</span></a></li>
                                            <li><a href="#0" class="tooltip-1" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to cart"><i class="ti-shopping-cart"></i><span>Add to cart</span></a></li>
                                        </ul>
                                    </div>
                                    <!-- /grid_item -->
                                </div>
                                <!-- /col -->

                                <div class="col-6 col-md-4">
                                    <div class="grid_item">
                                        <span class="ribbon off">-50%</span>
                                        <figure>
                                            <a href="product-detail-1.html">
                                                <img class="img-fluid lazy" src="img/products/product_placeholder_square_medium.jpg" data-src="img/products/shoes/3.jpg" alt="">
                                            </a>
                                            <div data-countdown="2019/05/21" class="countdown"></div>
                                        </figure>
                                        <a href="product-detail-1.html">
                                            <h3>Armor Air Wildwood ACG</h3>
                                        </a>
                                        <div class="price_box">
                                            <span class="new_price">$75.00</span>
                                            <span class="old_price">$155.00</span>
                                        </div>
                                        <ul>
                                            <li><a href="#0" class="tooltip-1" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to favorites"><i class="ti-heart"></i><span>Add to favorites</span></a></li>
                                            <li><a href="#0" class="tooltip-1" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to compare"><i class="ti-control-shuffle"></i><span>Add to compare</span></a></li>
                                            <li><a href="#0" class="tooltip-1" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to cart"><i class="ti-shopping-cart"></i><span>Add to cart</span></a></li>
                                        </ul>
                                    </div>
                                    <!-- /grid_item -->
                                </div>
                                <!-- /col -->

                                <div class="col-6 col-md-4">
                                    <div class="grid_item">
                                        <span class="ribbon new">New</span>
                                        <figure>
                                            <a href="product-detail-1.html">
                                                <img class="img-fluid lazy" src="img/products/product_placeholder_square_medium.jpg" data-src="img/products/shoes/4.jpg" alt="">
                                            </a>
                                        </figure>
                                        <a href="product-detail-1.html">
                                            <h3>Armor ACG React Terra</h3>
                                        </a>
                                        <div class="price_box">
                                            <span class="new_price">$110.00</span>
                                        </div>
                                        <ul>
                                            <li><a href="#0" class="tooltip-1" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to favorites"><i class="ti-heart"></i><span>Add to favorites</span></a></li>
                                            <li><a href="#0" class="tooltip-1" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to compare"><i class="ti-control-shuffle"></i><span>Add to compare</span></a></li>
                                            <li><a href="#0" class="tooltip-1" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to cart"><i class="ti-shopping-cart"></i><span>Add to cart</span></a></li>
                                        </ul>
                                    </div>
                                    <!-- /grid_item -->
                                </div>
                                <!-- /col -->

                                <div class="col-6 col-md-4">
                                    <div class="grid_item">
                                        <span class="ribbon new">New</span>
                                        <figure>
                                            <a href="product-detail-1.html">
                                                <img class="img-fluid lazy" src="img/products/product_placeholder_square_medium.jpg" data-src="img/products/shoes/5.jpg" alt="">
                                            </a>
                                        </figure>
                                        <a href="product-detail-1.html">
                                            <h3>Armor Air Zoom Alpha</h3>
                                        </a>
                                        <div class="price_box">
                                            <span class="new_price">$140.00</span>
                                        </div>
                                        <ul>
                                            <li><a href="#0" class="tooltip-1" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to favorites"><i class="ti-heart"></i><span>Add to favorites</span></a></li>
                                            <li><a href="#0" class="tooltip-1" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to compare"><i class="ti-control-shuffle"></i><span>Add to compare</span></a></li>
                                            <li><a href="#0" class="tooltip-1" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to cart"><i class="ti-shopping-cart"></i><span>Add to cart</span></a></li>
                                        </ul>
                                    </div>
                                    <!-- /grid_item -->
                                </div>
                                <!-- /col -->

                                <div class="col-6 col-md-4">
                                    <div class="grid_item">
                                        <span class="ribbon new">New</span>
                                        <figure>
                                            <a href="product-detail-1.html">
                                                <img class="img-fluid lazy" src="img/products/product_placeholder_square_medium.jpg" data-src="img/products/shoes/6.jpg" alt="">
                                            </a>
                                        </figure>
                                        <a href="product-detail-1.html">
                                            <h3>Armor Air Alpha</h3>
                                        </a>
                                        <div class="price_box">
                                            <span class="new_price">$130.00</span>
                                        </div>
                                        <ul>
                                            <li><a href="#0" class="tooltip-1" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to favorites"><i class="ti-heart"></i><span>Add to favorites</span></a></li>
                                            <li><a href="#0" class="tooltip-1" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to compare"><i class="ti-control-shuffle"></i><span>Add to compare</span></a></li>
                                            <li><a href="#0" class="tooltip-1" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to cart"><i class="ti-shopping-cart"></i><span>Add to cart</span></a></li>
                                        </ul>
                                    </div>
                                    <!-- /grid_item -->
                                </div>
                                <!-- /col -->

                                <div class="col-6 col-md-4">
                                    <div class="grid_item">
                                        <span class="ribbon hot">Hot</span>
                                        <figure>
                                            <a href="product-detail-1.html">
                                                <img class="img-fluid lazy" src="img/products/product_placeholder_square_medium.jpg" data-src="img/products/shoes/7.jpg" alt="">
                                            </a>
                                        </figure>
                                        <a href="product-detail-1.html">
                                            <h3>Armor Air 98</h3>
                                        </a>
                                        <div class="price_box">
                                            <span class="new_price">$115.00</span>
                                        </div>
                                        <ul>
                                            <li><a href="#0" class="tooltip-1" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to favorites"><i class="ti-heart"></i><span>Add to favorites</span></a></li>
                                            <li><a href="#0" class="tooltip-1" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to compare"><i class="ti-control-shuffle"></i><span>Add to compare</span></a></li>
                                            <li><a href="#0" class="tooltip-1" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to cart"><i class="ti-shopping-cart"></i><span>Add to cart</span></a></li>
                                        </ul>
                                    </div>
                                    <!-- /grid_item -->
                                </div>
                                <!-- /col -->

                                <div class="col-6 col-md-4">
                                    <div class="grid_item">
                                        <span class="ribbon hot">Hot</span>
                                        <figure>
                                            <a href="product-detail-1.html">
                                                <img class="img-fluid lazy" src="img/products/product_placeholder_square_medium.jpg" data-src="img/products/shoes/8.jpg" alt="">
                                            </a>
                                        </figure>
                                        <a href="product-detail-1.html">
                                            <h3>Armor Air 720</h3>
                                        </a>
                                        <div class="price_box">
                                            <span class="new_price">$120.00</span>
                                        </div>
                                        <ul>
                                            <li><a href="#0" class="tooltip-1" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to favorites"><i class="ti-heart"></i><span>Add to favorites</span></a></li>
                                            <li><a href="#0" class="tooltip-1" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to compare"><i class="ti-control-shuffle"></i><span>Add to compare</span></a></li>
                                            <li><a href="#0" class="tooltip-1" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to cart"><i class="ti-shopping-cart"></i><span>Add to cart</span></a></li>
                                        </ul>
                                    </div>
                                    <!-- /grid_item -->
                                </div>
                                <!-- /col -->

                                <div class="col-6 col-md-4">
                                    <div class="grid_item">
                                        <span class="ribbon hot">Hot</span>
                                        <figure>
                                            <a href="product-detail-1.html">
                                                <img class="img-fluid lazy" src="img/products/product_placeholder_square_medium.jpg" data-src="img/products/shoes/9.jpg" alt="">
                                            </a>
                                        </figure>
                                        <a href="product-detail-1.html">
                                            <h3>Armor 720</h3>
                                        </a>
                                        <div class="price_box">
                                            <span class="new_price">$100.00</span>
                                        </div>
                                        <ul>
                                            <li><a href="#0" class="tooltip-1" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to favorites"><i class="ti-heart"></i><span>Add to favorites</span></a></li>
                                            <li><a href="#0" class="tooltip-1" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to compare"><i class="ti-control-shuffle"></i><span>Add to compare</span></a></li>
                                            <li><a href="#0" class="tooltip-1" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to cart"><i class="ti-shopping-cart"></i><span>Add to cart</span></a></li>
                                        </ul>
                                    </div>
                                    <!-- /grid_item -->
                                </div>
                                <!-- /col -->		

                            </div>
                            <!-- /row -->
                            <div class="pagination__wrapper">
                                <ul class="pagination">
                                    <li><a href="#0" class="prev" title="previous page">&#10094;</a></li>
                                    <li>
                                        <a href="#0" class="active">1</a>
                                    </li>
                                    <li>
                                        <a href="#0">2</a>
                                    </li>
                                    <li>
                                        <a href="#0">3</a>
                                    </li>
                                    <li>
                                        <a href="#0">4</a>
                                    </li>
                                    <li><a href="#0" class="next" title="next page">&#10095;</a></li>
                                </ul>
                            </div>
                        </div>
                        <!-- /col -->
                    </div>
                    <!-- /row -->
                </div>
                <!-- /container -->


                <!--Ralated product-->
                <div class="bg_white">
                    <div class="container margin_60_35">
                        <div class="main_title">
                            <h2>Related</h2>
                            <span>Products</span>
                        </div>
                        <div class="owl-carousel owl-theme products_carousel">
                            <c:forEach var="element" items="${relateProduct}">
                            <div class="item">
                                <div class="grid_item">
                                    <c:set var="found" value="false" />

                                    <c:forEach var="status" items="${element.status}" >
                                        <c:if test="${not found}">
                                            <c:if test="${status eq 'new'}">
                                                <span class="ribbon new">${status}</span>
                                                <c:set var="found" value="true" />
                                            </c:if>
                                            <c:if test="${status eq 'hot'}">
                                                <span class="ribbon hot">${status}</span>
                                                <c:set var="found" value="true" />
                                            </c:if>
                                            <c:if test="${status eq 'common'}">
                                                <c:if test="${element.discount_status == 1}">
                                                    <span class="ribbon off">-${status}%</span>
                                                    <c:set var="found" value="true" />
                                                </c:if> 
                                            </c:if>
                                        </c:if>  
                                    </c:forEach>
                                    <figure>
                                        <a href="product?service=detail&name=${element.name}&brand=${element.brand_name}">
                                            <img class="owl-lazy" src="${element.img1}" data-src="${element.img1}" alt="">
                                        </a>
                                    </figure>
                                    <div class="rating">                                        
                                        <%
                                            // Access the 'element' object from the pageContext
                                            Object elementObj = pageContext.findAttribute("element");
                                            if (elementObj != null) {
                                                // Cast it to the expected type
                                                SubProducts element = (SubProducts) elementObj;

                                                // Initialize variables for calculating the average rating
                                                int[] ratings = element.getRating();
                                                int sum = 0;
                                                for (int rating : ratings) {
                                                    sum += rating;
                                                }

                                                // Calculate the average rating
                                                int rate = (ratings.length > 0) ? (sum / ratings.length) : 0;
                                                request.setAttribute("rate", rate);
                                            }
                                        %>
                                        <c:set var="rate" value="${requestScope.rate}" />
                                        <c:forEach begin="1" end="${rate}" step="1">
                                            <i class="icon-star voted"></i>
                                        </c:forEach>
                                        <c:forEach begin="${rate + 1}" end="5" step="1">
                                            <i class="icon-star"></i>
                                        </c:forEach>


                                    </div>
                                    <a href="product?service=detail&name=${element.name}&brand=${element.brand_name}">
                                        <h3>${element.name}</h3>
                                    </a>
                                    <div class="price_box">
                                        <c:if test="${element.discount_status == 1}">                                              
                                            <span class="new_price">$${element.price*(100-element.discount)/100}</span>
                                            <span class="old_price">$${element.price}</span>
                                        </c:if>
                                        <c:if test="${element.discount_status == 0}">                                              
                                            <span class="new_price">$${element.price}</span>                                                
                                        </c:if>     
                                    </div>
                                    <ul>
                                        <li>
                                            <c:set var="colors" value="${element.color}" />
                                            <c:set var="formattedColors" value="" />
                                            <c:forEach items="${colors}" var="color" varStatus="loop">
                                                <c:set var="formattedColor" value='"${color}"' />
                                                <c:if test="${not loop.last}">
                                                    <c:set var="formattedColor" value='${formattedColor}, ' />
                                                </c:if>
                                                <c:set var="formattedColors" value="${formattedColors}${formattedColor}" />
                                            </c:forEach>

                                            <c:set var="sizes" value="${element.size}" />
                                            <c:set var="formattedSizes" value="" />
                                            <c:forEach items="${sizes}" var="size" varStatus="loop">
                                                <c:set var="formattedSize" value='"${size}"' />
                                                <c:if test="${not loop.last}">
                                                    <c:set var="formattedSize" value='${formattedSize}, ' />
                                                </c:if>
                                                <c:set var="formattedSizes" value="${formattedSizes}${formattedSize}" />
                                            </c:forEach>
                                            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" 
                                                    data-name="${element.name}" 
                                                    data-colors='[${formattedColors}]' 
                                                    data-sizes='[${formattedSizes}]' 
                                                    >                  
                                                <i class="ti-shopping-cart"></i>
                                            </button>
                                        </li>
                                    </ul>
                                </div>
                                <!-- /grid_item -->
                            </div>
                            <!-- /item -->
                        </c:forEach>
                        </div>
                        <!-- /products_carousel -->
                    </div>
                    <!-- /container -->
                </div>
                <!-- /bg_white -->	
            </main>
            <!-- /main -->


            <jsp:include page="footer.jsp"/>
            <!--/footer-->
        </div>
        <!-- page -->

        <div class="top_panel">
            <div class="container header_panel">
                <a href="#0" class="btn_close_top_panel"><i class="ti-close"></i></a>
                <label>1 product added to cart</label>
            </div>
            <!-- /header_panel -->
            <div class="item">
                <div class="container">
                    <div class="row">
                        <div class="col-md-7">
                            <div class="item_panel">
                                <figure>
                                    <img src="img/products/product_placeholder_square_small.jpg" data-src="img/products/shoes/1.jpg" class="lazy" alt="">
                                </figure>
                                <h4>1x Armor Air X Fear</h4>
                                <div class="price_panel"><span class="new_price">$148.00</span><span class="percentage">-20%</span> <span class="old_price">$160.00</span></div>
                            </div>
                        </div>
                        <div class="col-md-5 btn_panel">
                            <a href="cart.html" class="btn_1 outline">View cart</a> <a href="checkout.html" class="btn_1">Checkout</a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /item -->
            <div class="container related">
                <h4>Who bought this product also bought</h4>
                <div class="row">
                    <div class="col-md-4">
                        <div class="item_panel">
                            <a href="#0">
                                <figure>
                                    <img src="img/products/product_placeholder_square_small.jpg" data-src="img/products/shoes/2.jpg" alt="" class="lazy">
                                </figure>
                            </a>
                            <a href="#0">
                                <h5>Armor Okwahn II</h5>
                            </a>
                            <div class="price_panel"><span class="new_price">$90.00</span></div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="item_panel">
                            <a href="#0">
                                <figure>
                                    <img src="img/products/product_placeholder_square_small.jpg" data-src="img/products/shoes/3.jpg" alt="" class="lazy">
                                </figure>
                            </a>
                            <a href="#0">
                                <h5>Armor Air Wildwood ACG</h5>
                            </a>
                            <div class="price_panel"><span class="new_price">$75.00</span><span class="percentage">-20%</span> <span class="old_price">$155.00</span></div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="item_panel">
                            <a href="#0">
                                <figure>
                                    <img src="img/products/product_placeholder_square_small.jpg" data-src="img/products/shoes/4.jpg" alt="" class="lazy">
                                </figure>
                            </a>
                            <a href="#0">
                                <h5>Armor ACG React Terra</h5>
                            </a>
                            <div class="price_panel"><span class="new_price">$110.00</span></div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /related -->
        </div>
        <!-- /add_cart_panel -->

        
        <jsp:include page="modal.jsp"/>

        <!-- SPECIFIC SCRIPTS -->
        <script src="js/sticky_sidebar.min.js"></script>
        <script src="js/specific_listing.js"></script>
        <script src="js/carousel-home.js"></script>
        <script src="js/specific_listing.js"></script>
        <script src="js/jquery.cookiebar.js"></script>


    </body>
</html>