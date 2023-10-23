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
    <meta charset="utf-8" />
    <meta
            name="viewport"
            content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />

    <title>Validation - Forms | Vuexy - Bootstrap Admin Template</title>

    <meta name="description" content="" />

    <!-- Favicon -->
    <link rel="icon" type="image/x-icon" href="assets2/img/favicon/favicon.ico" />

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
            href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&ampdisplay=swap"
            rel="stylesheet" />

    <!-- Icons -->
    <link rel="stylesheet" href="assets2/vendor/fonts/fontawesome.css" />
    <link rel="stylesheet" href="assets2/vendor/fonts/tabler-icons.css" />
    <link rel="stylesheet" href="assets2/vendor/fonts/flag-icons.css" />

    <!-- Core CSS -->
    <link rel="stylesheet" href="assets2/vendor/css/rtl/core.css" />
    <link rel="stylesheet" href="assets2/vendor/css/rtl/theme-default.css" />
    <link rel="stylesheet" href="assets2/css/demo.css" />

    <!-- Vendors CSS -->
    <link rel="stylesheet" href="assets2/vendor/libs/node-waves/node-waves.css" />
    <link rel="stylesheet" href="assets2/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />
    <link rel="stylesheet" href="assets2/vendor/libs/typeahead-js/typeahead.css" />
    <link rel="stylesheet" href="assets2/vendor/libs/bootstrap-select/bootstrap-select.css" />
    <link rel="stylesheet" href="assets2/vendor/libs/select2/select2.css" />
    <link rel="stylesheet" href="assets2/vendor/libs/flatpickr/flatpickr.css" />
    <link rel="stylesheet" href="assets2/vendor/libs/typeahead-js/typeahead.css" />
    <link rel="stylesheet" href="assets2/vendor/libs/tagify/tagify.css" />
    <link rel="stylesheet" href="assets2/vendor/libs/@form-validation/umd/styles/index.min.css" />

    <!-- Page CSS -->

    <!-- Helpers -->
    <script src="assets2/vendor/js/helpers.js"></script>
    <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
    <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
    <script src="assets2/js/config.js"></script>
</head>

<body>
            <jsp:include page="header.jsp">
                <jsp:param name="activePage" value="addCategory" />
            </jsp:include>
            <!-- Content wrapper -->
            <div class="content-wrapper">
                <!-- Content -->

                <div class="container-xxl flex-grow-1 container-p-y">
                    <h4 class="py-3 mb-4"><span class="text-muted fw-light">Forms /</span> Validation</h4>
                    <div class="row mb-4">
                    </div>
                    <div class="row">
                        <!-- FormValidation -->
                        <div class="col-12">
                            <div class="card">
                                <h5 class="card-header">${(not empty category) ? 'Update' : 'Create'} Category</h5>
                                <div class="card-body">
                                    <form id="formValidationExamples" class="row g-3" action="categories" method="post">
                                        <div class="col-md-6">
                                            <label class="form-label" for="categoryName">Name</label>
                                            <input
                                                    type="text"
                                                    id="categoryName"
                                                    class="form-control"
                                                    placeholder="Enter category name"
                                                    name="categoryName"
                                                    value="${(not empty category) ? category.name : ''}"/>
                                        </div>
                                        <div class="col-md-6">
                                            <label class="form-label" for="categoryDescription">Description</label>
                                            <input
                                                    type="text"
                                                    id="categoryDescription"
                                                    class="form-control"
                                                    placeholder="Enter category description"
                                                    name="categoryDescription"
                                                    value="${(not empty category) ? category.description : ''}"/>
                                        </div>
                                        <div class="col-12">
                                            <input type="hidden" name="categoryId" value="${(not empty category) ? category.id : ''}">
                                            <button type="submit" name="action" value="${(not empty category) ? 'update' : 'create'}" class="btn btn-primary">
                                                ${(not empty category) ? 'Update' : 'Create'}
                                            </button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <!-- /FormValidation -->
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
<script src="assets2/vendor/libs/bootstrap-select/bootstrap-select.js"></script>
<script src="assets2/vendor/libs/moment/moment.js"></script>
<script src="assets2/vendor/libs/flatpickr/flatpickr.js"></script>
<script src="assets2/vendor/libs/typeahead-js/typeahead.js"></script>
<script src="assets2/vendor/libs/tagify/tagify.js"></script>
<script src="assets2/vendor/libs/@form-validation/umd/bundle/popular.min.js"></script>
<script src="assets2/vendor/libs/@form-validation/umd/plugin-bootstrap5/index.min.js"></script>
<script src="assets2/vendor/libs/@form-validation/umd/plugin-auto-focus/index.min.js"></script>

<!-- Main JS -->
<script src="assets2/js/main.js"></script>

<!-- Page JS -->
<script src="assets2/js/form-validation.js"></script>
</body>
</html>
