<%@page import="yanoll.user.domain.Hotel"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	Hotel hotel = (Hotel) request.getAttribute("hotel");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="/resources/bootstrap/styles/account/registerForm.css">
<link rel="stylesheet" type="text/css"
	href="/resources/bootstrap/styles/common/bootstrap4/bootstrap.min.css">
<link
	href="/resources/bootstrap/plugins/common/font-awesome-4.7.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css"
	href="/resources/bootstrap/plugins/common/OwlCarousel2-2.2.1/owl.carousel.css">
<link rel="stylesheet" type="text/css"
	href="/resources/bootstrap/plugins/common/OwlCarousel2-2.2.1/owl.theme.default.css">
<link rel="stylesheet" type="text/css"
	href="/resources/bootstrap/plugins/common/OwlCarousel2-2.2.1/animate.css">
<link
	href="/resources/bootstrap/plugins/common/magnific-popup/magnific-popup.css"
	rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css"
	href="/resources/bootstrap/styles/common/main_styles.css">
<link rel="stylesheet" type="text/css"
	href="/resources/bootstrap/styles/common/responsive.css">
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" type="text/css"
	href="/resources/bootstrap/styles/account/registerForm.css">
<!-- room -->
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- 	plus minus counter input -->
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- Input Spinner with min and max values -->
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<style type="text/css">
.myPageMenuCylinder {
	/* height: 600px; */
	margin-top: 30px;
	margin-right: auto;
	margin-left: 30px;
	float: left;
	padding: 30px 30px 10px 30px;
}

.myPageMenuCylinder>div {
	display: block;
	margin-bottom: 20px;
}

.iEnquire {
	background-color: #fe435b;
}

.iEnquire>a {
	color: white !important;
	font-weight: bold;
	text-align: center;
}

.myPageCylinder {
	margin-top: 180px;
	margin-right: auto;
	margin-left: auto;
	width: 1000px;
	position: relative;
	width: 1000px;
}

.myPageContentCylinder {
	padding-top: 70px;
	margin-right: 100px;
	margin-bottom: 50px;
}

/* room */
.card {
	margin: 0 auto;
}

.card col-md-6 mt-5 mb-5 {
	margin: 0px;
	width: 500px;
}

.card .carousel-item {
	height: 200px;
}

.card .carousel-caption {
	padding: 0;
	right: 0;
	left: 0;
	color: #3d3d3d;
}

.card .carousel-caption h3 {
	color: #3d3d3d;
}

.card .carousel-caption p {
	line-height: 30px;
}

.card .carousel-caption .col-sm-3 {
	display: flex;
	align-items: center;
}

.card .carousel-caption .col-sm-9 {
	text-align: left;
}

.navi a {
	text-decoration: none;
}

a>.ico {
	background-color: grey;
	padding: 10px;
}

a:hover>.ico {
	background-color: #666;
}

/* Submit Button */
.submit-button {
	margin-top: 5px;
	background-color: grey;
	padding: 5px;
	color: white;
	font-size: 12px;
	font-family: inherit;
	background-color: grey;
	size: 200px;
}

.price_label {
	min-width: 70px;
	font-size: 20px;
}
/* plus minus counter input */
.qty .count {
	color: #000;
	display: inline-block;
	vertical-align: top;
	font-size: 20px;
	font-weight: 700;
	line-height: 30px;
	padding: 0 2px;
	min-width: 20px;
	text-align: center;
}

.qty .plus {
	cursor: pointer;
	display: inline-block;
	vertical-align: top;
	color: white;
	width: 25px;
	height: 25px;
	font: 20px/1 Arial, sans-serif;
	text-align: center;
	border-radius: 50%;
}

.qty .minus {
	cursor: pointer;
	display: inline-block;
	vertical-align: top;
	color: white;
	width: 25px;
	height: 25px;
	font: 20px/1 Arial, sans-serif;
	text-align: center;
	border-radius: 50%;
	background-clip: padding-box;
}

div.qty {
	text-align: center;
}

.minus:hover {
	background-color: #717fe0 !important;
}

.plus:hover {
	background-color: #717fe0 !important;
}
/*Prevent text selection*/
span {
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
}

input.count {
	border: 0;
	width: 100px;
}

nput::-webkit-outer-spin-button, input::-webkit-inner-spin-button {
	-webkit-appearance: none;
	margin: 0;
}

input:disabled {
	background-color: white;
}

.qty mt-5 {
	margin-top: 0px;
	padding-left: 100px;
}

