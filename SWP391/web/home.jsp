<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*, model.*, dao.* " %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="Ansonika">
        <title>${title}</title>

        <!-- Favicons-->
        <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
        <link rel="apple-touch-icon" type="image/x-icon" href="img/apple-touch-icon-57x57-precomposed.png">
        <link rel="apple-touch-icon" type="image/x-icon" sizes="72x72" href="img/apple-touch-icon-72x72-precomposed.png">
        <link rel="apple-touch-icon" type="image/x-icon" sizes="114x114" href="img/apple-touch-icon-114x114-precomposed.png">
        <link rel="apple-touch-icon" type="image/x-icon" sizes="144x144" href="img/apple-touch-icon-144x144-precomposed.png">

        <!-- GOOGLE WEB FONT -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet">

        <!-- BASE CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">

        <!-- SPECIFIC CSS -->
        <link href="css/home_1.css" rel="stylesheet">

        <!-- YOUR CUSTOM CSS -->
        <link href="css/custom.css" rel="stylesheet">

    </head>
    <body>
        <div id="page">

            <!-- Header -->
            <jsp:include page="header.jsp"/>

            <main>
                <div id="carousel-home">

                    <!--Slider of home-->
                    <div class="owl-carousel owl-theme">
                        <div class="owl-slide cover" style="background-image: url(img/products/nike.jpg);">
                            <div class="opacity-mask d-flex align-items-center" data-opacity-mask="rgba(0, 0, 0, 0.5)">
                                <div class="container">
                                    <div class="row justify-content-center justify-content-md-end">
                                        <div class="col-lg-6 static">
                                            <div class="slide-text text-end white">
                                                <h2 class="owl-slide-animated owl-slide-title">Attack Air<br>Max 720 Sage Low</h2>
                                                <p class="owl-slide-animated owl-slide-subtitle">
                                                    Limited items available at this price
                                                </p>
                                                <div class="owl-slide-animated owl-slide-cta"><a class="btn_1" href="listing-grid-1-full.html" role="button">Shop Now</a></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--/owl-slide-->
                        <div class="owl-slide cover" style="background-image: url(img/slides/slide_home_1.jpg);">
                            <div class="opacity-mask d-flex align-items-center" data-opacity-mask="rgba(0, 0, 0, 0.5)">
                                <div class="container">
                                    <div class="row justify-content-center justify-content-md-start">
                                        <div class="col-lg-6 static">
                                            <div class="slide-text white">
                                                <h2 class="owl-slide-animated owl-slide-title">Attack Air<br>VaporMax Flyknit 3</h2>
                                                <p class="owl-slide-animated owl-slide-subtitle">
                                                    Limited items available at this price
                                                </p>
                                                <div class="owl-slide-animated owl-slide-cta"><a class="btn_1" href="listing-grid-1-full.html" role="button">Shop Now</a></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--/owl-slide-->
                        <div class="owl-slide cover" style="background-image: url(img/slides/slide_home_3.jpg);">
                            <div class="opacity-mask d-flex align-items-center" data-opacity-mask="rgba(255, 255, 255, 0.5)">
                                <div class="container">
                                    <div class="row justify-content-center justify-content-md-start">
                                        <div class="col-lg-12 static">
                                            <div class="slide-text text-center black">
                                                <h2 class="owl-slide-animated owl-slide-title">Attack Air<br>Monarch IV SE</h2>
                                                <p class="owl-slide-animated owl-slide-subtitle">
                                                    Lightweight cushioning and durable support with a Phylon midsole
                                                </p>
                                                <div class="owl-slide-animated owl-slide-cta"><a class="btn_1" href="listing-grid-1-full.html" role="button">Shop Now</a></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--/owl-slide-->
                        </div>
                    </div>
                    <!--End Slider of home-->
                    <div id="icon_drag_mobile"></div>
                </div>
                <!--/carousel-->

                <!--Collection of home-->
                <ul id="banners_grid" class="clearfix">
                    <li>
                        <a href="#0" class="img_container">
                            <img src="img/banners_cat_placeholder.jpg" data-src="img/banner_1.jpg" alt="" class="lazy">
                            <div class="short_info opacity-mask" data-opacity-mask="rgba(0, 0, 0, 0.5)">
                                <h3>Men's Collection</h3>
                                <div><span class="btn_1">Shop Now</span></div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#0" class="img_container">
                            <img src="img/banners_cat_placeholder.jpg" data-src="img/banner_2.jpg" alt="" class="lazy">
                            <div class="short_info opacity-mask" data-opacity-mask="rgba(0, 0, 0, 0.5)">
                                <h3>Womens's Collection</h3>
                                <div><span class="btn_1">Shop Now</span></div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#0" class="img_container">
                            <img src="img/banners_cat_placeholder.jpg" data-src="img/banner_3.jpg" alt="" class="lazy">
                            <div class="short_info opacity-mask" data-opacity-mask="rgba(0, 0, 0, 0.5)">
                                <h3>Kids's Collection</h3>
                                <div><span class="btn_1">Shop Now</span></div>
                            </div>
                        </a>
                    </li>
                </ul>
                <!--End Collection of home-->


                <!--/Top Selling -->
                <div class="row">
                    <!-- <div class="col-9"> -->
                    <div class="col-8 container margin_60_35">
                        <div class="main_title">
                            <h2>Top Selling</h2>
                            <span>Products</span>
                            <!-- <p>Cum doctus civibus efficiantur in imperdiet deterruisset</p> -->
                        </div>
                        <div class="row small-gutters">
                            <c:forEach var="element" items="${topSelling}">
                                <div class="col-6 col-md-4 col-xl-3">
                                    <div class="grid_item">
                                        <figure>
                                            <c:if test="${element.status eq 'new'}">
                                                <span class="ribbon new">${element.status}</span>
                                            </c:if>
                                            <c:if test="${element.status eq 'hot'}">
                                                <span class="ribbon hot">${element.status}</span>
                                            </c:if>
                                            <c:if test="${element.status eq 'common'}">
                                                <c:if test="${element.discount_status == 1}">
                                                    <span class="ribbon off">-${element.discount}%</span>
                                                </c:if> 
                                            </c:if>          
                                            <a href="product?service=detail&name=${element.name}">
                                                <img class="img-fluid lazy" src="${element.img1}" data-src="${element.img1}" alt="">
                                                <img class="img-fluid lazy" src="${element.img2}" data-src="${element.img2}" alt="">
                                            </a>
                                            <!--                                            <div data-countdown="2019/05/15" class="countdown"></div>-->
                                        </figure>
                                        <div class="rating">
                                            <c:forEach begin="1" end="${element.rating}" step="1">
                                                <i class="icon-star voted"></i>
                                            </c:forEach>
                                            <c:forEach begin="${element.rating+1}" end="5" step="1">
                                                <i class="icon-star"></i>
                                            </c:forEach>
                                            
                                        </div>
                                        <a href="product?service=detail&name=${element.name}">
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
                                            <li><a href="#0" class="tooltip-1" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to cart"><i class="ti-shopping-cart"></i><span>Add to cart</span></a></li>
                                        </ul>
                                    </div>
                                    <!-- /grid_item -->
                                </div>
                            </c:forEach>
                        </div>
                        <!-- /row -->
                    </div>
                    <!-- /container -->
                    <!-- </div> -->
                    <div class="col-4">
                        <div class="container margin_60_35">
                            <div class="main_title">
                                <h2>Blogs</h2>
                                <span>Blog</span>
                                <!-- <p>Cum doctus civibus efficiantur in imperdiet deterruisset</p> -->
                            </div>
                            <!-- <div class="row"> -->
                            <c:forEach var="element" items="${blog}">
                                <div class="col-lg-12">
                                    <h5>${element.title}</h5>
                                    <a class="box_news" href="blog.html">

                                        <figure>
                                            <img src="${element.cover_img}" data-src="${element.cover_img}" alt="" width="100" height="76" class="lazy">								
                                        </figure>
                                        <ul>
                                            <!--                                        <li>by Mark Twain</li>-->
                                            <li><fmt:formatDate value="${element.created_at}" pattern="dd.MM.yyyy"/></li>
                                        </ul>
                                        <p>${element.context}</p>
                                    </a>													

                                </div>

                            </c:forEach>

                            <!-- /box_news -->
                            <!-- </div> -->
                            <!-- /row -->
                        </div>
                        <!-- /container -->
                    </div>
                </div>

                <!--/Top Selling -->


                <div class="featured lazy" data-bg="url(img/featured_home.jpg)">
                    <div class="opacity-mask d-flex align-items-center" data-opacity-mask="rgba(0, 0, 0, 0.5)">
                        <div class="container margin_60">
                            <div class="row justify-content-center justify-content-md-start">
                                <div class="col-lg-6 wow" data-wow-offset="150">
                                    <h3>Armor<br>Air Color 720</h3>
                                    <p>Lightweight cushioning and durable support with a Phylon midsole</p>
                                    <div class="feat_text_block">
                                        <div class="price_box">
                                            <span class="new_price">$90.00</span>
                                            <span class="old_price">$170.00</span>
                                        </div>
                                        <a class="btn_1" href="listing-grid-1-full.html" role="button">Shop Now</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /featured -->

                <div class="container margin_60_35">
                    <div class="main_title">
                        <h2>Featured</h2>
                        <span>Products</span>
                        <!-- <p>Cum doctus civibus efficiantur in imperdiet deterruisset</p> -->
                    </div>
                    <div class="owl-carousel owl-theme products_carousel">
                        <c:forEach var="element" items="${featured}">
                            <div class="item">
                                <div class="grid_item">
                                    <c:if test="${element.status eq 'new'}">
                                        <span class="ribbon new">${element.status}</span>
                                    </c:if>
                                    <c:if test="${element.status eq 'hot'}">
                                        <span class="ribbon hot">${element.status}</span>
                                    </c:if>
                                    <c:if test="${element.status eq 'common'}">
                                        <c:if test="${element.discount_status == 1}">
                                            <span class="ribbon off">-${element.discount}%</span>
                                        </c:if> 
                                    </c:if>
                                    <figure>
                                        <a href="product?service=detail&name=${element.name}">
                                            <img class="owl-lazy" src="${element.img1}" data-src="${element.img1}" alt="">
                                        </a>
                                    </figure>
                                    <div class="rating">
                                        <c:forEach begin="1" end="${element.rating}" step="1">
                                                <i class="icon-star voted"></i>
                                            </c:forEach>
                                            <c:forEach begin="${element.rating+1}" end="5" step="1">
                                                <i class="icon-star"></i>
                                            </c:forEach>                  
                                    </div>
                                    <a href="product?service=detail&name=${element.name}">
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
                                        <li><a href="#0" class="tooltip-1" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to cart"><i class="ti-shopping-cart"></i><span>Add to cart</span></a></li>
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

                <div class="bg_gray">
                    <div class="container margin_30">
                        <div id="brands" class="owl-carousel owl-theme">
                            <div class="item">
                                <a href="#0"><img src="img/brands/adidas.png" data-src="img/brands/adidas.png" alt="" class="owl-lazy"></a>
                            </div><!-- /item -->
                            <div class="item">
                                <a href="#0"><img src="img/brands/crocs.png" data-src="img/brands/crocs.png" alt="" class="owl-lazy"></a>
                            </div><!-- /item -->
                            <div class="item">
                                <a href="#0"><img src="img/brands/dd.png" data-src="img/brands/dd.png" alt="" class="owl-lazy"></a>
                            </div><!-- /item -->
                            <div class="item">
                                <a href="#0"><img src="img/brands/jaxson.png" data-src="img/brands/jaxson.png" alt="" class="owl-lazy"></a>
                            </div><!-- /item -->
                            <div class="item">
                                <a href="#0"><img src="img/brands/jordan.png" data-src="img/brands/jordan.png" alt="" class="owl-lazy"></a>
                            </div><!-- /item -->
                            <div class="item">
                                <a href="#0"><img src="img/brands/nike.png" data-src="img/brands/nike.png" alt="" class="owl-lazy"></a>
                            </div><!-- /item -->
                            <div class="item">
                                <a href="#0"><img src="img/brands/puma.png" data-src="img/brands/puma.png" alt="" class="owl-lazy"></a>
                            </div><!-- /item -->
                        </div><!-- /carousel -->
                    </div><!-- /container -->
                </div>
                <!-- /bg_gray -->


            </main>
            <!-- /main --> 

            <jsp:include page="footer.jsp"/>
        </div>
        <!-- page -->

        <div id="toTop"></div><!-- Back to top button -->

        <!-- COMMON SCRIPTS -->
        <script src="js/common_scripts.min.js"></script>
        <script src="js/main.js"></script>

        <!-- SPECIFIC SCRIPTS -->
        <script src="js/carousel-home.min.js"></script>
    </body>
</html>
