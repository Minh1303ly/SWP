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
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>

        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    </head>
    <body>
        <div id="page">

            <!-- Header -->
            <jsp:include page="header.jsp"/>

            <main>
                <div id="carousel-home">

                    <!--Slider of home-->
                    <div class="owl-carousel owl-theme">
                        <c:forEach var="element" items="${slider.subList(1,4)}">
                            <div class="owl-slide cover" style="background-image: url(${element.image});">
                            <div class="opacity-mask d-flex align-items-center" data-opacity-mask="rgba(0, 0, 0, 0.5)">
                                <div class="container">
                                    <div class="row justify-content-center justify-content-md-end">
                                        <div class="col-lg-6 static">
                                            <div class="slide-text text-end white">
                                                <h2 class="owl-slide-animated owl-slide-title">${element.title}</h2>
<!--                                                <p class="owl-slide-animated owl-slide-subtitle">
                                                    Limited items available at this price
                                                </p>-->
                                                <div class="owl-slide-animated owl-slide-cta"><a class="btn_1" href="${element.backLink}" role="button">Shop Now</a></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        </c:forEach>
                        
                        
                    </div>
                    <!--End Slider of home-->
                    <div id="icon_drag_mobile"></div>
                </div>
                <!--/carousel-->

                <!--Collection of home-->
                <ul id="banners_grid" class="clearfix">
                    <c:forEach var="element" items="${slider.subList(5,8)}">
                        <li>
                             <a href="${element.backLink}" class="img_container">
                                 <img src="${element.image}" data-src="${element.image}" alt="" class="lazy">
                                 <div class="short_info opacity-mask" data-opacity-mask="rgba(0, 0, 0, 0.5)">
                                     <h3>${element.title}</h3>
                                     <div><span class="btn_1">Shop Now</span></div>
                                 </div>
                             </a>
                         </li> 
                    </c:forEach>
                    
             
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
                                            <li><a href="#" class="tooltip-1" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to cart"><i class="ti-shopping-cart"></i><span>Add to cart</span></a></li>
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

                
                <div class="featured lazy" data-bg="url(${slider.get(10).image}">
                    <div class="opacity-mask d-flex align-items-center" data-opacity-mask="rgba(0, 0, 0, 0.5)">
                        <div class="container margin_60">
                            <div class="row justify-content-center justify-content-md-start">
                                <div class="col-lg-6 wow" data-wow-offset="150">
                                    <h3>${slider.get(10).title}</h3>
                                    <p>${slider.get(10).note}</p>
                                    <div class="feat_text_block">
<!--                                        <div class="price_box">
                                            <span class="new_price">$90.00</span>
                                            <span class="old_price">$170.00</span>
                                        </div>-->
                                        <a class="btn_1" href="${slider.get(10).backLink}" role="button">Shop Now</a>
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
                                    <a href="product?service=detail&name=${element.rating}">
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
        
        <jsp:include page="modal_account.jsp"/>


        <!-- COMMON SCRIPTS -->
        <script src="js/common_scripts.min.js"></script>
        <script src="js/main.js"></script>

        <!-- SPECIFIC SCRIPTS -->
        <script src="js/carousel-home.js"></script>
        <script src="js/jquery.cookiebar.js"></script>
        <script src="js/tu.js"></script>
        <script>
                            $(document).ready(function () {
                                'use strict';
                                $.cookieBar({
                                    fixed: true
                                });
                            });
        </script>
    </body>
</html>
