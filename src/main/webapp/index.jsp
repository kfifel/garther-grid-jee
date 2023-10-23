<%--<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>--%>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>

<%--<!DOCTYPE html>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <%@include file="/WEB-INF/views/shared/_header.jsp"%>--%>
<%--    <title>JSP - Hello World</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--    <h1><%= "Hello World!" %>--%>
<%--    </h1>--%>
<%--    <br/>--%>
<%--    <a href="hello-servlet">Hello Servlet</a>--%>
<%--    <br>--%>
<%--    <a href="auth/login.php">login</a>--%>
<%--    <br>--%>
<%--    <a href="dashboard">dashboard</a>--%>
<%--    <jsp:include page="/WEB-INF/views/shared/_handleAlerts.jsp"/>--%>

<%--</html>--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en" class="h-100">
<%@include file="WEB-INF/views/includes/_head.jsp" %>

<body class="d-flex flex-column h-100">
<!-- Header Start-->
<%@include file="WEB-INF/views/includes/_header.jsp" %>
<header class="header">
    <div class="header-inner">
        <nav class="navbar navbar-expand-lg bg-barren barren-head navbar fixed-top justify-content-sm-start pt-0 pb-0">
            <div class="container">
                <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar">
						<span class="navbar-toggler-icon">
							<i class="fa-solid fa-bars"></i>
						</span>
                </button>
                <a class="navbar-brand order-1 order-lg-0 ml-lg-0 ml-2 me-auto" href="index.html">
                    <div class="res-main-logo">
                        <img src="<c:url value="/assets/homeAssets/images/GatherGrid.png"/>" alt="">
                    </div>
                    <div class="main-logo" id="logo">
                        <img src="<c:url value="/assets/homeAssets/images/GatherGrid.png"/>" alt="">
                        <img class="logo-inverse" src="<c:url value="/assets/homeAssets/images/GatherGrid.png"/>" alt="">
                    </div>
                </a>
                <div class="offcanvas offcanvas-start" tabindex="-1" id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">
                    <div class="offcanvas-header">
                        <div class="offcanvas-logo" id="offcanvasNavbarLabel">
                            <img src="<c:url value="/assets/homeAssets/images/GatherGrid.png"/>" alt="">
                        </div>
                        <button type="button" class="close-btn" data-bs-dismiss="offcanvas" aria-label="Close">
                            <i class="fa-solid fa-xmark"></i>
                        </button>
                    </div>
                    <div class="offcanvas-body">
                        <div class="offcanvas-top-area">
                            <div class="create-bg">
                                <a href="create.html" class="offcanvas-create-btn">
                                    <i class="fa-solid fa-calendar-days"></i>
                                    <span>Create Event</span>
                                </a>
                            </div>
                        </div>
                        <ul class="navbar-nav justify-content-end flex-grow-1 pe_5">
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="index.html">Home</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="pricing.html">Pricing</a>
                            </li>

                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    Pages
                                </a>
                                <ul class="dropdown-menu dropdown-submenu">
                                    <li>
                                        <a class="dropdown-item submenu-item" href="#">Other Pages</a>
                                        <ul class="submenu dropdown-menu">
                                            <li><a class="dropdown-item pe-5" href="sign_in.html">Sign In</a></li>
                                            <li><a class="dropdown-item pe-5" href="sign_up.html">Sign Up</a></li>
                                            <li><a class="dropdown-item pe-5" href="forgot_password.html">Forgot Password</a></li>
                                            <li><a class="dropdown-item pe-5" href="about_us.html">About Us</a></li>
                                            <li><a class="dropdown-item pe-5" href="checkout.html">Checkout</a></li>
                                            <li><a class="dropdown-item pe-5" href="checkout_premium.html">Checkout Premium</a></li>
                                            <li><a class="dropdown-item pe-5" href="invoice.html">Invoice</a></li>
                                            <li><a class="dropdown-item pe-5" href="coming_soon.html">Coming Soon</a></li>
                                            <li><a class="dropdown-item pe-5" href="error_404.html">Error 404</a></li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a class="dropdown-item submenu-item" href="#">Create Event</a>
                                        <ul class="submenu dropdown-menu">
                                            <li><a class="dropdown-item pe-5" href="create.html">Create</a></li>
                                            <li><a class="dropdown-item pe-5" href="create_venue_event.html">Create Venue Event</a></li>
                                            <li><a class="dropdown-item pe-5" href="create_online_event.html">Create Online Event</a></li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a class="dropdown-item submenu-item" href="#">Events View</a>
                                        <ul class="submenu dropdown-menu">
                                            <li><a class="dropdown-item pe-5" href="online_event_detail_view.html">Online Event Detail View</a></li>
                                            <li><a class="dropdown-item pe-5" href="venue_event_detail_view.html">Venue Event Detail View</a></li>
                                        </ul>
                                    </li>
                                    <li><a class="dropdown-item" href="booking_confirmed.html">Booking Confirmed</a></li>
                                    <li><a class="dropdown-item" href="attendee_profile_view.html">Attendee Profile View</a></li>
                                    <li><a class="dropdown-item" href="organiser_profile_view.html">Organiser Profile View</a></li>
                                    <li><a class="dropdown-item" href="my_organisation_dashboard.html">Organization Dashboard</a></li>
                                    <li><a class="dropdown-item" href="sell_tickets_online.html">Sell Tickets Online</a></li>
                                    <li><a class="dropdown-item" href="refer_a_friend.html">Refer a Friend</a></li>
                                    <li><a class="dropdown-item" href="term_and_conditions.html">Terms & Conditions</a></li>
                                    <li><a class="dropdown-item" href="privacy_policy.html">Privacy Policy</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                    <div class="offcanvas-footer">
                        <div class="offcanvas-social">
                            <h5>Follow Us</h5>
                            <ul class="social-links">
                                <li><a href="#" class="social-link"><i class="fab fa-facebook-square"></i></a>
                                <li><a href="#" class="social-link"><i class="fab fa-instagram"></i></a>
                                <li><a href="#" class="social-link"><i class="fab fa-twitter"></i></a>
                                <li><a href="#" class="social-link"><i class="fab fa-linkedin-in"></i></a>
                                <li><a href="#" class="social-link"><i class="fab fa-youtube"></i></a>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="right-header order-2">
                    <ul class="align-self-stretch">
                        <li>
                            <a href="create.html" class="create-btn btn-hover">
                                <i class="fa-solid fa-calendar-days"></i>
                                <span>Create Event</span>
                            </a>
                        </li>
                        <li class="dropdown account-dropdown">
                            <a href="#" class="account-link" role="button" id="accountClick" data-bs-auto-close="outside" data-bs-toggle="dropdown" aria-expanded="false">
                                <img src="<c:url value="/assets/homeAssets/images/profile-imgs/img-13.jpg" />" alt="">
                                <i class="fas fa-caret-down arrow-icon"></i>
                            </a>
                            <ul class="dropdown-menu dropdown-menu-account dropdown-menu-end" aria-labelledby="accountClick">
                                <li>
                                    <div class="dropdown-account-header">
                                        <div class="account-holder-avatar">
                                            <img src="<c:url value="/assets/homeAssets/images/profile-imgs/img-13.jpg" />" alt="">
                                        </div>
                                        <h5>John Doe</h5>
                                        <p>johndoe@example.com</p>
                                    </div>
                                </li>
                                <li class="profile-link">
                                    <a href="my_organisation_dashboard.html" class="link-item">My Organisation</a>
                                    <a href="organiser_profile_view.html" class="link-item">My Profile</a>
                                    <a href="sign_in.html" class="link-item">Sign Out</a>
                                </li>
                            </ul>
                        </li>
                        <!-- <li>
                            <div class="night_mode_switch__btn">
                                <div id="night-mode" class="fas fa-moon fa-sun"></div>
                            </div>
                        </li> -->
                    </ul>
                </div>
            </div>
        </nav>
        <div class="overlay"></div>
    </div>
