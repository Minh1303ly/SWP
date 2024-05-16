<%-- 
    Document   : otp
    Created on : May 14, 2024, 4:07:06 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <link href="css/tu.css" rel="stylesheet">
        <link href="css/custom.css" rel="stylesheet">
<!--        <style>
            .button-link {
                display: inline-block;
                padding: 10px 20px;
                color: white;
                background-color: #007BFF;
                border-radius: 5px;
                text-align: center;
                text-decoration: none;
                transition: background-color 0.3s;
            }

            .button-link:hover {
                background-color: #0056b3;
            }
        </style>-->
    </head>
    <body>
        <div class="otp-form">


            <!-- Email  Form -->
            <form class="email-otp">
                <h2>Click Here To Verify In Email </h2>
                <div class="email-otp-container">
                    <!-- Six input fields for OTP digits -->
                    <!--                    <input type="text" name="code" class="email-otp-input" pattern="\d" maxlength="1">
                                        <input type="text" name="code" class="email-otp-input" pattern="\d" maxlength="1" disabled>
                                        <input type="text" name="code" class="email-otp-input" pattern="\d" maxlength="1" disabled>
                                        <input type="text" name="code" class="email-otp-input" pattern="\d" maxlength="1" disabled>
                                        <input type="text" name="code" class="email-otp-input" pattern="\d" maxlength="1" disabled>
                                        <input type="text" name="code" class="email-otp-input" pattern="\d" maxlength="1" disabled>-->

                    <a href="https://mail.google.com/mail/u/0/#inbox" class="button-link">Open Here</a>
                </div>

                <!-- Field to display entered OTP -->
                <!--<input type="text" id="emailverificationCode" placeholder="Enter verification code" readonly>-->

                <!-- Button to verify OTP -->
                <!--<button type="submit" id="verifyEmailOTP">VERIFY &amp; PROCEED</button>-->
            </form>
        </div>

        <script src="js/tu.js"></script>
    </body>
</html>
