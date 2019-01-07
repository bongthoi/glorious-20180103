<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!-- Main Header -->
<!--data-spy="affix" data-offset-top="1"-->
<header class="main-header container" data-spy="affix"
	data-offset-top="1">
	<div class="">
		<div class="row">
			<div class="col-sm-3">
				<a href="#" class="logo"> <!--<span class="logo-mini">
                                    <b>A</b>LT
                                </span>

                            <span class="logo-lg">
                                <img class="" src="dist/assets/logo.png" />
                            </span>-->
				</a>
			</div>
			<div class="col-sm-9">
				<input type="hidden" value="${activeHeader}"
					id="Header_inActiveMenu">
				<nav class="navbar navbar-static-top wrap_center"
					style="margin-left: 0;">
					<div class="navbar-custom-menu pull-right" id="menu_status">
						<ul class="nav navbar-nav">
							<li data-active="Corporate-Profile"><a
								href="Corporate-Profile" class="fix_font">About Us
									<div class="underline"></div>
							</a></li>

							<li data-active="Business-Commerce"><a
								href="Business-Commerce" class="fix_font">Business
									Operations
									<div class="underline"></div>
							</a></li>
							<li data-active="Subsidiaries"><a href="Subsidiaries"
								class="fix_font">Subsidiaries
									<div class="underline"></div>
							</a></li>

							<li data-active="ourpeople"><a href="ourpeople" class="fix_font">Our People
									<div class="underline"></div>
							</a></li>
							<li data-active="ouractivities"><a
								href="getPostByCateID" class="fix_font">Our Activities
									<div class="underline"></div>
							</a></li>
							<li data-active="partners"><a href="partners" class="fix_font">Our Partners
									<div class="underline"></div>
							</a></li>
							<li data-active="contactus"><a href="contactus" class="fix_font">Contact Us
									<div class="underline"></div>
							</a></li>
							
						</ul>
					</div>

				</nav>
			</div>


		</div>

	</div>

</header>




