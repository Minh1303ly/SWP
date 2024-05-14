<%-- 
    Document   : signup
    Created on : May 14, 2024, 11:10:28 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <link href="css/account.css" rel="stylesheet">

        <!-- YOUR CUSTOM CSS -->
        <link href="css/custom.css" rel="stylesheet">

    </head>

    <body>
        <div class="col-xl-6 col-lg-6 col-md-8">
            <div class="box_account">
                <<form action="signup" method="post">
                    <h3 class="new_client">New Client</h3> <small class="float-right pt-2">* Required Fields</small>
                    <div class="form_container">
                        <div class="form-group">
                            <input type="email" class="form-control" name="email" id="email_2" placeholder="Email*">
                        </div>
                        <div class="form-group">
                            <input type="password" class="form-control" name="password_in_2" id="password_in_2" value="" placeholder="Password*">
                        </div>
                        <hr>
                        <div class="form-group">
                            <label class="container_radio" style="display: inline-block; margin-right: 15px;">Male
                                <input type="radio" name="gender" checked value="private">
                                <span class="checkmark"></span>
                            </label>
                            <label class="container_radio" style="display: inline-block;">FeMale
                                <input type="radio" name="gender" value="company">
                                <span class="checkmark"></span>
                            </label>
                        </div>
                        <div class="private box">
                            <div class="row no-gutters">
                                <div class="col-6 pr-1">
                                    <div class="form-group">
                                        <input type="text" class="form-control" placeholder="Name*">
                                    </div>
                                </div>
                                <div class="col-6 pl-1">
                                    <div class="form-group">
                                        <input type="text" class="form-control" placeholder="Last Name*">
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-group">
                                        <input type="text" class="form-control" placeholder="Address Line*">
                                    </div>
                                </div>
                            </div>
                            <!-- /row -->
                            <div class="row no-gutters">
                                <div class="col-6 pr-1">
                                    <div class="form-group">
                                        <input type="text" class="form-control" placeholder="City*">
                                    </div>
                                </div>
                                <div class="col-6 pl-1">
                                    <div class="form-group">
                                        <input type="text" class="form-control" placeholder="Country**">
                                    </div>
                                </div>
                            </div>
                            <!-- /row -->

                            <div class="row no-gutters">
                                <!--                            <div class="col-6 pr-1">
                                                                <div class="form-group">
                                                                    <div class="custom-select-form">
                                                                        <select class="wide add_bottom_10" name="country" id="country">
                                                                            <option value="" selected>Country*</option>
                                                                            <option value="Europe">Europe</option>
                                                                            <option value="United states">United states</option>
                                                                            <option value="Asia">Asia</option>
                                                                        </select>
                                                                    </div>
                                                                </div>
                                                            </div>-->
                                <div class="col-6 pl-1">
                                    <div class="form-group">
                                        <input type="text" class="form-control" placeholder="Telephone *">
                                    </div>
                                </div>
                            </div>
                            <!-- /row -->
                            <div class="text-center"><input type="submit" value="Register" class="btn_1 full-width"></div>
                        </div>
                    </div>
                </form>
            </div>
        </div>


        <!-- COMMON SCRIPTS -->
        <script src="js/common_scripts.min.js"></script>
        <script src="js/main.js"></script>

        <script>
            // Client type Panel
            $('input[name="client_type"]').on("click", function () {
                var inputValue = $(this).attr("value");
                var targetBox = $("." + inputValue);
                $(".box").not(targetBox).hide();
                $(targetBox).show();
            });
        </script>

    </body>

</html>
