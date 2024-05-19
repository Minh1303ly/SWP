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
                            <p>Cum doctus civibus efficiantur in imperdiet deterruisset.</p>
                        </div>
                        <div class="owl-carousel owl-theme products_carousel">
                            <div class="item">
                                <div class="grid_item">
                                    <span class="ribbon new">New</span>
                                    <figure>
                                        <a href="product-detail-1.html">
                                            <img class="owl-lazy" src="img/products/product_placeholder_square_medium.jpg" data-src="img/products/shoes/4.jpg" alt="">
                                        </a>
                                    </figure>
                                    <div class="rating"><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star"></i></div>
                                    <a href="product-detail-1.html">
                                        <h3>ACG React Terra</h3>
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
                            <!-- /item -->
                            <div class="item">
                                <div class="grid_item">
                                    <span class="ribbon new">New</span>
                                    <figure>
                                        <a href="product-detail-1.html">
                                            <img class="owl-lazy" src="img/products/product_placeholder_square_medium.jpg" data-src="img/products/shoes/5.jpg" alt="">
                                        </a>
                                    </figure>
                                    <div class="rating"><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star"></i></div>
                                    <a href="product-detail-1.html">
                                        <h3>Air Zoom Alpha</h3>
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
                            <!-- /item -->
                            <div class="item">
                                <div class="grid_item">
                                    <span class="ribbon hot">Hot</span>
                                    <figure>
                                        <a href="product-detail-1.html">
                                            <img class="owl-lazy" src="img/products/product_placeholder_square_medium.jpg" data-src="img/products/shoes/8.jpg" alt="">
                                        </a>
                                    </figure>
                                    <div class="rating"><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star"></i></div>
                                    <a href="product-detail-1.html">
                                        <h3>Air Color 720</h3>
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
                            <!-- /item -->
                            <div class="item">
                                <div class="grid_item">
                                    <span class="ribbon off">-30%</span>
                                    <figure>
                                        <a href="product-detail-1.html">
                                            <img class="owl-lazy" src="img/products/product_placeholder_square_medium.jpg" data-src="img/products/shoes/2.jpg" alt="">
                                        </a>
                                    </figure>
                                    <div class="rating"><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star"></i></div>
                                    <a href="product-detail-1.html">
                                        <h3>Okwahn II</h3>
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
                            <!-- /item -->
                            <div class="item">
                                <div class="grid_item">
                                    <span class="ribbon off">-50%</span>
                                    <figure>
                                        <a href="product-detail-1.html">
                                            <img class="owl-lazy" src="img/products/product_placeholder_square_medium.jpg" data-src="img/products/shoes/3.jpg" alt="">
                                        </a>
                                    </figure>
                                    <div class="rating"><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star"></i></div>
                                    <a href="product-detail-1.html">
                                        <h3>Air Wildwood ACG</h3>
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
                            <!-- /item -->
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

        <!-- Size modal -->
        <div class="modal fade" tabindex="-1" role="dialog" aria-labelledby="size-modal" id="size-modal" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Size guide</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <p>Lorem ipsum dolor sit amet, et velit propriae invenire mea, ad nam alia intellegat. Aperiam mediocrem rationibus nec te. Tation persecuti accommodare pro te. Vis et augue legere, vel labitur habemus ocurreret ex.</p>
                        <div class="table-responsive">
                            <table class="table table-striped table-sm sizes">
                                <tbody><tr>
                                        <th scope="row">US Sizes</th>
                                        <td>6</td>
                                        <td>6,5</td>
                                        <td>7</td>
                                        <td>7,5</td>
                                        <td>8</td>
                                        <td>8,5</td>
                                        <td>9</td>
                                        <td>9,5</td>
                                        <td>10</td>
                                        <td>10,5</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">Euro Sizes</th>
                                        <td>39</td>
                                        <td>39</td>
                                        <td>40</td>
                                        <td>40-41</td>
                                        <td>41</td>
                                        <td>41-42</td>
                                        <td>42</td>
                                        <td>42-43</td>
                                        <td>43</td>
                                        <td>43-44</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">UK Sizes</th>
                                        <td>5,5</td>
                                        <td>6</td>
                                        <td>6,5</td>
                                        <td>7</td>
                                        <td>7,5</td>
                                        <td>8</td>
                                        <td>8,5</td>
                                        <td>9</td>
                                        <td>9,5</td>
                                        <td>10</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">Inches</th>
                                        <td>9.25"</td>
                                        <td>9.5"</td>
                                        <td>9.625"</td>
                                        <td>9.75"</td>
                                        <td>9.9375"</td>
                                        <td>10.125"</td>
                                        <td>10.25"</td>
                                        <td>10.5"</td>
                                        <td>10.625"</td>
                                        <td>10.75"</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">CM</th>
                                        <td>23,5</td>
                                        <td>24,1</td>
                                        <td>24,4</td>
                                        <td>24,8</td>
                                        <td>25,4</td>
                                        <td>25,7</td>
                                        <td>26</td>
                                        <td>26,7</td>
                                        <td>27</td>
                                        <td>27,3</td>
                                    </tr>
                                </tbody></table>
                        </div>
                        <!-- /table -->
                    </div>
                </div>
            </div>
        </div>
        <jsp:include page="modal.jsp"/>

        <!-- SPECIFIC SCRIPTS -->
        <script src="js/sticky_sidebar.min.js"></script>
        <script src="js/specific_listing.js"></script>
        <script src="js/carousel-home.js"></script>
        <script src="js/specific_listing.js"></script>
        <script src="js/jquery.cookiebar.js"></script>


    </body>
</html>