/* Input Spinner with min and max values */
.spinner input {
  text-align: right;
}

.input-group-btn-vertical {
  position: relative;
  white-space: nowrap;
  width: 2%;
  vertical-align: middle;
  display: table-cell;
}

.input-group-btn-vertical > .btn {
  display: block;
  float: none;
  width: 100%;
  max-width: 100%;
  padding: 8px;
  margin-left: -1px;
  position: relative;
  border-radius: 0;
}

.input-group-btn-vertical > .btn:first-child {
  border-top-right-radius: 4px;
}

.input-group-btn-vertical > .btn:last-child {
  margin-top: -2px;
  border-bottom-right-radius: 4px;
}

.input-group-btn-vertical i {
  position: absolute;
  top: 0;
  left: 4px;
}
.input-group{
width: 120px !important;
height: 12px !important;
}
</style>
</head>

<body>

	<div class="super_container margin_top_control">
		<%@ include file="../sub_page/header_menu.jsp"%>

		<div id="content" class="content_wrap">

			<div class="myPageCylinder">
				<div class="myPageMenuCylinder">
					<div class="button iEnquire admin_page_button">
						<a href="#">1:1문의</a>
					</div>
					<div class="button iEnquire admin_page_button">
						<a href="#">세부관리</a>
					</div>
					<div class="button iEnquire admin_page_button">
						<a href="#">기본정보</a>
					</div>
					<div class="button iEnquire admin_page_button">
						<a href="#">세부정보</a>
					</div>
					<div class="button iEnquire admin_page_button">
						<a href="#">회원탈퇴</a>
					</div>
				</div>
			</div>
			<div class="myPageContentCylinder">
				<div class="card col-md-6 mt-5 mb-5">
					<div id="carouselExampleControls" class="carousel slide"
						data-ride="carousel" data-interval="100000">
						<div class="w-100 carousel-inner" role="listbox">
							<div class="carousel-item active">
								<div class="carousel-caption">
									<div class="row">
										<div class="col-sm-3">
											<img src="http://via.placeholder.com/200x200" alt=""
												class="rounded-circle img-fluid" />
										</div>
										<div class="col-sm-9">
											<h3>Standard</h3>
											<small>

												<form action="/manager/roomManager/${h_no}" method="post" enctype="multipart/form-data">
													<div class="qty mt-5">
														<label class="price_label">Price</label> <span
															class="minus bg-dark">-</span> <input type="number"
															class="count" name="room_price" value="100000"> <span
															class="plus bg-dark">+</span>
													</div>
													<input type="file" name="pic_room_url"
														placeholder="Room의 이미지를 등록해주세요.">
													
													<div class="input-group spinner">
														<input  type="number" name="roomCnt" class="form-control" value="1" min="0" size="100px">
														<div class="input-group-btn-vertical">
															<button class="btn btn-default" type="button">
																<i class="fa fa-caret-up"></i>
															</button>
															<button class="btn btn-default" type="button">
																<i class="fa fa-caret-down"></i>
															</button>
														</div>
													</div>
													<input type="hidden" name="h_no" value="${h_no}"> 
													<input type="hidden" name="room_type" value="standard">
													 <input type="submit" class="submit-button" value="수정 및 등록">
												</form>
											</small>
										</div>
									</div>
								</div>
							</div>
							<div class="carousel-item">
								<div class="carousel-caption">
									<div class="row">
										<div class="col-sm-3">
											<img src="/resources/images/pages/review_img" alt=""
												class="rounded-circle img-fluid">
										</div>
										<div class="col-sm-9">
											<h3>Premium</h3>
											<small>
												<form action="/manager/roomManager/${h_no}" method="post" enctype="multipart/form-data">
													<div class="qty mt-5">
														<label class="price_label">Price</label> <span
															class="minus bg-dark">-</span> <input type="number"
															class="count" name="room_price" value="100000"> <span
															class="plus bg-dark">+</span>
													</div>
													<input type="file" name="pic_room_url"
														placeholder="Room의 이미지를 등록해주세요.">
													
													<div class="input-group spinner">
														<input type="number" name="roomCnt" class="form-control" value="1" min="0" size="100px">
														<div class="input-group-btn-vertical">
															<button class="btn btn-default" type="button">
																<i class="fa fa-caret-up"></i>
															</button>
															<button class="btn btn-default" type="button">
																<i class="fa fa-caret-down"></i>
															</button>
														</div>
													</div>
													<input type="hidden" name="h_no" value="${h_no}"> <input
														type="hidden" name="room_type" value="standard"> <input
														type="submit" class="submit-button" value="수정 및 등록">
												</form>

											</small>
										</div>
									</div>
								</div>
							</div>
							<div class="carousel-item">
								<div class="carousel-caption">
									<div class="row">
										<div class="col-sm-3">
											<img src="http://via.placeholder.com/200x200" alt=""
												class="rounded-circle img-fluid">
										</div>
										<div class="col-sm-9">
											<h3>Suite</h3>
											<small>
												<form action="/manager/roomManager/${h_no}" method="post" enctype="multipart/form-data">
													<div class="qty mt-5">
														<label class="price_label">Price</label> <span
															class="minus bg-dark">-</span> <input type="number"
															class="count" name="room_price" value="100000"> <span
															class="plus bg-dark">+</span>
													</div>
													<input type="file" name="pic_room_url"
														placeholder="Room의 이미지를 등록해주세요.">
													
													<div class="input-group spinner">
														<input  type="number" name="roomCnt" class="form-control" value="1" min="0" size="100px">
														<div class="input-group-btn-vertical">
															<button class="btn btn-default" type="button">
																<i class="fa fa-caret-up"></i>
															</button>
															<button class="btn btn-default" type="button">
																<i class="fa fa-caret-down"></i>
															</button>
														</div>
													</div>
													<input type="hidden" name="h_no" value="${h_no}"> <input
														type="hidden" name="room_type" value="standard"> <input
														type="submit" class="submit-button" value="수정 및 등록">
												</form>
											</small>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="float-right navi">
							<a class="" href="#carouselExampleControls" role="button"
								data-slide="prev"> <span
								class="carousel-control-prev-icon ico" aria-hidden="true"></span>
								<span class="sr-only">Previous</span>
							</a> <a class="" href="#carouselExampleControls" role="button"
								data-slide="next"> <span
								class="carousel-control-next-icon ico" aria-hidden="true"></span>
								<span class="sr-only">Next</span>
							</a>
						</div>
					</div>
				</div>
			</div>



		</div>

	</div>
	<%@include file="../sub_page/footer.html"%>

	<script type="text/javascript">
		$(document).ready(function() {
			$('.count').prop('disabled', true);
			$(document).on('click', '.plus', function() {
				$('.count').val(parseInt($('.count').val()) + 1000);
			});
			$(document).on('click', '.minus', function() {
				$('.count').val(parseInt($('.count').val()) - 1000);
				if ($('.count').val() == 0) {
					$('.count').val(1);
				}
			});
		});
		
		$(function(){

		    $('.spinner .btn:first-of-type').on('click', function() {
		      var btn = $(this);
		      var input = btn.closest('.spinner').find('input');
		      if (input.attr('max') == undefined || parseInt(input.val()) < parseInt(input.attr('max'))) {    
		        input.val(parseInt(input.val(), 10) + 1);
		      } else {
		        btn.next("disabled", true);
		      }
		    });
		    $('.spinner .btn:last-of-type').on('click', function() {
		      var btn = $(this);
		      var input = btn.closest('.spinner').find('input');
		      if (input.attr('min') == undefined || parseInt(input.val()) > parseInt(input.attr('min'))) {    
		        input.val(parseInt(input.val(), 10) - 1);
		      } else {
		        btn.prev("disabled", true);
		      }
		    });

		})
	</script>
	<script src="../resources/bootstrap/scripts/common/jquery-3.2.1.min.js"></script>
	<script src="../resources/bootstrap/scripts/common/moment.min.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script src="../resources/bootstrap/styles/common/bootstrap4/popper.js"></script>
	<script
		src="../resources/bootstrap/styles/common/bootstrap4/bootstrap.min.js"></script>
	<script
		src="../resources/bootstrap/plugins/common/OwlCarousel2-2.2.1/owl.carousel.js"></script>
	<script src="../resources/bootstrap/plugins/common/easing/easing.js"></script>
	<script
		src="../resources/bootstrap/plugins/common/parallax-js-master/parallax.min.js"></script>
	<script
		src="../resources/bootstrap/plugins/common/magnific-popup/jquery.magnific-popup.min.js"></script>
	<script src="../resources/bootstrap/scripts/common/pignose.calendar.js"></script>
	<script src="../resources/bootstrap/scripts/common/custom.js"></script>
	<script src="../resources/bootstrap/scripts/account/registerForm.js"></script>
	<script src="../resources/bootstrap/scripts/common/menuEffect.js"
		type="text/javascript"></script>
	<script type="text/javascript">
		
	</script>
</body>
</html>