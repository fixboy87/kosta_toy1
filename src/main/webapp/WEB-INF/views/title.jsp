<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html lang="kr">
<head>
<title>라임 야놀자</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Destino project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="../resources/bootstrap/styles/common/bootstrap4/bootstrap.min.css">
<link href="../resources/bootstrap/plugins/common/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="../resources/bootstrap/plugins/common/OwlCarousel2-2.2.1/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="../resources/bootstrap/plugins/common/OwlCarousel2-2.2.1/owl.theme.default.css">
<link rel="stylesheet" type="text/css" href="../resources/bootstrap/plugins/common/OwlCarousel2-2.2.1/animate.css">
<link href="../resources/bootstrap/plugins/common/magnific-popup/magnific-popup.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="../resources/bootstrap/styles/common/main_styles.css">
<link rel="stylesheet" type="text/css" href="../resources/bootstrap/styles/common/responsive.css">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" type="text/css" href="../resources/bootstrap/styles/common/custom.css">
<style type="text/css">
.header_titlePage {
	background: none !important;
}
.titleButton {
	background: #fe435b !important;
}
.titleButton>a{
	color: white !important;
	margin: auto;
	font-weight: bold;
	font-size: 1.4em;
}
</style>
</head>
<body>

<div class="super_container">

<%@ include file="sub_page/header_menu.jsp"%>

	<input type="hidden" id="uid" name="uid" val="<%=(String)session.getAttribute("id")%>"/>
	<input type="hidden" id="type" name="type" val="<%=(String)session.getAttribute("type")%>"/>
	<input type="hidden" id="name" name="name" val="<%=(String)session.getAttribute("name")%>"/>
	<!-- Home -->

	<div class="home">
		<div class="home_background" style="background-image:url(../resources/images/common/mainImg.jpg)"></div>
		<div class="home_content">
					<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="find_title text-center">떠나요 동해바다로</div>
				</div>
				<div class="col-12">
					<div class="find_form_container">
						<div class="button titleButton"><a href="#">떠나자!!</a></div>
					</div>
					
				</div>
			</div>
		</div>
		</div>
	</div>

	<!-- Find Form -->


	<!-- Top Destinations -->

	<div class="top">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="section_title text-center">
						<h2>Top destinations in Europe</h2>
						<div>take a look at these offers</div>
					</div>
				</div>
			</div>
			<div class="row top_content">

				<div class="col-lg-3 col-md-6 top_col">

					<!-- Top Destination Item -->
					<div class="top_item">
						<a href="#">
							<div class="top_item_image"><img src="../resources/images/common/top_1.jpg" alt="https://unsplash.com/@sgabriel"></div>
							<div class="top_item_content">
								<div class="top_item_price">From $890</div>
								<div class="top_item_text">Paris, France</div>
							</div>
						</a>
					</div>
				</div>

				<div class="col-lg-3 col-md-6 top_col">

					<!-- Top Destination Item -->
					<div class="top_item">
						<a href="#">
							<div class="top_item_image"><img src="../resources/images/common/top_2.jpg" alt="https://unsplash.com/@jenspeter"></div>
							<div class="top_item_content">
								<div class="top_item_price">From $890</div>
								<div class="top_item_text">Italian Riviera</div>
							</div>
						</a>
					</div>
				</div>

				<div class="col-lg-3 col-md-6 top_col">

					<!-- Top Destination Item -->
					<div class="top_item">
						<a href="#">
							<div class="top_item_image"><img src="../resources/images/common/top_3.jpg" alt="https://unsplash.com/@anikindimitry"></div>
							<div class="top_item_content">
								<div class="top_item_price">From $890</div>
								<div class="top_item_text">Cinque Terre</div>
							</div>
						</a>
					</div>
				</div>

				<div class="col-lg-3 col-md-6 top_col">

					<!-- Top Destination Item -->
					<div class="top_item">
						<a href="#">
							<div class="top_item_image"><img src="../resources/images/common/top_4.jpg" alt="https://unsplash.com/@hellolightbulb"></div>
							<div class="top_item_content">
								<div class="top_item_price">From $890</div>
								<div class="top_item_text">Santorini, Greece</div>
							</div>
						</a>	
					</div>
				</div>

			</div>
		</div>
	</div>

	<!-- Last -->

	<div class="last">
		<!-- Image by https://unsplash.com/@thanni -->
		<div class="last_background parallax-window" data-parallax="scroll" data-image-src="../resources/images/common/last.jpg" data-speed="0.8"></div>

		<div class="container">
			<div class="row">
				<div class="last_logo"><img src="../resources/images/common/last_logo.png" alt=""></div>
				<div class="col-lg-6 last_col">
					<div class="last_item">
						<div class="last_item_content">
							<div class="last_subtitle">maldive</div>
							<div class="last_percent">50%</div>
							<div class="last_title">Last Minute Offer</div>
							<div class="last_text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer pulvinar sed mauris eget tincidunt. Sed lectus nulla, tempor vel.</div>
							<div class="button last_button"><a href="offers.html">See Offer</a></div>
						</div>
					</div>
				</div>
				<div class="col-lg-6 last_col">
					<div class="last_item">
						<div class="last_item_content">
							<div class="last_subtitle">bali</div>
							<div class="last_percent">38%</div>
							<div class="last_title">Last Minute Offer</div>
							<div class="last_text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer pulvinar sed mauris eget tincidunt. Sed lectus nulla, tempor vel.</div>
							<div class="button last_button"><a href="offers.html">See Offer</a></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	

	<!-- Popular -->

	<div class="popular">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="section_title text-center">
						<h2>Popular destinations in 2018</h2>
						<div>take a look at these offers</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col">
					<div class="popular_content d-flex flex-md-row flex-column flex-wrap align-items-md-center align-items-start justify-content-md-between justify-content-start">
						
						<!-- Popular Item -->
						<div class="popular_item">
							<a href="offers.html">
								<img src="../resources/images/common/popular_1.jpg" alt="image by Egzon Bytyqi">
								<div class="popular_item_content">
									<div class="popular_item_price">From $890</div>
									<div class="popular_item_title">Turkey</div>
								</div>
							</a>	
						</div>

						<!-- Popular Item -->
						<div class="popular_item">
							<a href="offers.html">
								<img src="../resources/images/common/popular_2.jpg" alt="https://unsplash.com/@michael75">
								<div class="popular_item_content">
									<div class="popular_item_price">From $890</div>
									<div class="popular_item_title">Hawai</div>
								</div>
							</a>	
						</div>

						<!-- Popular Item -->
						<div class="popular_item">
							<a href="offers.html">
								<img src="../resources/images/common/popular_3.jpg" alt="https://unsplash.com/@sapegin">
								<div class="popular_item_content">
									<div class="popular_item_price">From $890</div>
									<div class="popular_item_title">Ireland</div>
								</div>
							</a>	
						</div>

						<!-- Popular Item -->
						<div class="popular_item">
							<a href="offers.html">
								<img src="../resources/images/common/popular_4.jpg" alt="https://unsplash.com/@kensuarez">
								<div class="popular_item_content">
									<div class="popular_item_price">From $890</div>
									<div class="popular_item_title">Thailand</div>
								</div>
							</a>
						</div>

						<!-- Popular Item -->
						<div class="popular_item">
							<a href="offers.html">
								<img src="../resources/images/common/popular_5.jpg" alt="https://unsplash.com/@noahbasle">
								<div class="popular_item_content">
									<div class="popular_item_price">From $890</div>
									<div class="popular_item_title">Croatia</div>
								</div>
							</a>
						</div>

						<!-- Popular Item -->
						<div class="popular_item">
							<a href="offers.html">
								<img src="../resources/images/common/popular_6.jpg" alt="https://unsplash.com/@seb">
								<div class="popular_item_content">
									<div class="popular_item_price">From $890</div>
									<div class="popular_item_title">Bali</div>
								</div>
							</a>
						</div>

						<!-- Popular Item -->
						<div class="popular_item">
							<a href="offers.html">
								<img src="../resources/images/common/popular_7.jpg" alt="https://unsplash.com/@nevenkrcmarek">
								<div class="popular_item_content">
									<div class="popular_item_price">From $890</div>
									<div class="popular_item_title">France</div>
								</div>
							</a>	
						</div>

						<!-- Popular Item -->
						<div class="popular_item">
							<a href="offers.html">
								<img src="../resources/images/common/popular_8.jpg" alt="https://unsplash.com/@bergeryap87">
								<div class="popular_item_content">
									<div class="popular_item_price">From $890</div>
									<div class="popular_item_title">Vietnam</div>
								</div>
							</a>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Special -->

	<div class="special">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="section_title text-center">
						<h2>Special offers</h2>
						<div>take a look at these offers</div>
					</div>
				</div>
			</div>
		</div>
		<div class="special_content">
			<div class="special_slider_container">
				<div class="owl-carousel owl-theme special_slider">
					
					<!-- Special Offers Item -->
					<div class="owl-item">
						<div class="special_item">
							<div class="special_item_background"><img src="../resources/images/common/special_1.jpg" alt="https://unsplash.com/@garciasaldana_"></div>
							<div class="special_item_content text-center">
								<div class="special_category">Visiting</div>
								<div class="special_title"><a href="offers.html">Indonesia</a></div>
							</div>
						</div>
					</div>

					<!-- Special Offers Item -->
					<div class="owl-item">
						<div class="special_item d-flex flex-column align-items-center justify-content-center">
							<div class="special_item_background"><img src="../resources/images/common/special_2.jpg" alt="https://unsplash.com/@varshesh"></div>
							<div class="special_item_content text-center">
								<div class="special_category">Culture</div>
								<div class="special_title"><a href="offers.html">India</a></div>
							</div>
						</div>
					</div>

					<!-- Special Offers Item -->
					<div class="owl-item">
						<div class="special_item d-flex flex-column align-items-center justify-content-center">
							<div class="special_item_background"><img src="../resources/images/common/special_3.jpg" alt="https://unsplash.com/@paulgilmore_"></div>
							<div class="special_item_content text-center">
								<div class="special_category">Sunbathing</div>
								<div class="special_title"><a href="offers.html">Thailand</a></div>
							</div>
						</div>
					</div>

					<!-- Special Offers Item -->
					<div class="owl-item">
						<div class="special_item d-flex flex-column align-items-center justify-content-center">
							<div class="special_item_background"><img src="../resources/images/common/special_4.jpg" alt="https://unsplash.com/@hellolightbulb"></div>
							<div class="special_item_content text-center">
								<div class="special_category">Visiting</div>
								<div class="special_title"><a href="offers.html">Bali</a></div>
							</div>
						</div>
					</div>

					<!-- Special Offers Item -->
					<div class="owl-item">
						<div class="special_item d-flex flex-column align-items-center justify-content-center">
							<div class="special_item_background"><img src="../resources/images/common/special_5.jpg" alt="https://unsplash.com/@dnevozhai"></div>
							<div class="special_item_content text-center">
								<div class="special_category">Visiting</div>
								<div class="special_title"><a href="offers.html">France</a></div>
							</div>
						</div>
					</div>

				</div>

				<div class="special_slider_nav d-flex flex-column align-items-center justify-content-center">
					<img src="../resources/images/common/special_slider.png" alt="">
				</div>
			</div>
		</div>
	</div>

	<!-- Newsletter -->

	<div class="newsletter">
		<!-- Image by https://unsplash.com/@garciasaldana_ -->
		<div class="newsletter_background" style="background-image:url(../resources/images/common/newsletter.jpg)"></div>
		<div class="container">
			<div class="row">
				<div class="col-lg-10 offset-lg-1">
					<div class="newsletter_content">
						<div class="newsletter_title text-center">Subscribe to our Newsletter</div>
						<div class="newsletter_form_container">
							<form action="#" id="newsletter_form" class="newsletter_form">
								<div class="d-flex flex-md-row flex-column align-content-center justify-content-between">
									<input type="email" id="newsletter_input" class="newsletter_input" placeholder="Your E-mail Address">
									<button type="submit" id="newsletter_button" class="newsletter_button">Subscribe</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<%@include file="sub_page/footer.html" %>

<script src="../resources/bootstrap/scripts/common/jquery-3.2.1.min.js"></script> 
<script src="../resources/bootstrap/scripts/common/moment.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="../resources/bootstrap/styles/common/bootstrap4/popper.js"></script>
<script src="../resources/bootstrap/styles/common/bootstrap4/bootstrap.min.js"></script>
<script src="../resources/bootstrap/plugins/common/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="../resources/bootstrap/plugins/common/easing/easing.js"></script>
<script src="../resources/bootstrap/plugins/common/parallax-js-master/parallax.min.js"></script>
<script src="../resources/bootstrap/plugins/common/magnific-popup/jquery.magnific-popup.min.js"></script>
<script src="../resources/bootstrap/scripts/common/pignose.calendar.js"></script>
<script src="../resources/bootstrap/scripts/common/custom.js"></script>
<!--  메뉴이펙트 스크립트 -->
<script src="../resources/bootstrap/scripts/common/menuEffect.js" type="text/javascript"></script>
<script type="text/javascript">
	
</script>
</body>
</html>