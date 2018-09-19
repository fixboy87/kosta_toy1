<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">
<meta charset="UTF-8">

  <head>
    
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>eCommerce Product Detail</title>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="../resources/bootstrap/styles/common/bootstrap4/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../resources/bootstrap/plugins/common/OwlCarousel2-2.2.1/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="../resources/bootstrap/plugins/common/OwlCarousel2-2.2.1/owl.theme.default.css">
<link rel="stylesheet" type="text/css" href="../resources/bootstrap/plugins/common/OwlCarousel2-2.2.1/animate.css">
<link href="../resources/bootstrap/plugins/common/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="../resources/bootstrap/styles/common/main_styles.css">
<link rel="stylesheet" type="text/css" href="../resources/bootstrap/styles/common/responsive.css">
<link rel="stylesheet" type="text/css" href="../resources/bootstrap/styles/common/custom.css">
<link href="../resources/bootstrap/plugins/common/magnific-popup/magnific-popup.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="../resources/bootstrap/styles/common/offers_styles.css"><!-- ok -->
<link rel="stylesheet" type="text/css" href="../resources/bootstrap/styles/common/offers_responsive.css"><!-- ok -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>
<link rel="stylesheet" type="text/css" href="http:../resources/bootstrap/styles/HY_Style/ListPage.css">
<link rel="stylesheet" type="text/css" href="../../resources/bootstrap/styles/HY_Style/detailPage.css">
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic" rel="stylesheet">
<style type="text/css">

/*****************globals*************/

.preview {
  display: -webkit-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-orient: vertical;
  -webkit-box-direction: normal;
  -webkit-flex-direction: column;
      -ms-flex-direction: column;
          flex-direction: column; }
  @media screen and (max-width: 996px) {
    .preview {
      margin-bottom: 20px; } }

.preview-pic {
  -webkit-box-flex: 1;
  -webkit-flex-grow: 1;
      -ms-flex-positive: 1;
          flex-grow: 1; }

.preview-thumbnail.nav-tabs {
  border: none;
  margin-top: 15px; }
  .preview-thumbnail.nav-tabs li {
    width: 18%;
    margin-right: 2.5%; }
    .preview-thumbnail.nav-tabs li img {
      max-width: 100%;
      display: block; }
    .preview-thumbnail.nav-tabs li a {
      padding: 0;
      margin: 0; }
    .preview-thumbnail.nav-tabs li:last-of-type {
      margin-right: 0; }

.tab-content {
  overflow: hidden; }
  .tab-content img {
    width: 100%;
    -webkit-animation-name: opacity;
            animation-name: opacity;
    -webkit-animation-duration: .3s;
            animation-duration: .3s; }

.card {
  margin-top: 200px;
  background: #eee;
  padding: 3em;
  line-height: 1.5em;
   }

@media screen and (min-width: 997px) {
  .wrapper {
    display: -webkit-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    display: flex; } }

.details {
  display: -webkit-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-orient: vertical;
  -webkit-box-direction: normal;
  -webkit-flex-direction: column;
      -ms-flex-direction: column;
          flex-direction: column; }

.colors {
  -webkit-box-flex: 1;
  -webkit-flex-grow: 1;
      -ms-flex-positive: 1;
          flex-grow: 1; }

.product-title, .price, .sizes, .colors {
  text-transform: UPPERCASE;
  font-weight: bold; }

.checked, .price span {
  color: red; }

.product-title, .rating, .product-description, .price, .vote, .sizes {
  margin-bottom: 15px; }

.product-title {
  margin-top: 0; }

.size {
  margin-right: 10px; }
  .size:first-of-type {
    margin-left: 40px; }

.color {
  display: inline-block;
  vertical-align: middle;
  margin-right: 10px;
  height: 2em;
  width: 2em;
  border-radius: 2px; }
  .color:first-of-type {
    margin-left: 20px; }

