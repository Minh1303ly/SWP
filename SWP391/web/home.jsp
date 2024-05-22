<%-- 
    Document   : home
    Created on : May 14, 2024, 9:49:36 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="Ansonika">
        <title>Allaia | Bootstrap eCommerce Template - ThemeForest</title>

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
            <header class="version_1">
                <div class="layer"></div><!-- Mobile menu overlay mask -->
                <div class="main_header">
                    <div class="container">
                        <div class="row small-gutters">
                            <div class="col-xl-4 col-lg-3 d-lg-flex align-items-center">
                                <div id="logo">
                                    <a href="index.html"><img src="img/logo3.png" alt="" width="100" height="35"></a>
                                </div>
                            </div>
                            <nav class="col-xl-4 col-lg-7">
                                <a class="open_close" href="javascript:void(0);">
                                    <div class="hamburger hamburger--spin">
                                        <div class="hamburger-box">
                                            <div class="hamburger-inner"></div>
                                        </div>
                                    </div>
                                </a>
                                <!-- Mobile menu button -->
                                <div class="main-menu">
                                    <div id="header_menu">
                                        <a href="index.html"><img src="img/logo_black.svg" alt="" width="100" height="35"></a>
                                        <a href="#" class="open_close" id="close_in"><i class="ti-close"></i></a>
                                    </div>
                                    <ul>
                                        <li class="submenu">
                                            <a href="javascript:void(0);" class="show-submenu">Home</a>
                                            <ul>
                                                <li><a href="index.html">Slider</a></li>
                                                <li><a href="index-2.html">Top Selling</a></li>
                                                <li><a href="index-3.html">Feature</a></li>
                                                <li><a href="index-4.html">Post</a></li>
                                            </ul>
                                        </li>
                                        <li class="submenu">
                                            <!-- <a href="javascript:void(0);" class="show-submenu">Extra Pages</a>
                                            <ul>
                                                <li><a href="header-2.html">Header Style 2</a></li>
                                                <li><a href="header-3.html">Header Style 3</a></li>
                                                <li><a href="header-4.html">Header Style 4</a></li>
                                                <li><a href="header-5.html">Header Style 5</a></li>
                                                <li><a href="404.html">404 Page</a></li>
                                                <li><a href="sign-in-modal.html">Sign In Modal</a></li>
                                                <li><a href="contacts.html">Contact Us</a></li>
                                                <li><a href="about.html">About 1</a></li>
                                                <li><a href="about-2.html">About 2</a></li>
                                                <li><a href="modal-advertise.html">Modal Advertise</a></li>
                                                <li><a href="modal-newsletter.html">Modal Newsletter</a></li>
                                            </ul> -->
                                        </li>

                                        <li class="megamenu submenu">
                                            <a href="javascript:void(0);" class="show-submenu-mega">Shop</a>
                                            <!-- <div class="menu-wrapper">
                                                <div class="row small-gutters">
                                                    <div class="col-lg-3">
                                                        <h3>Listing grid</h3>
                                                        <ul>
                                                            <li><a href="listing-grid-1-full.html">Grid Full Width</a></li>
                                                            <li><a href="listing-grid-2-full.html">Grid Full Width 2</a></li>
                                                            <li><a href="listing-grid-3.html">Grid Boxed</a></li>
                                                            <li><a href="listing-grid-4-sidebar-left.html">Grid Sidebar Left</a></li>
                                                            <li><a href="listing-grid-5-sidebar-right.html">Grid Sidebar Right</a></li>
                                                            <li><a href="listing-grid-6-sidebar-left.html">Grid Sidebar Left 2</a></li>
                                                            <li><a href="listing-grid-7-sidebar-right.html">Grid Sidebar Right 2</a></li>
                                                        </ul>
                                                    </div>
                                                    <div class="col-lg-3">
                                                        <h3>Listing row &amp; Product</h3>
                                                        <ul>
                                                            <li><a href="listing-row-1-sidebar-left.html">Row Sidebar Left</a></li>
                                                            <li><a href="listing-row-2-sidebar-right.html">Row Sidebar Right</a></li>
                                                            <li><a href="listing-row-3-sidebar-left.html">Row Sidebar Left 2</a></li>
                                                            <li><a href="listing-row-4-sidebar-extended.html">Row Sidebar Extended</a></li>
                                                            <li><a href="product-detail-1.html">Product Large Image</a></li>
                                                            <li><a href="product-detail-2.html">Product Carousel</a></li>
                                                            <li><a href="product-detail-3.html">Product Sticky Info</a></li>
                                                        </ul>
                                                    </div>
                                                    <div class="col-lg-3">
                                                        <h3>Other pages</h3>
                                                        <ul>
                                                            <li><a href="cart.html">Cart Page</a></li>
                                                            <li><a href="checkout.html">Check Out Page</a></li>
                                                            <li><a href="confirm.html">Confirm Purchase Page</a></li>
                                                            <li><a href="account.html">Create Account Page</a></li>
                                                            <li><a href="track-order.html">Track Order</a></li>
                                                            <li><a href="help.html">Help Page</a></li>
                                                            <li><a href="help-2.html">Help Page 2</a></li>
                                                            <li><a href="leave-review.html">Leave a Review</a></li>
                                                        </ul>
                                                    </div>
                                                    <div class="col-lg-3 d-xl-block d-lg-block d-md-none d-sm-none d-none">
                                                        <div class="banner_menu">
                                                            <a href="#0">
                                                                <img src="data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw==" data-src="img/banner_menu.jpg" width="400" height="550" alt="" class="img-fluid lazy">
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                                
                                            </div> -->
                                            <!-- /menu-wrapper -->
                                        </li>
                                        <li>
                                            <!-- <a href="#0">Buy Template</a> -->
                                        </li>

                                        <li>
                                            <a href="blog.html">Blog</a>
                                        </li>
                                        <li>
                                            <a href="#0">About Us </a>
                                        </li>
                                    </ul>
                                </div>
                                <!--/main-menu -->
                            </nav>
                            <div class="col-xl-4 col-lg-2 d-lg-flex align-items-center justify-content-end text-end">
                                <a class="phone_top" href="tel://9438843343"><strong><span>Need Help?</span>+94 423-23-221</strong></a>
                            </div>
                        </div>
                        <!-- /row -->
                    </div>
                </div>
                <!-- /main_header -->

                <div class="main_nav Sticky">
                    <div class="container">
                        <div class="row small-gutters">
                            <div class="col-xl-3 col-lg-3 col-md-3">
                                <nav class="categories">
                                    <ul class="clearfix">
                                        <li><span>
                                                <a href="#">
                                                    <span class="hamburger hamburger--spin">
                                                        <span class="hamburger-box">
                                                            <span class="hamburger-inner"></span>
                                                        </span>
                                                    </span>
                                                    Categories
                                                </a>
                                            </span>
                                            <div id="menu">
                                                <ul>
                                                    <li><span><a href="#0">Collections</a></span>
                                                        <ul>
                                                            <li><a href="listing-grid-1-full.html">Trending</a></li>
                                                            <li><a href="listing-grid-2-full.html">Life style</a></li>
                                                            <li><a href="listing-grid-3.html">Running</a></li>
                                                            <li><a href="listing-grid-4-sidebar-left.html">Training</a></li>
                                                            <li><a href="listing-grid-5-sidebar-right.html">View all Collections</a></li>
                                                        </ul>
                                                    </li>
                                                    <li><span><a href="#">Men</a></span>
                                                        <ul>
                                                            <li><a href="listing-grid-6-sidebar-left.html">Offers</a></li>
                                                            <li><a href="listing-grid-7-sidebar-right.html">Shoes</a></li>
                                                            <li><a href="listing-row-1-sidebar-left.html">Clothing</a></li>
                                                            <li><a href="listing-row-3-sidebar-left.html">Accessories</a></li>
                                                            <li><a href="listing-row-4-sidebar-extended.html">Equipment</a></li>
                                                        </ul>
                                                    </li>
                                                    <li><span><a href="#">Women</a></span>
                                                        <ul>
                                                            <li><a href="listing-grid-1-full.html">Best Sellers</a></li>
                                                            <li><a href="listing-grid-2-full.html">Clothing</a></li>
                                                            <li><a href="listing-grid-3.html">Accessories</a></li>
                                                            <li><a href="listing-grid-4-sidebar-left.html">Shoes</a></li>
                                                        </ul>
                                                    </li>
                                                    <li><span><a href="#">Boys</a></span>
                                                        <ul>
                                                            <li><a href="listing-grid-6-sidebar-left.html">Easy On Shoes</a></li>
                                                            <li><a href="listing-grid-7-sidebar-right.html">Clothing</a></li>
                                                            <li><a href="listing-row-3-sidebar-left.html">Must Have</a></li>
                                                            <li><a href="listing-row-4-sidebar-extended.html">All Boys</a></li>
                                                        </ul>
                                                    </li>
                                                    <li><span><a href="#">Girls</a></span>
                                                        <ul>
                                                            <li><a href="listing-grid-1-full.html">New Releases</a></li>
                                                            <li><a href="listing-grid-2-full.html">Clothing</a></li>
                                                            <li><a href="listing-grid-3.html">Sale</a></li>
                                                            <li><a href="listing-grid-4-sidebar-left.html">Best Sellers</a></li>
                                                        </ul>
                                                    </li>
                                                    <li><span><a href="#">Customize</a></span>
                                                        <ul>
                                                            <li><a href="listing-row-1-sidebar-left.html">For Men</a></li>
                                                            <li><a href="listing-row-2-sidebar-right.html">For Women</a></li>
                                                            <li><a href="listing-row-4-sidebar-extended.html">For Boys</a></li>
                                                            <li><a href="listing-grid-1-full.html">For Girls</a></li>
                                                        </ul>
                                                    </li>
                                                </ul>
                                            </div>
                                        </li>
                                    </ul>
                                </nav>
                            </div>

                            <!--Search blog-->
                            <div class="col-xl-6 col-lg-7 col-md-6 d-none d-md-block">
                                <div class="custom-search-input">
                                    <input type="text" placeholder="Search over 10.000 products">
                                    <button type="submit"><i class="header-icon_search_custom"></i></button>
                                </div>
                            </div>
                            <div class="col-xl-3 col-lg-2 col-md-3">
                                <ul class="top_tools">
                                    <li>
                                        <div class="dropdown dropdown-cart">
                                            <a href="cart.html" class="cart_bt"><strong>2</strong></a>
                                            <div class="dropdown-menu">
                                                <ul>
                                                    <li>
                                                        <a href="product-detail-1.html">
                                                            <figure><img src="img/products/product_placeholder_square_small.jpg" data-src="img/products/shoes/thumb/1.jpg" alt="" width="50" height="50" class="lazy"></figure>
                                                            <strong><span>1x Armor Air x Fear</span>$90.00</strong>
                                                        </a>
                                                        <a href="#0" class="action"><i class="ti-trash"></i></a>
                                                    </li>
                                                    <li>
                                                        <a href="product-detail-1.html">
                                                            <figure><img src="img/products/product_placeholder_square_small.jpg" data-src="img/products/shoes/thumb/2.jpg" alt="" width="50" height="50" class="lazy"></figure>
                                                            <strong><span>1x Armor Okwahn II</span>$110.00</strong>
                                                        </a>
                                                        <a href="0" class="action"><i class="ti-trash"></i></a>
                                                    </li>
                                                </ul>
                                                <div class="total_drop">
                                                    <div class="clearfix"><strong>Total</strong><span>$200.00</span></div>
                                                    <a href="cart.html" class="btn_1 outline">View Cart</a><a href="checkout.html" class="btn_1">Checkout</a>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- /dropdown-cart-->
                                    </li>

                                    <li>
                                        <div class="dropdown dropdown-access">
                                            <a href="#" class="access_link"><span>Account</span></a>

                                            <!--still not login-->
                                            <c:if test="${sessionScope.account==null}">
                                                <div class="dropdown-menu">
                                                    <a href="#sign-in-dialog" id="sign-in" class="btn_1">Sign In</a>
                                                    <ul>
                                                        <li></li>
                                                    </ul>
                                                    <!--<a onclick="openSecondPopup()" id="sign-up" class="btn_1">Sign Up</a>-->
                                                    <button style="width: 230px" type="button" class="btn btn_1" data-toggle="modal" data-target="#signUp" >
                                                        Sign Up
                                                    </button>
                                                </div>
                                            </c:if>
                                            <!--end still not login-->
                                            <!--user-->
                                            <c:if test="${sessionScope.account.getRole_id() == 1}">
                                                <div class="dropdown-menu">
                                                    <button style="width: 230px" type="button" class="btn btn_1" data-toggle="modal" data-target="#changePassword" >
                                                        Change Password
                                                    </button>
                                                    <ul>
                                                        <li>
                                                            <a href="#"><i class="ti-package"></i>My Orders</a>
                                                        </li>
                                                        <li>
                                                            <a href="logout"><i class="ti-help-alt"></i>Log Out</a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </c:if>
                                            <!--end user-->
                                            <!--marketing-->
                                            <c:if test="${sessionScope.account.getRole_id() == 2}">
                                                <div class="dropdown-menu">
                                                    <a href="changepassword" class="btn_1">Change Password</a>
                                                    <ul>
                                                        <li>
                                                            <a href="#"><i class="ti-package"></i>MKT Dashboard</a>
                                                        </li>
                                                        <li>
                                                            <a href="logout"><i class="ti-help-alt"></i>Log Out</a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </c:if>
                                            <!--end marketing-->
                                            <!--Sale-->
                                            <c:if test="${sessionScope.account.getRole_id() == 3}">
                                                <div class="dropdown-menu">
                                                    <a href="changepassword" class="btn_1">Change Password</a>
                                                    <ul>
                                                        <li>
                                                            <a href="#"><i class="ti-package"></i>Sale Dashboard</a>
                                                        </li>
                                                        <li>
                                                            <a href="logout"><i class="ti-help-alt"></i>Log Out</a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </c:if>
                                            <!--end sale-->
                                            <!--Sale manager-->
                                            <c:if test="${sessionScope.account.getRole_id() == 4}">
                                                <div class="dropdown-menu">
                                                    <a href="changepassword" class="btn_1">Change Password</a>
                                                    <ul>
                                                        <li>
                                                            <a href="#"><i class="ti-package"></i>Sale Manager Dashboard</a>
                                                        </li>
                                                        <li>
                                                            <a href="logout"><i class="ti-help-alt"></i>Log Out</a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </c:if>
                                            <!--end sale manager-->
                                            <!--Admin-->
                                            <c:if test="${sessionScope.account.getRole_id() == 5}">
                                                <div class="dropdown-menu">
                                                    <a href="changepassword" class="btn_1">Change Password</a>
                                                    <ul>
                                                        <li>
                                                            <a href="#"><i class="ti-package"></i>Admin Dashboard</a>
                                                        </li>
                                                        <li>
                                                            <a href="logout"><i class="ti-help-alt"></i>Log Out</a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </c:if>
                                            <!--end admin-->

                                        </div>
                                        <!-- /dropdown-access-->
                                    </li>
                                    <li>
                                        <!-- <a href="#0" class="wishlist"><span>Wishlist</span></a> -->
                                    </li>
                                    <li>
                                        <a href="javascript:void(0);" class="btn_search_mob"><span>Search</span></a>
                                    </li>
                                    <li>
                                        <a href="#menu" class="btn_cat_mob">
                                            <div class="hamburger hamburger--spin" id="hamburger">
                                                <div class="hamburger-box">
                                                    <div class="hamburger-inner"></div>
                                                </div>
                                            </div>
                                            Categories
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <!-- /row -->
                    </div>
                    <div class="search_mob_wp">
                        <input type="text" class="form-control" placeholder="Search over 10.000 products">
                        <input type="submit" class="btn_1 full-width" value="Search">
                    </div>
                    <!-- /search_mobile -->
                </div>
                <!-- /main_nav -->
            </header>


            <!-- /header -->

            <main>
                <div id="carousel-home">
                    <div class="owl-carousel owl-theme">
                        <div class="owl-slide cover" style="background-image: url(img/slides/slide_home_2.jpg);">
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
                    <div id="icon_drag_mobile"></div>
                </div>
                <!--/carousel-->

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
                <!--/banners_grid -->

                <div class="container margin_60_35">
                    <div class="main_title">
                        <h2>Top Selling</h2>
                        <span>Products</span>
                        <p>Cum doctus civibus efficiantur in imperdiet deterruisset</p>
                    </div>
                    <div class="row small-gutters">
                        <div class="col-6 col-md-4 col-xl-3">
                            <div class="grid_item">
                                <figure>
                                    <span class="ribbon off">-30%</span>
                                    <a href="product-detail-1.html">
                                        <img class="img-fluid lazy" src="img/products/product_placeholder_square_medium.jpg" data-src="img/products/shoes/1.jpg" alt="">
                                        <img class="img-fluid lazy" src="img/products/product_placeholder_square_medium.jpg" data-src="img/products/shoes/1_b.jpg" alt="">
                                    </a>
                                    <div data-countdown="2019/05/15" class="countdown"></div>
                                </figure>
                                <div class="rating"><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star"></i></div>
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
                        <div class="col-6 col-md-4 col-xl-3">
                            <div class="grid_item">
                                <span class="ribbon off">-30%</span>
                                <figure>
                                    <a href="product-detail-1.html">
                                        <img class="img-fluid lazy" src="img/products/product_placeholder_square_medium.jpg" data-src="img/products/shoes/2.jpg" alt="">
                                        <img class="img-fluid lazy" src="img/products/product_placeholder_square_medium.jpg" data-src="img/products/shoes/2_b.jpg" alt="">
                                    </a>
                                    <div data-countdown="2019/05/10" class="countdown"></div>
                                </figure>
                                <div class="rating"><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star"></i></div>
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
                        <div class="col-6 col-md-4 col-xl-3">
                            <div class="grid_item">
                                <span class="ribbon off">-50%</span>
                                <figure>
                                    <a href="product-detail-1.html">
                                        <img class="img-fluid lazy" src="img/products/product_placeholder_square_medium.jpg" data-src="img/products/shoes/3.jpg" alt="">
                                        <img class="img-fluid lazy" src="img/products/product_placeholder_square_medium.jpg" data-src="img/products/shoes/3_b.jpg" alt="">
                                    </a>
                                    <div data-countdown="2019/05/21" class="countdown"></div>
                                </figure>
                                <div class="rating"><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star"></i></div>
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
                        <div class="col-6 col-md-4 col-xl-3">
                            <div class="grid_item">
                                <span class="ribbon new">New</span>
                                <figure>
                                    <a href="product-detail-1.html">
                                        <img class="img-fluid lazy" src="img/products/product_placeholder_square_medium.jpg" data-src="img/products/shoes/4.jpg" alt="">
                                        <img class="img-fluid lazy" src="img/products/product_placeholder_square_medium.jpg" data-src="img/products/shoes/4_b.jpg" alt="">
                                    </a>
                                </figure>
                                <div class="rating"><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star"></i></div>
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
                        <div class="col-6 col-md-4 col-xl-3">
                            <div class="grid_item">
                                <span class="ribbon new">New</span>
                                <figure>
                                    <a href="product-detail-1.html">
                                        <img class="img-fluid lazy" src="img/products/product_placeholder_square_medium.jpg" data-src="img/products/shoes/5.jpg" alt="">
                                        <img class="img-fluid lazy" src="img/products/product_placeholder_square_medium.jpg" data-src="img/products/shoes/5_b.jpg" alt="">
                                    </a>
                                </figure>
                                <div class="rating"><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star"></i></div>
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
                        <div class="col-6 col-md-4 col-xl-3">
                            <div class="grid_item">
                                <span class="ribbon new">New</span>
                                <figure>
                                    <a href="product-detail-1.html">
                                        <img class="img-fluid lazy" src="img/products/product_placeholder_square_medium.jpg" data-src="img/products/shoes/6.jpg" alt="">
                                        <img class="img-fluid lazy" src="img/products/product_placeholder_square_medium.jpg" data-src="img/products/shoes/6_b.jpg" alt="">
                                    </a>
                                </figure>
                                <div class="rating"><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star"></i></div>
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
                        <div class="col-6 col-md-4 col-xl-3">
                            <div class="grid_item">
                                <span class="ribbon hot">Hot</span>
                                <figure>
                                    <a href="product-detail-1.html">
                                        <img class="img-fluid lazy" src="img/products/product_placeholder_square_medium.jpg" data-src="img/products/shoes/7.jpg" alt="">
                                        <img class="img-fluid lazy" src="img/products/product_placeholder_square_medium.jpg" data-src="img/products/shoes/7_b.jpg" alt="">
                                    </a>
                                </figure>
                                <div class="rating"><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star"></i></div>
                                <a href="product-detail-1.html">
                                    <h3>Armor Air Max 98</h3>
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
                        <div class="col-6 col-md-4 col-xl-3">
                            <div class="grid_item">
                                <span class="ribbon hot">Hot</span>
                                <figure>
                                    <a href="product-detail-1.html">
                                        <img class="img-fluid lazy" src="img/products/product_placeholder_square_medium.jpg" data-src="img/products/shoes/8.jpg" alt="">
                                        <img class="img-fluid lazy" src="img/products/product_placeholder_square_medium.jpg" data-src="img/products/shoes/8_b.jpg" alt="">
                                    </a>
                                </figure>
                                <div class="rating"><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star"></i></div>
                                <a href="product-detail-1.html">
                                    <h3>Armor Air Max 720</h3>
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
                    </div>
                    <!-- /row -->
                </div>
                <!-- /container -->

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
                        <p>Cum doctus civibus efficiantur in imperdiet deterruisset</p>
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

                <div class="bg_gray">
                    <div class="container margin_30">
                        <div id="brands" class="owl-carousel owl-theme">
                            <div class="item">
                                <a href="#0"><img src="img/brands/placeholder_brands.png" data-src="img/brands/logo_1.png" alt="" class="owl-lazy"></a>
                            </div><!-- /item -->
                            <div class="item">
                                <a href="#0"><img src="img/brands/placeholder_brands.png" data-src="img/brands/logo_2.png" alt="" class="owl-lazy"></a>
                            </div><!-- /item -->
                            <div class="item">
                                <a href="#0"><img src="img/brands/placeholder_brands.png" data-src="img/brands/logo_3.png" alt="" class="owl-lazy"></a>
                            </div><!-- /item -->
                            <div class="item">
                                <a href="#0"><img src="img/brands/placeholder_brands.png" data-src="img/brands/logo_4.png" alt="" class="owl-lazy"></a>
                            </div><!-- /item -->
                            <div class="item">
                                <a href="#0"><img src="img/brands/placeholder_brands.png" data-src="img/brands/logo_5.png" alt="" class="owl-lazy"></a>
                            </div><!-- /item -->
                            <div class="item">
                                <a href="#0"><img src="img/brands/placeholder_brands.png" data-src="img/brands/logo_6.png" alt="" class="owl-lazy"></a>
                            </div><!-- /item --> 
                        </div><!-- /carousel -->
                    </div><!-- /container -->
                </div>
                <!-- /bg_gray -->

                <div class="container margin_60_35">
                    <div class="main_title">
                        <h2>Latest News</h2>
                        <span>Blog</span>
                        <p>Cum doctus civibus efficiantur in imperdiet deterruisset</p>
                    </div>
                    <div class="row">
                        <div class="col-lg-6">
                            <a class="box_news" href="blog.html">
                                <figure>
                                    <img src="img/blog-thumb-placeholder.jpg" data-src="img/blog-thumb-1.jpg" alt="" width="400" height="266" class="lazy">
                                    <figcaption><strong>28</strong>Dec</figcaption>
                                </figure>
                                <ul>
                                    <li>by Mark Twain</li>
                                    <li>20.11.2017</li>
                                </ul>
                                <h4>Pri oportere scribentur eu</h4>
                                <p>Cu eum alia elit, usu in eius appareat, deleniti sapientem honestatis eos ex. In ius esse ullum vidisse....</p>
                            </a>
                        </div>
                        <!-- /box_news -->
                        <div class="col-lg-6">
                            <a class="box_news" href="blog.html">
                                <figure>
                                    <img src="img/blog-thumb-placeholder.jpg" data-src="img/blog-thumb-2.jpg" alt="" width="400" height="266" class="lazy">
                                    <figcaption><strong>28</strong>Dec</figcaption>
                                </figure>
                                <ul>
                                    <li>By Jhon Doe</li>
                                    <li>20.11.2017</li>
                                </ul>
                                <h4>Duo eius postea suscipit ad</h4>
                                <p>Cu eum alia elit, usu in eius appareat, deleniti sapientem honestatis eos ex. In ius esse ullum vidisse....</p>
                            </a>
                        </div>
                        <!-- /box_news -->
                        <div class="col-lg-6">
                            <a class="box_news" href="blog.html">
                                <figure>
                                    <img src="img/blog-thumb-placeholder.jpg" data-src="img/blog-thumb-3.jpg" alt="" width="400" height="266" class="lazy">
                                    <figcaption><strong>28</strong>Dec</figcaption>
                                </figure>
                                <ul>
                                    <li>By Luca Robinson</li>
                                    <li>20.11.2017</li>
                                </ul>
                                <h4>Elitr mandamus cu has</h4>
                                <p>Cu eum alia elit, usu in eius appareat, deleniti sapientem honestatis eos ex. In ius esse ullum vidisse....</p>
                            </a>
                        </div>
                        <!-- /box_news -->
                        <div class="col-lg-6">
                            <a class="box_news" href="blog.html">
                                <figure>
                                    <img src="img/blog-thumb-placeholder.jpg" data-src="img/blog-thumb-4.jpg" alt="" width="400" height="266" class="lazy">
                                    <figcaption><strong>28</strong>Dec</figcaption>
                                </figure>
                                <ul>
                                    <li>By Paula Rodrigez</li>
                                    <li>20.11.2017</li>
                                </ul>
                                <h4>Id est adhuc ignota delenit</h4>
                                <p>Cu eum alia elit, usu in eius appareat, deleniti sapientem honestatis eos ex. In ius esse ullum vidisse....</p>
                            </a>
                        </div>
                        <!-- /box_news -->
                    </div>
                    <!-- /row -->
                </div>
                <!-- /container -->
            </main>
            <!-- /main -->

            <footer class="revealed">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-3 col-md-6">
                            <h3 data-bs-target="#collapse_1">Quick Links</h3>
                            <div class="collapse dont-collapse-sm links" id="collapse_1">
                                <ul>
                                    <li><a href="about.html">About us</a></li>
                                    <li><a href="help.html">Faq</a></li>
                                    <li><a href="help.html">Help</a></li>
                                    <li><a href="account.html">My account</a></li>
                                    <li><a href="blog.html">Blog</a></li>
                                    <li><a href="contacts.html">Contacts</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6">
                            <h3 data-bs-target="#collapse_2">Categories</h3>
                            <div class="collapse dont-collapse-sm links" id="collapse_2">
                                <ul>
                                    <li><a href="listing-grid-1-full.html">Clothes</a></li>
                                    <li><a href="listing-grid-2-full.html">Electronics</a></li>
                                    <li><a href="listing-grid-1-full.html">Furniture</a></li>
                                    <li><a href="listing-grid-3.html">Glasses</a></li>
                                    <li><a href="listing-grid-1-full.html">Shoes</a></li>
                                    <li><a href="listing-grid-1-full.html">Watches</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6">
                            <h3 data-bs-target="#collapse_3">Contacts</h3>
                            <div class="collapse dont-collapse-sm contacts" id="collapse_3">
                                <ul>
                                    <li><i class="ti-home"></i>97845 Baker st. 567<br>Los Angeles - US</li>
                                    <li><i class="ti-headphone-alt"></i>+94 423-23-221</li>
                                    <li><i class="ti-email"></i><a href="#0">info@allaia.com</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6">
                            <h3 data-bs-target="#collapse_4">Keep in touch</h3>
                            <div class="collapse dont-collapse-sm" id="collapse_4">
                                <div id="newsletter">
                                    <div class="form-group">
                                        <input type="email" name="email_newsletter" id="email_newsletter" class="form-control" placeholder="Your email">
                                        <button type="submit" id="submit-newsletter"><i class="ti-angle-double-right"></i></button>
                                    </div>
                                </div>
                                <div class="follow_us">
                                    <h5>Follow Us</h5>
                                    <ul>
                                        <li><a href="#0"><i class="bi bi-facebook"></i></a></li>
                                        <li><a href="#0"><i class="bi bi-twitter-x"></i></a></li>
                                        <li><a href="#0"><i class="bi bi-instagram"></i></a></li>
                                        <li><a href="#0"><i class="bi bi-tiktok"></i></a></li>
                                        <li><a href="#0"><i class="bi bi-whatsapp"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /row-->
                    <hr>
                    <div class="row add_bottom_25">
                        <div class="col-lg-6">
                            <ul class="footer-selector clearfix">
                                <li>
                                    <div class="styled-select lang-selector">
                                        <select>
                                            <option value="English" selected>English</option>
                                            <option value="French">French</option>
                                            <option value="Spanish">Spanish</option>
                                            <option value="Russian">Russian</option>
                                        </select>
                                    </div>
                                </li>
                                <li>
                                    <div class="styled-select currency-selector">
                                        <select>
                                            <option value="US Dollars" selected>US Dollars</option>
                                            <option value="Euro">Euro</option>
                                        </select>
                                    </div>
                                </li>
                                <li><img src="data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw==" data-src="img/cards_all.svg" alt="" width="198" height="30" class="lazy"></li>
                            </ul>
                        </div>
                        <div class="col-lg-6">
                            <ul class="additional_links">
                                <li><a href="#0">Terms and conditions</a></li>
                                <li><a href="#0">Privacy</a></li>
                                <li><span>© 2024 Allaia</span></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </footer>
            <!--/footer-->
        </div>
        <!-- page -->

        <div id="toTop"></div><!-- Back to top button -->


        <!-- Sign In Modal -->
        <div id="sign-in-dialog" class="zoom-anim-dialog mfp-hide">
            <div class="modal_header">
                <h3>Sign In</h3>
            </div>
            <form action="login" method="post">
                <div class="sign-in-wrapper">
                    <!--                    <a href="#0" class="social_bt facebook">Login with Facebook</a>
                                        <a href="#0" class="social_bt google">Login with Google</a>
                                        <div class="divider"><span>Or</span></div>-->
                    <div class="form-group">
                        <label>Email</label>
                        <input type="email" class="form-control" name="email" id="email">
                        <i class="ti-email"></i>
                    </div>
                    <div class="form-group">
                        <label>Password</label>
                        <input type="password" class="form-control" name="password" id="password" value="">
                        <i class="ti-lock"></i>
                    </div>
                    <div class="clearfix add_bottom_15">
                        <div class="checkboxes float-start">
                            <label class="container_check">Remember me
                                <input type="checkbox">
                                <span class="checkmark"></span>
                            </label>
                        </div>
                        <div class="float-end mt-1"><a id="forgot" href="javascript:void(0);">Forgot Password?</a></div>
                    </div>
                    <div class="text-center">
                        <input type="submit" value="Log In" class="btn_1 full-width">
                        <h5 class="text-center" style="color: red">${requestScope.error}</h5>
                        Don’t have an account?
                        <a style="width: 150px; color: blue" data-toggle="modal" data-target="#signUp" >
                            Sign Up
                        </a>
                    </div>
                    <div id="forgot_pw">
                        <div class="form-group">
                            <label>Please confirm login email below</label>
                            <input type="email" class="form-control" name="email_forgot" id="email_forgot">
                            <i class="ti-email"></i>
                        </div>
                        <p>You will receive an email containing a link allowing you to reset your password to a new preferred one.</p>
                        <div class="text-center"><input type="submit" value="Reset Password" class="btn_1"></div>
                    </div>
                </div>
            </form>
            <!--form -->
        </div>
        <!-- /Sign In Modal -->

        <!-- Sign Up Modal -->
        <div class="modal fade" id="signUp" tabindex="-1" role="dialog" aria-labelledby="signUpModalLabel" aria-hidden="true">
            <div style="margin-top: 100px" class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="signUpModalLabel">Sign Up</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <form action="otp" method="post">
                        <div class="modal-body">
                            <div class="form-group">
                                <label for="email">Email</label>
                                <input type="email" class="form-control" name="email" id="email" required>
                            </div>
                            <div class="form-group">
                                <label for="password">Password</label>
                                <input type="password" class="form-control" name="password" id="password" required>
                            </div>
                            <div class="form-group">
                                <label>Gender</label><br>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" name="gender" id="male" value="true" required>
                                    <label class="form-check-label" for="male">Male</label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" name="gender" id="female" value="false">
                                    <label class="form-check-label" for="female">Female</label>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="firstName">First Name</label>
                                <input type="text" class="form-control" name="first_name" id="firstName" required>
                            </div>
                            <div class="form-group">
                                <label for="lastName">Last Name</label>
                                <input type="text" class="form-control" name="last_name" id="lastName" required>
                            </div>
                            <div class="form-group">
                                <label for="addressLine">Address Line</label>
                                <input type="text" class="form-control" name="address_line" id="addressLine" required>
                            </div>
                            <div class="form-group">
                                <label for="city">City</label>
                                <input type="text" class="form-control" name="city" id="city" required>
                            </div>
                            <div class="form-group">
                                <label for="country">Country</label>
                                <input type="text" class="form-control" name="country" id="country" required>
                            </div>
                            <div class="form-group">
                                <label for="telephone">Telephone</label>
                                <input type="tel" class="form-control" name="telephone" id="telephone" required>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <input type="submit" value="Sign Up" class="btn_1 full-width">
                        </div>
                        <h5 class="text-center" style="color: red">${requestScope.error}</h5>
                    </form>
                </div>
            </div>
        </div>
        <!--/Sign Up Modal -->

        <!-- Change Password Modal -->

        <div class="modal fade" id="changePassword" tabindex="-1" role="dialog" aria-labelledby="changePasswordModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="changePasswordModalLabel">Change Password</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <form action="changepassword" method="post">
                        <div class="modal-body">
                            <div class="form-group">
                                <label for="currentPassword">Current Password</label>
                                <input type="password" class="form-control" name="currentPassword" id="currentPassword" required>
                            </div>
                            <div class="form-group">
                                <label for="newPassword">New Password</label>
                                <input type="password" class="form-control" name="newPassword" id="newPassword" required>
                            </div>
                            <div class="form-group">
                                <label for="confirmNewPassword">Confirm New Password</label>
                                <input type="password" class="form-control" name="confirmNewPassword" id="confirmNewPassword" required>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <input type="submit" value="Change Password" class="btn_1 full-width">
                        </div>
                        <h5 class="text-center" style="color: red">${requestScope.error}</h5>
                    </form>
                </div>
            </div>
        </div>

        <!-- /Change Password Modal -->

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