</header>
<!-- Header End-->
<!-- Body Start-->
<div class="wrapper">
    <div class="hero-banner">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xl-7 col-lg-9 col-md-10">
                    <div class="hero-banner-content">
                        <h2>The Easiest and Most Powerful Online Event Booking and Ticketing System</h2>
                        <p>GatherGrid is an all-in-one event ticketing platform for event organisers, promoters, and managers. Easily create, promote and manage your events of any type and size.</p>
                        <a href="create.html" class="main-btn btn-hover">Create Event <i class="fa-solid fa-arrow-right ms-3"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="explore-events p-80">
        <div class="container">
            <div class="row">
                <div class="col-xl-12 col-lg-12 col-md-12">
                    <div class="main-title">
                        <h3>Explore Events</h3>
                    </div>
                </div>
                <div class="col-xl-12 col-lg-12 col-md-12">
                    <div class="event-filter-items">
                        <div class="featured-controls">
                            <div class="filter-tag">
                                <a href="explore_events_by_date.html" class="active">All</a>
                                <a href="explore_events_by_date.html">Today</a>
                                <a href="explore_events_by_date.html">Tomorrow</a>
                                <a href="explore_events_by_date.html">This Week</a>
                                <a href="explore_events_by_date.html">This Weekend</a>
                                <a href="explore_events_by_date.html">Next Week</a>
                                <a href="explore_events_by_date.html">Next Weekend</a>
                                <a href="explore_events_by_date.html">This Month</a>
                                <a href="explore_events_by_date.html">Next Month</a>
                                <a href="explore_events_by_date.html">This Year</a>
                                <a href="explore_events_by_date.html">Next Year</a>
                            </div>
                            <div class="controls">
                                <button type="button" class="control" data-filter="all">All</button>
                                <button type="button" class="control" data-filter=".arts">Arts</button>
                                <button type="button" class="control" data-filter=".business">Business</button>
                                <button type="button" class="control" data-filter=".concert">Concert</button>
                                <button type="button" class="control" data-filter=".workshops">Workshops</button>
                                <button type="button" class="control" data-filter=".coaching_consulting">Coaching and Consulting</button>
                                <button type="button" class="control" data-filter=".health_Wellness">Health and Wellbeing</button>
                                <button type="button" class="control" data-filter=".volunteer">Volunteer</button>
                                <button type="button" class="control" data-filter=".sports">Sports</button>
                                <button type="button" class="control" data-filter=".free">Free</button>
                            </div>
                            <div class="row" data-ref="event-filter-content">
                                <c:forEach items="${events}" var="event">
                                    <div class="col-xl-3 col-lg-4 col-md-6 col-sm-12 mix arts concert workshops volunteer sports health_Wellness" data-ref="mixitup-target">
                                        <div class="main-card mt-4">
                                            <div class="event-thumbnail">
                                                <a href="venue_event_detail_view.html" class="thumbnail-img">
                                                    <img src="<c:url value="/assets/homeAssets/images/event-imgs/img-1.jpg" />" alt="">
                                                </a>
                                                <span class="bookmark-icon" title="Bookmark"></span>
                                            </div>
                                            <div class="event-content">
                                                <a href="venue_event_detail_view.html" class="event-title">${event.name}</a>
                                                <div class="duration-price-remaining">
                                                    <span class="duration-price">AUD $${event.price}*</span>
                                                    <span class="remaining"></span>
                                                </div>
                                            </div>
                                            <div class="event-footer">
                                                <div class="event-timing">
                                                    <div class="publish-date">
                                                        <span><i class="fa-solid fa-calendar-day me-2"></i>${event.date}</span>
                                                        <span class="dot"><i class="fa-solid fa-circle"></i></span>
                                                        <span>${event.time}</span>
                                                    </div>
                                                    <span class="publish-time"><i class="fa-solid fa-clock me-2"></i>${event.duration}</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                                <div class="col-xl-3 col-lg-4 col-md-6 col-sm-12 mix arts concert workshops volunteer sports health_Wellness" data-ref="mixitup-target">
                                    <div class="main-card mt-4">
                                        <div class="event-thumbnail">
                                            <a href="venue_event_detail_view.html" class="thumbnail-img">
                                                <img src="<c:url value="/assets/homeAssets/images/event-imgs/img-1.jpg" />" alt="">
                                            </a>
                                            <span class="bookmark-icon" title="Bookmark"></span>
                                        </div>
                                        <div class="event-content">
                                            <a href="venue_event_detail_view.html" class="event-title">A New Way Of Life</a>
                                            <div class="duration-price-remaining">
                                                <span class="duration-price">AUD $100.00*</span>
                                                <span class="remaining"></span>
                                            </div>
                                        </div>
                                        <div class="event-footer">
                                            <div class="event-timing">
                                                <div class="publish-date">
                                                    <span><i class="fa-solid fa-calendar-day me-2"></i>15 Apr</span>
                                                    <span class="dot"><i class="fa-solid fa-circle"></i></span>
                                                    <span>Fri, 3.45 PM</span>
                                                </div>
                                                <span class="publish-time"><i class="fa-solid fa-clock me-2"></i>1h</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-3 col-lg-4 col-md-6 col-sm-12 mix business workshops volunteer sports health_Wellness" data-ref="mixitup-target">
                                    <div class="main-card mt-4">
                                        <div class="event-thumbnail">
                                            <a href="online_event_detail_view.html" class="thumbnail-img">
                                                <img src="<c:url value="/assets/homeAssets/images/event-imgs/img-2.jpg" />" alt="">
                                            </a>
                                            <span class="bookmark-icon" title="Bookmark"></span>
                                        </div>
                                        <div class="event-content">
                                            <a href="online_event_detail_view.html" class="event-title">Earrings Workshop with Bronwyn David</a>
                                            <div class="duration-price-remaining">
                                                <span class="duration-price">AUD $75.00*</span>
                                                <span class="remaining"><i class="fa-solid fa-ticket fa-rotate-90"></i>6 Remaining</span>
                                            </div>
                                        </div>
                                        <div class="event-footer">
                                            <div class="event-timing">
                                                <div class="publish-date">
                                                    <span><i class="fa-solid fa-calendar-day me-2"></i>30 Apr</span>
                                                    <span class="dot"><i class="fa-solid fa-circle"></i></span>
                                                    <span>Sat, 11.20 PM</span>
                                                </div>
                                                <span class="publish-time"><i class="fa-solid fa-clock me-2"></i>2h</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-3 col-lg-4 col-md-6 col-sm-12 mix coaching_consulting free concert volunteer health_Wellness bussiness" data-ref="mixitup-target">
                                    <div class="main-card mt-4">
                                        <div class="event-thumbnail">
                                            <a href="venue_event_detail_view.html" class="thumbnail-img">
                                                <img src="<c:url value="/assets/homeAssets/images/event-imgs/img-3.jpg" />" alt="">
                                            </a>
                                            <span class="bookmark-icon" title="Bookmark"></span>
                                        </div>
                                        <div class="event-content">
                                            <a href="venue_event_detail_view.html" class="event-title">Spring Showcase Saturday April 30th 2022 at 7pm</a>
                                            <div class="duration-price-remaining">
                                                <span class="duration-price">Free*</span>
                                                <span class="remaining"></span>
                                            </div>
                                        </div>
                                        <div class="event-footer">
                                            <div class="event-timing">
                                                <div class="publish-date">
                                                    <span><i class="fa-solid fa-calendar-day me-2"></i>1 May</span>
                                                    <span class="dot"><i class="fa-solid fa-circle"></i></span>
                                                    <span>Sun, 4.30 PM</span>
                                                </div>
                                                <span class="publish-time"><i class="fa-solid fa-clock me-2"></i>3h</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class=" col-xl-3 col-lg-4 col-md-6 col-sm-12 mix health_Wellness concert volunteer sports free business" data-ref="mixitup-target">
                                    <div class="main-card mt-4">
                                        <div class="event-thumbnail">
                                            <a href="online_event_detail_view.html" class="thumbnail-img">
                                                <img src="<c:url value="/assets/homeAssets/images/event-imgs/img-4.jpg" />" alt="">
                                            </a>
                                            <span class="bookmark-icon" title="Bookmark"></span>
                                        </div>
                                        <div class="event-content">
                                            <a href="online_event_detail_view.html" class="event-title">Shutter Life</a>
                                            <div class="duration-price-remaining">
                                                <span class="duration-price">AUD $85.00</span>
                                                <span class="remaining"><i class="fa-solid fa-ticket fa-rotate-90"></i>7 Remaining</span>
                                            </div>
                                        </div>
                                        <div class="event-footer">
                                            <div class="event-timing">
                                                <div class="publish-date">
                                                    <span><i class="fa-solid fa-calendar-day me-2"></i>1 May</span>
                                                    <span class="dot"><i class="fa-solid fa-circle"></i></span>
                                                    <span>Sun, 5.30 PM</span>
                                                </div>
                                                <span class="publish-time"><i class="fa-solid fa-clock me-2"></i>1h</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-3 col-lg-4 col-md-6 col-sm-12 mix concert sports health_Wellness free arts" data-ref="mixitup-target">
                                    <div class="main-card mt-4">
                                        <div class="event-thumbnail">
                                            <a href="venue_event_detail_view.html" class="thumbnail-img">
                                                <img src="<c:url value="/assets/homeAssets/images/event-imgs/img-5.jpg" />" alt="">
                                            </a>
                                            <span class="bookmark-icon" title="Bookmark"></span>
                                        </div>
                                        <div class="event-content">
                                            <a href="venue_event_detail_view.html" class="event-title">Friday Night Dinner at The Old Station May 27 2022</a>
                                            <div class="duration-price-remaining">
                                                <span class="duration-price">AUD $41.50*</span>
                                                <span class="remaining"></span>
                                            </div>
                                        </div>
                                        <div class="event-footer">
                                            <div class="event-timing">
                                                <div class="publish-date">
                                                    <span><i class="fa-solid fa-calendar-day me-2"></i>27 May</span>
                                                    <span class="dot"><i class="fa-solid fa-circle"></i></span>
                                                    <span>Fri, 12.00 PM</span>
                                                </div>
                                                <span class="publish-time"><i class="fa-solid fa-clock me-2"></i>5h</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-3 col-lg-4 col-md-6 col-sm-12 mix workshops concert arts volunteer sports" data-ref="mixitup-target">
                                    <div class="main-card mt-4">
                                        <div class="event-thumbnail">
                                            <a href="venue_event_detail_view.html" class="thumbnail-img">
                                                <img src="<c:url value="/assets/homeAssets/images/event-imgs/img-6.jpg" />" alt="">
                                            </a>
                                            <span class="bookmark-icon" title="Bookmark"></span>
                                        </div>
                                        <div class="event-content">
                                            <a href="venue_event_detail_view.html" class="event-title">Step Up Open Mic Show</a>
                                            <div class="duration-price-remaining">
                                                <span class="duration-price">AUD $200.00*</span>
                                                <span class="remaining"></span>
                                            </div>
                                        </div>
                                        <div class="event-footer">
                                            <div class="event-timing">
                                                <div class="publish-date">
                                                    <span><i class="fa-solid fa-calendar-day me-2"></i>30 Jun</span>
                                                    <span class="dot"><i class="fa-solid fa-circle"></i></span>
                                                    <span>Thu, 4.30 PM</span>
                                                </div>
                                                <span class="publish-time"><i class="fa-solid fa-clock me-2"></i>1h</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-3 col-lg-4 col-md-6 col-sm-12 mix volunteer free health_Wellness" data-ref="mixitup-target">
                                    <div class="main-card mt-4">
                                        <div class="event-thumbnail">
                                            <a href="online_event_detail_view.html" class="thumbnail-img">
                                                <img src="<c:url value="/assets/homeAssets/images/event-imgs/img-7.jpg" />" alt="">
                                            </a>
                                            <span class="bookmark-icon" title="Bookmark"></span>
                                        </div>
                                        <div class="event-content">
                                            <a href="online_event_detail_view.html" class="event-title">Tutorial on Canvas Painting for Beginners</a>
                                            <div class="duration-price-remaining">
                                                <span class="duration-price">AUD $50.00*</span>
                                                <span class="remaining"><i class="fa-solid fa-ticket fa-rotate-90"></i>17 Remaining</span>
                                            </div>
                                        </div>
                                        <div class="event-footer">
                                            <div class="event-timing">
                                                <div class="publish-date">
                                                    <span><i class="fa-solid fa-calendar-day me-2"></i>17 Jul</span>
                                                    <span class="dot"><i class="fa-solid fa-circle"></i></span>
                                                    <span>Sun, 5.30 PM</span>
                                                </div>
                                                <span class="publish-time"><i class="fa-solid fa-clock me-2"></i>1h</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-3 col-lg-4 col-md-6 col-sm-12 mix sports concert volunteer arts" data-ref="mixitup-target">
                                    <div class="main-card mt-4">
                                        <div class="event-thumbnail">
                                            <a href="venue_event_detail_view.html" class="thumbnail-img">
                                                <img src="<c:url value="/assets/homeAssets/images/event-imgs/img-8.jpg" />" alt="">
                                            </a>
                                            <span class="bookmark-icon" title="Bookmark"></span>
                                        </div>
                                        <div class="event-content">
                                            <a href="venue_event_detail_view.html" class="event-title">Trainee Program on Leadership' 2022</a>
                                            <div class="duration-price-remaining">
                                                <span class="duration-price">AUD $120.00*</span>
                                                <span class="remaining"><i class="fa-solid fa-ticket fa-rotate-90"></i>7 Remaining</span>
                                            </div>
                                        </div>
                                        <div class="event-footer">
                                            <div class="event-timing">
                                                <div class="publish-date">
                                                    <span><i class="fa-solid fa-calendar-day me-2"></i>20 Jul</span>
                                                    <span class="dot"><i class="fa-solid fa-circle"></i></span>
                                                    <span>Wed, 11.30 PM</span>
                                                </div>
                                                <span class="publish-time"><i class="fa-solid fa-clock me-2"></i>12h</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="browse-btn">
                                <a href="explore_events.html" class="main-btn btn-hover ">Browse All</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="testimonial-block p-80">
        <div class="container">
            <div class="row">
                <div class="col-lg-10">
                    <div class="main-title">
                        <h3>Transforming Thousands of Event Hosts Just Like You</h3>
                        <p>Be part of a winning team. We are continuously thriving to bring the best to our customers. Be that a new product feature, help in setting up your events or even supporting your customers so that they can easily buy tickets and participate your in events. Here is what some of the clients have to say,</p>
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="testimonial-slider-area">
                        <div class="owl-carousel testimonial-slider owl-theme">
                            <div class="item">
                                <div class="main-card">
                                    <div class="testimonial-content">
                                        <div class="testimonial-text">
                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus maximus arcu et ligula maximus vehicula. Phasellus at luctus lacus, quis eleifend nibh. Nam vitae convallis nisi, vitae tempus risus.</p>
                                        </div>
                                        <div class="testimonial-user-dt">
                                            <h5>Madeline S.</h5>
                                            <span>Events Co-ordinator</span>
                                            <ul>
                                                <li><i class="fa-solid fa-star"></i></li>
                                                <li><i class="fa-solid fa-star"></i></li>
                                                <li><i class="fa-solid fa-star"></i></li>
                                                <li><i class="fa-solid fa-star"></i></li>
                                                <li><i class="fa-solid fa-star"></i></li>
                                            </ul>
                                        </div>
                                        <span class="quote-icon"><i class="fa-solid fa-quote-right"></i></span>
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <div class="main-card">
                                    <div class="testimonial-content">
                                        <div class="testimonial-text">
                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus maximus arcu et ligula maximus vehicula. Phasellus at luctus lacus, quis eleifend nibh. Nam vitae convallis nisi, vitae tempus risus.</p>
                                        </div>
                                        <div class="testimonial-user-dt">
                                            <h5>Gabrielle B.</h5>
                                            <span>Administration</span>
                                            <ul>
                                                <li><i class="fa-solid fa-star"></i></li>
                                                <li><i class="fa-solid fa-star"></i></li>
                                                <li><i class="fa-solid fa-star"></i></li>
                                                <li><i class="fa-solid fa-star"></i></li>
                                                <li><i class="fa-solid fa-star"></i></li>
                                            </ul>
                                        </div>
                                        <span class="quote-icon"><i class="fa-solid fa-quote-right"></i></span>
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <div class="main-card">
                                    <div class="testimonial-content">
                                        <div class="testimonial-text">
                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus maximus arcu et ligula maximus vehicula. Phasellus at luctus lacus, quis eleifend nibh. Nam vitae convallis nisi, vitae tempus risus.</p>
                                        </div>
                                        <div class="testimonial-user-dt">
                                            <h5>Piyush G.</h5>
                                            <span>Application Developer</span>
                                            <ul>
                                                <li><i class="fa-solid fa-star"></i></li>
                                                <li><i class="fa-solid fa-star"></i></li>
                                                <li><i class="fa-solid fa-star"></i></li>
                                                <li><i class="fa-solid fa-star"></i></li>
                                                <li><i class="fa-solid fa-star"></i></li>
                                            </ul>
                                        </div>
                                        <span class="quote-icon"><i class="fa-solid fa-quote-right"></i></span>
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <div class="main-card">
                                    <div class="testimonial-content">
                                        <div class="testimonial-text">
                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus maximus arcu et ligula maximus vehicula. Phasellus at luctus lacus, quis eleifend nibh. Nam vitae convallis nisi, vitae tempus risus.</p>
                                        </div>
                                        <div class="testimonial-user-dt">
                                            <h5>Joanna P.</h5>
                                            <span>Event manager</span>
                                            <ul>
                                                <li><i class="fa-solid fa-star"></i></li>
                                                <li><i class="fa-solid fa-star"></i></li>
                                                <li><i class="fa-solid fa-star"></i></li>
                                                <li><i class="fa-solid fa-star"></i></li>
                                                <li><i class="fa-solid fa-star"></i></li>
                                            </ul>
                                        </div>
                                        <span class="quote-icon"><i class="fa-solid fa-quote-right"></i></span>
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <div class="main-card">
                                    <div class="testimonial-content">
                                        <div class="testimonial-text">
                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus maximus arcu et ligula maximus vehicula. Phasellus at luctus lacus, quis eleifend nibh. Nam vitae convallis nisi, vitae tempus risus.</p>
                                        </div>
                                        <div class="testimonial-user-dt">
                                            <h5>Romo S.</h5>
                                            <span>Admin</span>
                                            <ul>
                                                <li><i class="fa-solid fa-star"></i></li>
                                                <li><i class="fa-solid fa-star"></i></li>
                                                <li><i class="fa-solid fa-star"></i></li>
                                                <li><i class="fa-solid fa-star"></i></li>
                                                <li><i class="fa-solid fa-star"></i></li>
                                            </ul>
                                        </div>
                                        <span class="quote-icon"><i class="fa-solid fa-quote-right"></i></span>
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <div class="main-card">
                                    <div class="testimonial-content">
                                        <div class="testimonial-text">
                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus maximus arcu et ligula maximus vehicula. Phasellus at luctus lacus, quis eleifend nibh. Nam vitae convallis nisi, vitae tempus risus.</p>
                                        </div>
                                        <div class="testimonial-user-dt">
                                            <h5>Christopher F.</h5>
                                            <span>Online Marketing Executive</span>
                                            <ul>
                                                <li><i class="fa-solid fa-star"></i></li>
                                                <li><i class="fa-solid fa-star"></i></li>
                                                <li><i class="fa-solid fa-star"></i></li>
                                                <li><i class="fa-solid fa-star"></i></li>
                                                <li><i class="fa-solid fa-star"></i></li>
                                            </ul>
                                        </div>
                                        <span class="quote-icon"><i class="fa-solid fa-quote-right"></i></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Body End-->
