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
    </head>
    <body>
        <div class="otp-form">

            
            <!-- Email OTP Form -->
            <form class="email-otp">
                <h2>Email OTP</h2>
                <div class="email-otp-container">
                    <!-- Six input fields for OTP digits -->
                    <input type="text" class="email-otp-input" pattern="\d" maxlength="1">
                    <input type="text" class="email-otp-input" pattern="\d" maxlength="1" disabled>
                    <input type="text" class="email-otp-input" pattern="\d" maxlength="1" disabled>
                    <input type="text" class="email-otp-input" pattern="\d" maxlength="1" disabled>
                    <input type="text" class="email-otp-input" pattern="\d" maxlength="1" disabled>
                    <input type="text" class="email-otp-input" pattern="\d" maxlength="1" disabled>
                </div>

                <!-- Field to display entered OTP -->
                <!--<input type="text" id="emailverificationCode" placeholder="Enter verification code" readonly>-->

                <!-- Button to verify OTP -->
                <button type="button" id="verifyEmailOTP">VERIFY &amp; PROCEED</button>
            </form>
        </div>

        <script src="js/tu.js"></script>
    </body>
</html>
