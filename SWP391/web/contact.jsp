<%-- 
    Document   : product_list
    Created on : Jun 4, 2024, 2:49:59 PM
    Author     : Nhat Anh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page import="java.util.*, model.*,util.*" %>
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
        <link href="css/listing.css" rel="stylesheet">
        <link href="css/cart.css" rel="stylesheet">

        <!-- YOUR CUSTOM CSS -->
        <link href="css/custom.css" rel="stylesheet">

        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <!-- Include SweetAlert CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.min.css">
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <link rel="stylesheet" href="css/minh.css">
    </head>

    <body>

        <div id="page" class="theia-exception">

            <jsp:include page="header.jsp"/>

            <main>
                <div class="container margin_30">
                    <div class="row">
                        <aside class="col-lg-3" id="sidebar_fixed">
                            <jsp:include page="sider.jsp"/>
                        </aside>
                        <!-- /col -->
                        <div class="col-lg-9">                         
                            <!-- /top_banner -->
                            <div id="stick_here"></div>
                            <div class="toolbox elemento_stick add_bottom_30">
                                <div class="container">
                                </div>
                            </div>
                            <div class="container margin_30">
                                <div class="page_header">
                                    <div class="breadcrumbs">
                                    </div>
                                    <h1>Contact page</h1>
                                </div>
                                <!-- /page_header -->
                                <table class="table table-bordered">
                                    <thead>
                                        <tr>
                                            <th scope="col">ID</th>
                                            <th scope="col" class="wider-col">Title</th>
                                            <th scope="col">Color</th>
                                            <th scope="col">Size</th>
                                            <th scope="col">Price</th>
                                            <th scope="col" class="wider-col">Quantity</th>
                                            <th scope="col">Subtotal</th>
                                        </tr>
                                    </thead>
                                    <tbody id="container_cart">
                                        <tr>
                                            <th scope="row">2</th>
                                            <td class="wider-col">Data 2</td>
                                            <td>Data 3</td>
                                            <td>Data 4</td>
                                            <td>Data 5</td>
                                            <td class="wider-col">
                                                <div class="qty-input">
                                                    <button class="qty-count qty-count_minus"
                                                            data-action="minus" type="button"
                                                            onclick="update('minus', '1')">-</button>
                                                    <input class="product-qty" type="number"
                                                           id="quantity_1" min="1" value="1"
                                                           onchange="update('minus', '1')">
                                                    <button class="qty-count qty-count_add"
                                                            data-action="add" type="button"
                                                            onclick="update('add', '#quantity_1')">+</button>
                                                </div>
                                            </td>
                                            <td>Data 7</td>
                                        </tr>
                                        <!-- Add more rows as needed -->
                                    </tbody>
                                </table>

                                <div class="row add_top_30 flex-sm-row-reverse cart_actions">
                                    <div class="col-sm-4 text-end">
                                        <button type="button" class="btn_1 border border-secondary px-4 py-2 rounded-pill"
                                                onclick="reDirect('cart')">Change product</button>
                                    </div>
                                </div>
                            </div>

                            <div class="container mt-5">
                                <form action="contact" method="post">
                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label for="fullname">Fullname:</label>
                                            <input type="text" class="form-control" name="fullname" id="fullname"
                                                   pattern="[A-Za-z ]{3,}" title="Name just include A-Z, a-z and size greater 3!" required>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="email">Email:</label>
                                            <input type="email" class="form-control" id="email" name="email"
                                                   placeholder="Email" pattern="[a-z0-9._%+\-]+@[a-z0-9.\-]+\.[a-z]{2,}$" title="Please enter a valid email address!" required >
                                        </div>
                                    </div>
                                    <fieldset class="form-group">
                                        <div class="row">
                                            <label class="col-form-label col-sm-2 pt-0">Gender:</label>
                                            
                                                <div class="form-check col-2">
                                                    <input class="form-check-input" type="radio" name="gender" id="male" value="male" checked>
                                                    <label class="form-check-label" for="male">Male</label>
                                                </div>
                                                <div class="form-check col-2">
                                                    <input class="form-check-input" type="radio" name="gender" id="female" value="female">
                                                    <label class="form-check-label" for="female">Female</label>
                                                </div>
                                                <div class="form-check col-2">
                                                    <input class="form-check-input" type="radio" name="gender" id="other" value="other">
                                                    <label class="form-check-label" for="other">Other</label>
                                                </div>
                                            
                                        </div>
                                    </fieldset>
                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label for="phone">Phone:</label>
                                            <input type="tel" class="form-control" id="phone" name="phone"
                                                   placeholder="Phone" pattern="[0]{1}[0-9]{9,10}" title="Please enter a valid phone number!" required>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="addressDetail">Address detail(Optional):</label>
                                            <input type="text" class="form-control" id="addressDetail" name="addressDetail"
                                                   placeholder="Apartment, studio, or floor">
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-md-4">
                                            <label for="province">Province:</label>
                                            <select class="form-control" id="province" name="province">
                                            <option>Select province</option>
                                            </select>
                                        </div>
                                        <div class="form-group col-md-4">
                                            <label for="district">District:</label>
                                            <select class="form-control" id="district" name="district">
                                            <option>Select district</option>
                                            </select>
                                        </div>
                                        <div class="form-group col-md-4">
                                            <label for="commune">Commune</label>
                                            <select class="form-control" id="commune" name="commune">
                                            <option>Select commune</option>
                                            </select>
                                        </div>
                                        
                                    </div>
                                    <div class="form-group">
                                        <label for="note1">Note:</label>
                                        <textarea class="form-control" id="note1" name="note" rows="3"></textarea>
                                    </div>
                                    <div class="row add_top_30 flex-sm-row-reverse cart_actions">
                                    <div class="col-sm-4 text-end">
                                        <button type="submit" class="btn_1 border border-secondary px-4 py-3 rounded-pill"
                                                >Direct to pay</button>
                                    </div>
                                </div>
                                </form>
                            </div> 
                            
                        </div>
                        <!-- /col -->
                    </div>
                    <!-- /row -->
                </div>
                <!-- /container -->
            </main>
            <!-- /main -->

            <jsp:include page="footer.jsp"/>
        </div>
        <!-- page -->

        <div id="toTop"></div><!-- Back to top button -->
        <jsp:include page="modal.jsp"/>
        <script>
            $(document).ready(function() {
        //Take province
        $.getJSON('https://esgoo.net/api-tinhthanh/1/0.htm',function(data_tinh){	       
            if(data_tinh.error==0){
               $.each(data_tinh.data, function (key_tinh,val_tinh) {
                  $("#province").append('<option value="'+val_tinh.id+'">'+val_tinh.full_name+'</option>');
               });
               $("#province").change(function(e){
                    var idtinh=$(this).val();
                    //Take district
                    $.getJSON('https://esgoo.net/api-tinhthanh/2/'+idtinh+'.htm',function(data_quan){	       
                        if(data_quan.error===0){
                           $("#district").html('<option value="0">District</option>');  
                           $("#commune").html('<option value="0">Commune</option>');   
                           $.each(data_quan.data, function (key_quan,val_quan) {
                              $("#district").append('<option value="'+val_quan.id+'">'+val_quan.full_name+'</option>');
                           });
                           //Take commune 
                           $("#district").change(function(e){
                                var idquan=$(this).val();
                                $.getJSON('https://esgoo.net/api-tinhthanh/3/'+idquan+'.htm',function(data_phuong){	       
                                    if(data_phuong.error===0){
                                       $("#commune").html('<option value="0">Commune</option>');   
                                       $.each(data_phuong.data, function (key_phuong,val_phuong) {
                                          $("#commune").append('<option value="'+val_phuong.id+'">'+val_phuong.full_name+'</option>');
                                       });
                                    }
                                });
                           });
                            
                        }
                    });
               });   
                
            }
        });
     });	    
        </script>
        <script src="js/minh_js.js"></script>   
</html>
