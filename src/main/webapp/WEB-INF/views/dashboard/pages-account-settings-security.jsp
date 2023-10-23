<%--
  Created by IntelliJ IDEA.
  User: pc
  Date: 17/10/2023
  Time: 07:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html
        lang="en"
        class="light-style layout-navbar-fixed layout-menu-fixed layout-compact"
        dir="ltr"
        data-theme="theme-default"
        data-assets-path="assets2/"
        data-template="vertical-menu-template-no-customizer">
<head>
    <meta charset="utf-8"/>
    <meta
            name="viewport"
            content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0"/>

    <title>Account settings - Security | Vuexy - Bootstrap Admin Template</title>

    <meta name="description" content=""/>

    <!-- Favicon -->
    <link rel="icon" type="image/x-icon" href="assets2/img/favicon/favicon.ico"/>

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com"/>
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin/>
    <link
            href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&ampdisplay=swap"
            rel="stylesheet"/>

    <!-- Icons -->
    <link rel="stylesheet" href="assets2/vendor/fonts/fontawesome.css"/>
    <link rel="stylesheet" href="assets2/vendor/fonts/tabler-icons.css"/>
    <link rel="stylesheet" href="assets2/vendor/fonts/flag-icons.css"/>

    <!-- Core CSS -->
    <link rel="stylesheet" href="assets2/vendor/css/rtl/core.css"/>
    <link rel="stylesheet" href="assets2/vendor/css/rtl/theme-default.css"/>
    <link rel="stylesheet" href="assets2/css/demo.css"/>

    <!-- Vendors CSS -->
    <link rel="stylesheet" href="assets2/vendor/libs/node-waves/node-waves.css"/>
    <link rel="stylesheet" href="assets2/vendor/libs/perfect-scrollbar/perfect-scrollbar.css"/>
    <link rel="stylesheet" href="assets2/vendor/libs/typeahead-js/typeahead.css"/>
    <link rel="stylesheet" href="assets2/vendor/libs/select2/select2.css"/>
    <link rel="stylesheet" href="assets2/vendor/libs/@form-validation/umd/styles/index.min.css"/>

    <!-- Page CSS -->
    <link rel="stylesheet" href="assets2/vendor/css/pages/page-account-settings.css"/>

    <!-- Helpers -->
    <script src="assets2/vendor/js/helpers.js"></script>
    <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
    <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
    <script src="assets2/js/config.js"></script>
</head>

<body>
            <%@include file="header.jsp"%>
            <!-- Content wrapper -->
            <div class="content-wrapper">
                <!-- Content -->

                <div class="container-xxl flex-grow-1 container-p-y">
                    <h4 class="py-3 mb-4"><span class="text-muted fw-light">Account Settings /</span> Security</h4>

                    <div class="row">
                        <div class="col-md-12">
                            <ul class="nav nav-pills flex-column flex-md-row mb-4">
                                <li class="nav-item">
                                    <a class="nav-link" href="account-settings"
                                    ><i class="ti-xs ti ti-users me-1"></i> Account</a
                                    >
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link active" href="javascript:void(0);"
                                    ><i class="ti-xs ti ti-lock me-1"></i> Security</a
                                    >
                                </li>
                            </ul>
                            <!-- Change Password -->
                            <div class="card mb-4">
                                <h5 class="card-header">Change Password</h5>
                                <div class="card-body">
                                    <form id="formAccountSettings" method="POST" onsubmit="return false">
                                        <div class="row">
                                            <div class="mb-3 col-md-6 form-password-toggle">
                                                <label class="form-label" for="currentPassword">Current Password</label>
                                                <div class="input-group input-group-merge">
                                                    <input
                                                            class="form-control"
                                                            type="password"
                                                            name="currentPassword"
                                                            id="currentPassword"
                                                            placeholder="&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;"/>
                                                    <span class="input-group-text cursor-pointer"><i
                                                            class="ti ti-eye-off"></i></span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="mb-3 col-md-6 form-password-toggle">
                                                <label class="form-label" for="newPassword">New Password</label>
                                                <div class="input-group input-group-merge">
                                                    <input
                                                            class="form-control"
                                                            type="password"
                                                            id="newPassword"
                                                            name="newPassword"
                                                            placeholder="&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;"/>
                                                    <span class="input-group-text cursor-pointer"><i
                                                            class="ti ti-eye-off"></i></span>
                                                </div>
                                            </div>

                                            <div class="mb-3 col-md-6 form-password-toggle">
                                                <label class="form-label" for="confirmPassword">Confirm New
                                                    Password</label>
                                                <div class="input-group input-group-merge">
                                                    <input
                                                            class="form-control"
                                                            type="password"
                                                            name="confirmPassword"
                                                            id="confirmPassword"
                                                            placeholder="&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;"/>
                                                    <span class="input-group-text cursor-pointer"><i
                                                            class="ti ti-eye-off"></i></span>
                                                </div>
                                            </div>
                                            <div class="col-12 mb-4">
                                                <h6>Password Requirements:</h6>
                                                <ul class="ps-3 mb-0">
                                                    <li class="mb-1">Minimum 8 characters long - the more, the better
                                                    </li>
                                                    <li class="mb-1">At least one lowercase character</li>
                                                    <li>At least one number, symbol, or whitespace character</li>
                                                </ul>
                                            </div>
                                            <div>
                                                <button type="submit" class="btn btn-primary me-2">Save changes</button>
                                                <button type="reset" class="btn btn-label-secondary">Cancel</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <!--/ Change Password -->
                        </div>
                    </div>
                </div>
                <!-- / Content -->

                <%@include file="footer.jsp"%>

                <div class="content-backdrop fade"></div>
            </div>
            <!-- Content wrapper -->
        </div>
        <!-- / Layout page -->
    </div>

    <!-- Overlay -->
    <div class="layout-overlay layout-menu-toggle"></div>

    <!-- Drag Target Area To SlideIn Menu On Small Screens -->
    <div class="drag-target"></div>
</div>
<!-- / Layout wrapper -->

<!-- Core JS -->
<!-- build:js assets2/vendor/js/core.js -->

<script src="assets2/vendor/libs/jquery/jquery.js"></script>
<script src="assets2/vendor/libs/popper/popper.js"></script>
<script src="assets2/vendor/js/bootstrap.js"></script>
<script src="assets2/vendor/libs/node-waves/node-waves.js"></script>
<script src="assets2/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>
<script src="assets2/vendor/libs/hammer/hammer.js"></script>
<script src="assets2/vendor/libs/i18n/i18n.js"></script>
<script src="assets2/vendor/libs/typeahead-js/typeahead.js"></script>
<script src="assets2/vendor/js/menu.js"></script>

<!-- endbuild -->

<!-- Vendors JS -->
<script src="assets2/vendor/libs/select2/select2.js"></script>
<script src="assets2/vendor/libs/@form-validation/umd/bundle/popular.min.js"></script>
<script src="assets2/vendor/libs/@form-validation/umd/plugin-bootstrap5/index.min.js"></script>
<script src="assets2/vendor/libs/@form-validation/umd/plugin-auto-focus/index.min.js"></script>
<script src="assets2/vendor/libs/cleavejs/cleave.js"></script>
<script src="assets2/vendor/libs/cleavejs/cleave-phone.js"></script>

<!-- Main JS -->
<script src="assets2/js/main.js"></script>

<!-- Page JS -->
<script src="assets2/js/pages-account-settings-security.js"></script>
<script src="assets2/js/modal-enable-otp.js"></script>
</body>
</html>
