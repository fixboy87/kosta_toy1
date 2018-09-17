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
}M
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