.add-to-cart, .like {
  background: red;
  padding: 1.2em 1.5em;
  border: none;
  text-transform: UPPERCASE;
  font-weight: bold;
  color: #fff;
  -webkit-transition: background .3s ease;
          transition: background .3s ease; }
  .add-to-cart:hover, .like:hover {
    background: #b36800;
    color: #fff; }

.not-available {
  text-align: center;
  line-height: 2em; }
  .not-available:before {
    font-family: fontawesome;
    content: "\f00d";
    color: #fff; }

.orange {
  background: #ff9f1a; }

.green {
  background: #85ad00; }

.blue {
  background: #0076ad; }

.tooltip-inner {
  padding: 1.3em; }

@-webkit-keyframes opacity {
  0% {
    opacity: 0;
    -webkit-transform: scale(3);
            transform: scale(3); }
  100% {
    opacity: 1;
    -webkit-transform: scale(1);
            transform: scale(1); } }

@keyframes opacity {
  0% {
    opacity: 0;
    -webkit-transform: scale(3);
            transform: scale(3); }
  100% {
    opacity: 1;
    -webkit-transform: scale(1);
            transform: scale(1); } }

/*# sourceMappingURL=style.css.map */

</style>
<script type="text/javascript">
	$(document).ready(function(){
		var bookingday = $("#session").html();
		var price = $("#price1").html();
		var total = price*bookingday;
		
		$("#totall").html(total);
	});
	

	
	$(document).ready(function() {
		var formObj = $("form[role='form']");
		$("#button").on("click", function() {
			formObj.attr("action", "/pay/index");
			formObj.attr("method", "get");
			formObj.submit();
		});
	});
  </script>

  </head>

  <body>

<input type="hidden" id="uid" name="uid" val="<%=(String)session.getAttribute("id")%>"/>
<input type="hidden" id="type" name="type" val="<%=(String)session.getAttribute("type")%>"/>
<input type="hidden" id="name" name="name" val="<%=(String)session.getAttribute("name")%>"/>
	<c:forEach var="order" items="${booking}">
	<div class="container" style="margin-bottom: 100px; margin-top: 70px; ">
		<div class="card">
			<div class="container-fliud">
				<div class="wrapper row">
					<div class="preview col-md-6">
						
						<div class="preview-pic tab-content">
						  <div class="tab-pane active" id="pic-1">
						  	<img src="../resources/images/pages/HotelRoomImg/${order.pic_room_url}" />
						  </div>
					
						</div>
						
					</div>
					<div class="details col-md-6" style="font-family: 'Nanum Gothic', sans-serif;">
						<h2 class="product-title" >${order.h_name}</h2>
						<div class="rating">
							<div><h3>체크인ㅤㅤㅤㅤ-->ㅤㅤㅤㅤ체크아웃</h3></div>
							<div><h3><%=(String)session.getAttribute("start_date")%>ㅤㅤ-->ㅤㅤ<%=(String)session.getAttribute("end_date")%> </h3> </div>
						</div>
						<div id="session" style="display: none;"><%=(int)session.getAttribute("bookingDays") %></div>
						<p class="product-description">${order.room_type}</p>						
						<p class="vote">${order.h_address}</p>
						<p class="vote">${order.h_phonenum}</p>
						<div id="price1" style="display: none;">${order.room_price}</div>
						<h4 class="price"> 결제금액 : <span id="totall"> </span> <span>만원</span></h4>
						<form role="form" action="" method="post" id="formdata">
							<input type="hidden" value="${order.pic_room_url}">
							<input type="hidden" value="${order.h_name}">
							<input type="hidden" value="${order.room_type}">
							<input type="hidden" value="${order.room_price}">
							<input type="hidden" value="${order.h_address}">							
							<input type="hidden" value="${order.h_phonenum}">
						</form>
						
						<div class="action">
							<button class="add-to-cart btn btn-default" id="button" type="button" style="font-size: 15px;">결  제</button>			
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</c:forEach>
<script src="http:../resources/bootstrap/styles/common/bootstrap4/popper.js"></script>
<script src="http:../resources/bootstrap/styles/common/bootstrap4/bootstrap.min.js"></script>
<script src="http:../resources/bootstrap/plugins/common/greensock/TweenMax.min.js"></script>
<script src="http:../resources/bootstrap/plugins/common/greensock/TimelineMax.min.js"></script>
<script src="http:../resources/bootstrap/plugins/common/scrollmagic/ScrollMagic.min.js"></script>
<script src="http:../resources/bootstrap/plugins/common/greensock/animation.gsap.min.js"></script>
<script src="http:../resources/bootstrap/plugins/common/greensock/ScrollToPlugin.min.js"></script>
<script src="http:../resources/bootstrap/plugins/common/Isotope/isotope.pkgd.min.js"></script>
<script src="http:../resources/bootstrap/plugins/common/easing/easing.js"></script>
<script src="http:../resources/bootstrap/plugins/common/parallax-js-master/parallax.min.js"></script>
<script src="http:../resources/bootstrap/scripts/common/offers_custom.js"></script>

<script src="http:../resources/bootstrap/scripts/common/menuEffect.js" type="text/javascript"></script>
<script src="http:../resources/bootstrap/scripts/common/custom.js"></script>
  </body>
  
</html>

























