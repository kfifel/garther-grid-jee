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

  <title>Account settings - Account | Vuexy - Bootstrap Admin Template</title>

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
  <link rel="stylesheet" href="assets2/vendor/libs/select2/select2.css" />
  <link rel="stylesheet" href="assets2/vendor/libs/@form-validation/umd/styles/index.min.css" />
  <link rel="stylesheet" href="assets2/vendor/libs/animate-css/animate.css" />
  <link rel="stylesheet" href="assets2/vendor/libs/sweetalert2/sweetalert2.css" />

  <!-- Page CSS -->

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
          <h4 class="py-3 mb-4"><span class="text-muted fw-light">Account Settings /</span> Account</h4>

          <div class="row">
            <div class="col-md-12">
              <ul class="nav nav-pills flex-column flex-md-row mb-4">
                <li class="nav-item">
                  <a class="nav-link active" href="javascript:void(0);"
                  ><i class="ti-xs ti ti-users me-1"></i> Account</a
                  >
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="account-security"
                  ><i class="ti-xs ti ti-lock me-1"></i> Security</a
                  >
                </li>
              </ul>
              <div class="card mb-4">
                <h5 class="card-header">Profile Details</h5>
                <!-- Account -->
                <div class="card-body">
                  <div class="d-flex align-items-start align-items-sm-center gap-4">
                    <img
                            src="assets2/img/avatars/14.png"
                            alt="user-avatar"
                            class="d-block w-px-100 h-px-100 rounded"
                            id="uploadedAvatar" />
                    <div class="button-wrapper">
                      <label for="upload" class="btn btn-primary me-2 mb-3" tabindex="0">
                        <span class="d-none d-sm-block">Upload new photo</span>
                        <i class="ti ti-upload d-block d-sm-none"></i>
                        <input
                                type="file"
                                id="upload"
                                class="account-file-input"
                                hidden
                                accept="image/png, image/jpeg" />
                      </label>
                      <button type="button" class="btn btn-label-secondary account-image-reset mb-3">
                        <i class="ti ti-refresh-dot d-block d-sm-none"></i>
                        <span class="d-none d-sm-block">Reset</span>
                      </button>

                      <div class="text-muted">Allowed JPG, GIF or PNG. Max size of 800K</div>
                    </div>
                  </div>
                </div>
                <hr class="my-0" />
                <div class="card-body">
                  <form id="formAccountSettings" method="POST" onsubmit="return false">
                    <div class="row">
                      <div class="mb-3 col-md-6">
                        <label for="firstName" class="form-label">First Name</label>
                        <input
                                class="form-control"
                                type="text"
                                id="firstName"
                                name="firstName"
                                value="John"
                                autofocus />
                      </div>
                      <div class="mb-3 col-md-6">
                        <label for="lastName" class="form-label">Last Name</label>
                        <input class="form-control" type="text" name="lastName" id="lastName" value="Doe" />
                      </div>
                      <div class="mb-3 col-md-6">
                        <label for="email" class="form-label">E-mail</label>
                        <input
                                class="form-control"
                                type="text"
                                id="email"
                                name="email"
                                value="john.doe@example.com"
                                placeholder="john.doe@example.com" />
                      </div>
                      <div class="mb-3 col-md-6">
                        <label for="organization" class="form-label">Organization</label>
                        <input
                                type="text"
                                class="form-control"
                                id="organization"
                                name="organization"
                                value="Pixinvent" />
                      </div>
                      <div class="mb-3 col-md-6">
                        <label class="form-label" for="phoneNumber">Phone Number</label>
                        <div class="input-group input-group-merge">
                          <span class="input-group-text">US (+1)</span>
                          <input
                                  type="text"
                                  id="phoneNumber"
                                  name="phoneNumber"
                                  class="form-control"
                                  placeholder="202 555 0111" />
                        </div>
                      </div>
                      <div class="mb-3 col-md-6">
                        <label for="address" class="form-label">Address</label>
                        <input type="text" class="form-control" id="address" name="address" placeholder="Address" />
                      </div>
                      <div class="mb-3 col-md-6">
                        <label for="state" class="form-label">State</label>
                        <input class="form-control" type="text" id="state" name="state" placeholder="California" />
                      </div>
                      <div class="mb-3 col-md-6">
                        <label for="zipCode" class="form-label">Zip Code</label>
                        <input
                                type="text"
                                class="form-control"
                                id="zipCode"
                                name="zipCode"
                                placeholder="231465"
                                maxlength="6" />
                      </div>
                      <div class="mb-3 col-md-6">
                        <label class="form-label" for="country">Country</label>
                        <select id="country" class="select2 form-select">
                          <option value="">Select</option>
                          <option value="Australia">Australia</option>
                          <option value="Bangladesh">Bangladesh</option>
                          <option value="Belarus">Belarus</option>
                          <option value="Brazil">Brazil</option>
                          <option value="Canada">Canada</option>
                          <option value="China">China</option>
                          <option value="France">France</option>
                          <option value="Germany">Germany</option>
                          <option value="India">India</option>
                          <option value="Indonesia">Indonesia</option>
                          <option value="Israel">Israel</option>
                          <option value="Italy">Italy</option>
                          <option value="Japan">Japan</option>
                          <option value="Korea">Korea, Republic of</option>
                          <option value="Mexico">Mexico</option>
                          <option value="Philippines">Philippines</option>
                          <option value="Russia">Russian Federation</option>
                          <option value="South Africa">South Africa</option>
                          <option value="Thailand">Thailand</option>
                          <option value="Turkey">Turkey</option>
                          <option value="Ukraine">Ukraine</option>
                          <option value="United Arab Emirates">United Arab Emirates</option>
                          <option value="United Kingdom">United Kingdom</option>
                          <option value="United States">United States</option>
                        </select>
                      </div>
                      <div class="mb-3 col-md-6">
                        <label for="language" class="form-label">Language</label>
                        <select id="language" class="select2 form-select">
                          <option value="">Select Language</option>
                          <option value="en">English</option>
                          <option value="fr">French</option>
                          <option value="de">German</option>
                          <option value="pt">Portuguese</option>
                        </select>
                      </div>
                      <div class="mb-3 col-md-6">
                        <label for="timeZones" class="form-label">Timezone</label>
                        <select id="timeZones" class="select2 form-select">
                          <option value="">Select Timezone</option>
                          <option value="-12">(GMT-12:00) International Date Line West</option>
                          <option value="-11">(GMT-11:00) Midway Island, Samoa</option>
                          <option value="-10">(GMT-10:00) Hawaii</option>
                          <option value="-9">(GMT-09:00) Alaska</option>
                          <option value="-8">(GMT-08:00) Pacific Time (US & Canada)</option>
                          <option value="-8">(GMT-08:00) Tijuana, Baja California</option>
                          <option value="-7">(GMT-07:00) Arizona</option>
                          <option value="-7">(GMT-07:00) Chihuahua, La Paz, Mazatlan</option>
                          <option value="-7">(GMT-07:00) Mountain Time (US & Canada)</option>
                          <option value="-6">(GMT-06:00) Central America</option>
                          <option value="-6">(GMT-06:00) Central Time (US & Canada)</option>
                          <option value="-6">(GMT-06:00) Guadalajara, Mexico City, Monterrey</option>
                          <option value="-6">(GMT-06:00) Saskatchewan</option>
                          <option value="-5">(GMT-05:00) Bogota, Lima, Quito, Rio Branco</option>
                          <option value="-5">(GMT-05:00) Eastern Time (US & Canada)</option>
                          <option value="-5">(GMT-05:00) Indiana (East)</option>
                          <option value="-4">(GMT-04:00) Atlantic Time (Canada)</option>
                          <option value="-4">(GMT-04:00) Caracas, La Paz</option>
                        </select>
                      </div>
                      <div class="mb-3 col-md-6">
                        <label for="currency" class="form-label">Currency</label>
                        <select id="currency" class="select2 form-select">
                          <option value="">Select Currency</option>
                          <option value="usd">USD</option>
                          <option value="euro">Euro</option>
                          <option value="pound">Pound</option>
                          <option value="bitcoin">Bitcoin</option>
                        </select>
                      </div>
                    </div>
                    <div class="mt-2">
                      <button type="submit" class="btn btn-primary me-2">Save changes</button>
                      <button type="reset" class="btn btn-label-secondary">Cancel</button>
                    </div>
                  </form>
                </div>
                <!-- /Account -->
              </div>
              <div class="card">
                <h5 class="card-header">Delete Account</h5>
                <div class="card-body">
                  <div class="mb-3 col-12 mb-0">
                    <div class="alert alert-warning">
                      <h5 class="alert-heading mb-1">Are you sure you want to delete your account?</h5>
                      <p class="mb-0">Once you delete your account, there is no going back. Please be certain.</p>
                    </div>
                  </div>
                  <form id="formAccountDeactivation" onsubmit="return false">
                    <div class="form-check mb-4">
                      <input
                              class="form-check-input"
                              type="checkbox"
                              name="accountActivation"
                              id="accountActivation" />
                      <label class="form-check-label" for="accountActivation"
                      >I confirm my account deactivation</label
                      >
                    </div>
                    <button type="submit" class="btn btn-danger deactivate-account">Deactivate Account</button>
                  </form>
                </div>
              </div>
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
<script src="assets2/vendor/libs/sweetalert2/sweetalert2.js"></script>

<!-- Main JS -->
<script src="assets2/js/main.js"></script>

<!-- Page JS -->
<script src="assets2/js/pages-account-settings-account.js"></script>
</body>
</html>
