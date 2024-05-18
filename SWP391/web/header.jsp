<%-- 
    Document   : header.jsp
    Created on : May 15, 2024, 5:42:26 PM
    Author     : Nhat Anh
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                            <li>
                                <a href="product?service=view">Home</a> 
                            </li>
                            <li>
                                <a href="product?service=view">Shop</a> 
                            </li>                           
                            <li>
                                <a href="#0">Blog</a>
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
                <!-- categories -->
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
                                        <li><span><a href="#">Men</a></span>
                                        </li>
                                        <li><span><a href="#">Woman</a></span>
                                        </li>
                                        <li><span><a href="#">Boy</a></span>
                                        </li>
                                        <li><span><a href="#">Girl</a></span>
                                        </li>
                                        <li><span><a href="#">Unisex</a></span>
                                        </li>
                                        <c:forEach var="element" items="${categories}">
                                            <li><span><a href="#">${element.name}</a></span>
                                            </li>
                                        </c:forEach>
                                    </ul>
                                </div>
                            </li>
                        </ul>
                    </nav>
                </div>

                <!--Search blog-->
                <div class="col-xl-6 col-lg-7 col-md-6 d-none d-md-block">
                    <form action="product" method="post"> 
                        <div class="custom-search-input">
                            <input type="text" name="name" placeholder="Search over 10.000 products">
                            <input type="hidden" name="service" value="searchName">
                            <button type="submit"><i class="header-icon_search_custom"></i></button>
                        </div>
                    </form>
                </div>
                <div class="col-xl-3 col-lg-2 col-md-3">
                    <ul class="top_tools">
                        <li>
                            <div class="dropdown dropdown-cart"href="cart.html" >
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

