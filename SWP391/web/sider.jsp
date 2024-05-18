<%-- 
    Document   : sider
    Created on : May 15, 2024, 6:28:37 PM
    Author     : Nhat Anh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
            <h4><a href="#filter_1" data-bs-toggle="collapse" class="opened">Categories</a></h4>
            <div class="collapse show" id="filter_1">
                <ul>
                    <li>
                        <label class="container_check">Men <small>12</small>
                            <input type="checkbox">
                            <span class="checkmark"></span>
                        </label>
                    </li>
                    <li>
                        <label class="container_check">Women <small>24</small>
                            <input type="checkbox">
                            <span class="checkmark"></span>
                        </label>
                    </li>
                    <li>
                        <label class="container_check">Running <small>23</small>
                            <input type="checkbox">
                            <span class="checkmark"></span>
                        </label>
                    </li>
                    <li>
                        <label class="container_check">Training <small>11</small>
                            <input type="checkbox">
                            <span class="checkmark"></span>
                        </label>
                    </li>
                </ul>
            </div>
            <!-- /filter_type -->
        </div>
        <!-- /filter_type -->
        <div class="filter_type version_2">
            <h4><a href="#filter_2" data-bs-toggle="collapse" class="opened">Color</a></h4>
            <div class="collapse show" id="filter_2">
                <ul>
                    <li>
                        <label class="container_check">Blue <small>06</small>
                            <input type="checkbox">
                            <span class="checkmark"></span>
                        </label>
                    </li>
                    <li>
                        <label class="container_check">Red <small>12</small>
                            <input type="checkbox">
                            <span class="checkmark"></span>
                        </label>
                    </li>
                    <li>
                        <label class="container_check">Orange <small>17</small>
                            <input type="checkbox">
                            <span class="checkmark"></span>
                        </label>
                    </li>
                    <li>
                        <label class="container_check">Black <small>43</small>
                            <input type="checkbox">
                            <span class="checkmark"></span>
                        </label>
                    </li>
                </ul>
            </div>
        </div>
        <!-- /filter_type -->
        <div class="filter_type version_2">
            <h4><a href="#filter_3" data-bs-toggle="collapse" class="closed">Brands</a></h4>
            <div class="collapse" id="filter_3">
                <ul>
                    <li>
                        <label class="container_check">Adidas <small>11</small>
                            <input type="checkbox">
                            <span class="checkmark"></span>
                        </label>
                    </li>
                    <li>
                        <label class="container_check">Nike <small>08</small>
                            <input type="checkbox">
                            <span class="checkmark"></span>
                        </label>
                    </li>
                    <li>
                        <label class="container_check">Vans <small>05</small>
                            <input type="checkbox">
                            <span class="checkmark"></span>
                        </label>
                    </li>
                    <li>
                        <label class="container_check">Puma <small>18</small>
                            <input type="checkbox">
                            <span class="checkmark"></span>
                        </label>
                    </li>
                </ul>
            </div>
        </div>
        <!-- /filter_type -->
        <div class="filter_type version_2">
            <h4><a href="#filter_4" data-bs-toggle="collapse" class="closed">Price</a></h4>
            <div class="collapse" id="filter_4">
                <ul>
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
        <div class="d-flex align-items-center justify-content-start">
            <div class="rounded me-4" style="width: 100px; height: 100px;">
                <img src="brands/logo_1.png" class="img-fluid rounded" alt="">
            </div>
            <div>
                <h6 class="mb-2">Big Banana</h6>
                <div class="rating">
                    <i class="icon-star voted"></i>
                    <i class="icon-star voted"></i>
                    <i class="icon-star voted"></i>
                    <i class="icon-star voted"></i>
                    <i class="icon-star"></i>
                </div>
                <div class="price_box">
                    <span class="new_price">$75.00</span>
                    <span class="old_price">$155.00</span>
                </div>
            </div>
        </div>
        <div class="d-flex align-items-center justify-content-start">
            <div class="rounded me-4" style="width: 100px; height: 100px;">
                <img src="brands/logo_1.png" class="img-fluid rounded" alt="">
            </div>
            <div>
                <h6 class="mb-2">Big Banana</h6>
                <div class="rating">
                    <i class="icon-star voted"></i>
                    <i class="icon-star voted"></i>
                    <i class="icon-star voted"></i>
                    <i class="icon-star voted"></i>
                    <i class="icon-star"></i>
                </div>
                <div class="price_box">
                    <span class="new_price">$75.00</span>
                    <span class="old_price">$155.00</span>
                </div>
            </div>
        </div>
        <div class="d-flex align-items-center justify-content-start">
            <div class="rounded me-4" style="width: 100px; height: 100px;">
                <img src="brands/logo_1.png" class="img-fluid rounded" alt="">
            </div>
            <div>
                <h6 class="mb-2">Big Banana</h6>
                <div class="rating">
                    <i class="icon-star voted"></i>
                    <i class="icon-star voted"></i>
                    <i class="icon-star voted"></i>
                    <i class="icon-star voted"></i>
                    <i class="icon-star"></i>
                </div>
                <div class="price_box">
                    <span class="new_price">$75.00</span>
                    <span class="old_price">$155.00</span>
                </div>
            </div>
        </div>
        <div class="d-flex justify-content-center my-4">
            <a href="#"
               class="btn border border-secondary px-4 py-3 rounded-pill text-primary w-100">Vew
                More</a>
        </div>
    </div>
</aside>
<!-- /col -->
