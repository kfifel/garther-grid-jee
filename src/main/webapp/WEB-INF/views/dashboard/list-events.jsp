<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

  <title>DataTables - Tables | Vuexy - Bootstrap Admin Template</title>

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
  <link rel="stylesheet" href="assets2/vendor/libs/datatables-bs5/datatables.bootstrap5.css" />
  <link rel="stylesheet" href="assets2/vendor/libs/datatables-responsive-bs5/responsive.bootstrap5.css" />
  <link rel="stylesheet" href="assets2/vendor/libs/datatables-checkboxes-jquery/datatables.checkboxes.css" />
  <link rel="stylesheet" href="assets2/vendor/libs/datatables-buttons-bs5/buttons.bootstrap5.css" />
  <link rel="stylesheet" href="assets2/vendor/libs/flatpickr/flatpickr.css" />
  <!-- Row Group CSS -->
  <link rel="stylesheet" href="assets2/vendor/libs/datatables-rowgroup-bs5/rowgroup.bootstrap5.css" />
  <!-- Form Validation -->
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
        <jsp:param name="activePage" value="listEvents" />
      </jsp:include>
      <!-- Content wrapper -->
      <div class="content-wrapper">
        <!-- Content -->

        <div class="container-xxl flex-grow-1 container-p-y">
          <h4 class="py-3 mb-4"><span class="text-muted fw-light">DataTables /</span> Basic</h4>

          <!-- DataTable with Buttons -->
          <div class="card mb-4">
            <h5 class="card-header">Event List</h5>
            <hr class="mt-0">
            <div class="card-datatable text-nowrap">
              <div class="card-datatable text-nowrap">
                <div id="DataTables_Table_0_wrapper" class="dataTables_wrapper dt-bootstrap5 no-footer">
                  <div class="row">
                    <div class="col-sm-12 col-md-6">
                      <div class="dataTables_length" id="DataTables_Table_0_length">
                        <label> Show
                          <select wire:model="perPage" name="DataTables_Table_0_length" aria-controls="DataTables_Table_0" class="form-select">
                            <option value="10">10</option>
                            <option value="25">25</option>
                            <option value="50">50</option>
                            <option value="100">100</option>
                          </select>
                          entries
                        </label>
                      </div>
                    </div>
                    <div class="col-sm-12 col-md-6 d-flex justify-content-center justify-content-md-end">
                      <div id="DataTables_Table_0_filter" class="dataTables_filter">
                        <label>
                          Search:
                          <input wire:model.debounce.500ms="search" type="search" class="form-control" placeholder="" aria-controls="DataTables_Table_0" />
                        </label>
                      </div>
                    </div>
                  </div>
                  <div class="table-responsive" wire:init="loadData">
                    <table class="datatables-ajax table dataTable no-footer" id="DataTables_Table_0"
                           aria-describedby="DataTables_Table_0_info">
                      <thead>
                      <tr>
                        <th></th>
                        <th></th>
                        <th>id</th>
                        <th>Name</th>
                        <th>Description</th>
                        <th>Location</th>
                        <th>Date</th>
                        <th>Time</th>
                        <th>category</th>
                        <th></th>
                        <th aria-controls="DataTables_Table_0">Action</th>
                      </tr>
                      </thead>
                      <tbody>
                      <c:forEach items="${events}" var="event">
                        <tr>
                          <td></td>
                          <td></td>
                          <td><c:out value="${event.id}" /></td>
                          <td><c:out value="${event.name}" /></td>
                          <td><c:out value="${event.description}" /></td>
                          <td><c:out value="${event.location}" /></td>
                          <td><c:out value="${event.date}" /></td>
                          <td><c:out value="${event.time}" /></td>
                          <td><c:out value="${event.category.name}" /></td>
                          <td>
                            <div class="dropdown">
                              <button type="button" class="btn p-0 dropdown-toggle hide-arrow" data-bs-toggle="dropdown">
                                <i class="ti ti-dots-vertical"></i>
                              </button>
                              <div class="dropdown-menu">
                                <a class="dropdown-item" href="<c:url value='/events'>
                                  <c:param name='action' value='edit' />
                                  <c:param name='id' value='${event.id}' />
                                  </c:url>"><i class="ti ti-pencil me-1"></i>Edit
                                </a>
                                <a class="dropdown-item" href="<c:url value='/events'>
                                  <c:param name='action' value='delete' />
                                  <c:param name='id' value='${event.id}' />
                                  </c:url>"><i class="ti ti-trash me-1"></i>Delete
                                </a>
                              </div>
                            </div>
                          </td>
                        </tr>
                      </c:forEach>

                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- Modal to add new record -->
          <div class="offcanvas offcanvas-end" id="add-new-record">
            <div class="offcanvas-header border-bottom">
              <h5 class="offcanvas-title" id="exampleModalLabel">New Record</h5>
              <button
                      type="button"
                      class="btn-close text-reset"
                      data-bs-dismiss="offcanvas"
                      aria-label="Close"></button>
            </div>
            <div class="offcanvas-body flex-grow-1">
              <form class="add-new-record pt-0 row g-2" id="form-add-new-record" onsubmit="return false">
                <div class="col-sm-12">
                  <label class="form-label" for="basicFullname">Full Name</label>
                  <div class="input-group input-group-merge">
                    <span id="basicFullname2" class="input-group-text"><i class="ti ti-user"></i></span>
                    <input
                            type="text"
                            id="basicFullname"
                            class="form-control dt-full-name"
                            name="basicFullname"
                            placeholder="John Doe"
                            aria-label="John Doe"
                            aria-describedby="basicFullname2" />
                  </div>
                </div>
                <div class="col-sm-12">
                  <label class="form-label" for="basicPost">Post</label>
                  <div class="input-group input-group-merge">
                    <span id="basicPost2" class="input-group-text"><i class="ti ti-briefcase"></i></span>
                    <input
                            type="text"
                            id="basicPost"
                            name="basicPost"
                            class="form-control dt-post"
                            placeholder="Web Developer"
                            aria-label="Web Developer"
                            aria-describedby="basicPost2" />
                  </div>
                </div>
                <div class="col-sm-12">
                  <label class="form-label" for="basicEmail">Email</label>
                  <div class="input-group input-group-merge">
                    <span class="input-group-text"><i class="ti ti-mail"></i></span>
                    <input
                            type="text"
                            id="basicEmail"
                            name="basicEmail"
                            class="form-control dt-email"
                            placeholder="john.doe@example.com"
                            aria-label="john.doe@example.com" />
                  </div>
                  <div class="form-text">You can use letters, numbers & periods</div>
                </div>
                <div class="col-sm-12">
                  <label class="form-label" for="basicDate">Joining Date</label>
                  <div class="input-group input-group-merge">
                    <span id="basicDate2" class="input-group-text"><i class="ti ti-calendar"></i></span>
                    <input
                            type="text"
                            class="form-control dt-date"
                            id="basicDate"
                            name="basicDate"
                            aria-describedby="basicDate2"
                            placeholder="MM/DD/YYYY"
                            aria-label="MM/DD/YYYY" />
                  </div>
                </div>
                <div class="col-sm-12">
                  <label class="form-label" for="basicSalary">Salary</label>
                  <div class="input-group input-group-merge">
                    <span id="basicSalary2" class="input-group-text"><i class="ti ti-currency-dollar"></i></span>
                    <input
                            type="number"
                            id="basicSalary"
                            name="basicSalary"
                            class="form-control dt-salary"
                            placeholder="12000"
                            aria-label="12000"
                            aria-describedby="basicSalary2" />
                  </div>
                </div>
                <div class="col-sm-12">
                  <button type="submit" class="btn btn-primary data-submit me-sm-3 me-1">Submit</button>
                  <button type="reset" class="btn btn-outline-secondary" data-bs-dismiss="offcanvas">Cancel</button>
                </div>
              </form>
            </div>
          </div>
          <!--/ DataTable with Buttons -->

          <hr class="my-5" />
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
<script src="assets2/vendor/libs/datatables-bs5/datatables-bootstrap5.js"></script>
<!-- Flat Picker -->
<script src="assets2/vendor/libs/moment/moment.js"></script>
<script src="assets2/vendor/libs/flatpickr/flatpickr.js"></script>
<!-- Form Validation -->
<script src="assets2/vendor/libs/@form-validation/umd/bundle/popular.min.js"></script>
<script src="assets2/vendor/libs/@form-validation/umd/plugin-bootstrap5/index.min.js"></script>
<script src="assets2/vendor/libs/@form-validation/umd/plugin-auto-focus/index.min.js"></script>

<!-- Main JS -->
<script src="assets2/js/main.js"></script>

<!-- Page JS -->
<script src="assets2/js/list-events.jsp.js"></script>
</body>
</html>