<!-- Footer Start-->
<footer class="footer mt-auto">
    <div class="footer-top">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6">
                    <div class="footer-content">
                        <h4>Company</h4>
                        <ul class="footer-link-list">
                            <li><a href="about_us.html" class="footer-link">About Us</a></li>
                            <li><a href="help_center.html" class="footer-link">Help Center</a></li>
                            <li><a href="faq.html" class="footer-link">FAQ</a></li>
                            <li><a href="contact_us.html" class="footer-link">Contact Us</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="footer-content">
                        <h4>Useful Links</h4>
                        <ul class="footer-link-list">
                            <li><a href="create.html" class="footer-link">Create Event</a></li>
                            <li><a href="sell_tickets_online.html" class="footer-link">Sell Tickets Online</a></li>
                            <li><a href="privacy_policy.html" class="footer-link">Privacy Policy</a></li>
                            <li><a href="term_and_conditions.html" class="footer-link">Terms & Conditions</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="footer-content">
                        <h4>Resources</h4>
                        <ul class="footer-link-list">
                            <li><a href="pricing.html" class="footer-link">Pricing</a></li>
                            <li><a href="our_blog.html" class="footer-link">Blog</a></li>
                            <li><a href="refer_a_friend.html" class="footer-link">Refer a Friend</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="footer-content">
                        <h4>Follow Us</h4>
                        <ul class="social-links">
                            <li><a href="#" class="social-link"><i class="fab fa-facebook-square"></i></a>
                            <li><a href="#" class="social-link"><i class="fab fa-instagram"></i></a>
                            <li><a href="#" class="social-link"><i class="fab fa-twitter"></i></a>
                            <li><a href="#" class="social-link"><i class="fab fa-linkedin-in"></i></a>
                            <li><a href="#" class="social-link"><i class="fab fa-youtube"></i></a>
                        </ul>
                    </div>
                    <div class="footer-content">
                        <h4>Download Mobile App</h4>
                        <div class="download-app-link">
                            <a href="#" class="download-btn"><img src="<c:url value="/assets/homeAssets/images/app-store.png"/>" alt=""></a>
                            <a href="#" class="download-btn"><img src="<c:url value="/assets/homeAssets/images/google-play.png"/>" alt=""></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="footer-bottom">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="footer-copyright-text">
                        <p class="mb-0">© 2023, <strong>GatherGrid</strong>. All rights reserved. Powered by GatherGrid</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- Footer End-->

<%@include file="WEB-INF/views/includes/_footer.jsp" %>

</body>
</html>