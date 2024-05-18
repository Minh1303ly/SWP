<%-- 
    Document   : modal_account
    Created on : May 18, 2024, 9:42:30 PM
    Author     : Nhat Anh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
