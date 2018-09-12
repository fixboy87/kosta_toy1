<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="kr">

<head>
<title>Offers</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Destino project">
<meta name="viewport" content="width=device-width, initial-scale=1">


<link rel="stylesheet" type="text/css"
	href="http://localhost:8081/kostaProject1/styles/common/bootstrap4/bootstrap.min.css">
<!-- ok -->
<link
	href="http://localhost:8081/kostaProject1/plugins/common/font-awesome-4.7.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<!-- ok -->
<link rel="stylesheet" type="text/css"
	href="http://localhost:8081/kostaProject1/styles/common/offers_styles.css">
<!-- ok -->
<link rel="stylesheet" type="text/css"
	href="http://localhost:8081/kostaProject1/styles/common/offers_responsive.css">
<!-- ok -->
<link rel="stylesheet" type="text/css"
	href="http://localhost:8081/kostaProject1/plugins/common/OwlCarousel2-2.2.1/owl.carousel.css">
<link rel="stylesheet" type="text/css"
	href="http://localhost:8081/kostaProject1/plugins/common/OwlCarousel2-2.2.1/owl.theme.default.css">
<link rel="stylesheet" type="text/css"
	href="http://localhost:8081/kostaProject1/plugins/common/OwlCarousel2-2.2.1/animate.css">
<link
	href="http://localhost:8081/kostaProject1/plugins/common/magnific-popup/magnific-popup.css"
	rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css"
	href="http://localhost:8081/kostaProject1/styles/common/main_styles.css">
<link rel="stylesheet" type="text/css"
	href="http://localhost:8081/kostaProject1/styles/common/responsive.css">
<link rel="stylesheet" type="text/css"
	href="http://localhost:8081/kostaProject1/styles/common/custom.css">

<!--레인지 슬라이더 -->
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script
	src="http://localhost:8081/kostaProject1/scripts/common/jquery-3.2.1.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<!-- custom JS -->
<script type="text/javascript"
	src="http://localhost:8081/kostaProject1/scripts/HY_Script/priceRang.js"></script>
<script type="text/javascript"
	src="http://localhost:8081/kostaProject1/scripts/HY_Script/SearchConditions.js"></script>

<!-- 달력 -->
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<!-- Custom Css -->
<link rel="stylesheet" type="text/css"
	href="http://localhost:8081/kostaProject1/styles/HY_Style/ListPage.css">

<style type="text/css">
	.area{
		width: 50%;
		height: 70%;
	}
 	#rooms{
		background-color: yellow;
		display: block;
	}
	#reviews{
		background-color: aqua;
		display: none;
	}
	 
</style>
</head>
<body>

	<button id="rooms_button">방 목록</button>
	<button id="review_button">후기</button>
	
	<div class="area" id="rooms">
		방1<br>
		방2<br>
		방3<br>
		방4<br>
		방5<br>
		방6<br>
	</div>
	
	<div class="area" id="reviews">
		<div>
			<header class="list">
				<div class="contact_form_container" id="list_container">

					<input type="button" value=" 전체보기 "> <input type="button"
						value=" 포토 "> <select name="정렬">
						<option value="최신순">최신순</option>
						<option value="평점순">평점순</option>
						<option value="최신순">최신순</option>
					<!-- </select> <a href="review_checkAction.do">후기 작성</a> -->
					</select> <a href="review_checkAction.do">후기 작성</a>
				</div>
			</header>

			<div class="table_container">
				<c:forEach var="board" items="${list}">
					<table class="list_table" width="800">
						<tr>
							<td class="r_no">${board.r_no }</td>
							<td rowspan="4" class="img_td"><c:if
									test="${board.r_fname != null }">
									<c:set var="head"
										value="${fn:substring(board.r_fname, 0, fn:length(board.r_fname)-4) }" />
									<c:set var="pattern"
										value="${fn:substring(board.r_fname, 	fn:length(head) +1, fn:length(board.r_fname)) }" />
									<c:choose>
										<c:when
											test="${pattern == 'jpg' || pattern == 'gif' || pattern == 'JPG' || pattern == 'GIF' }">
											<img
												src="images/pages/review_main_img/${head }_small.${pattern}">
										</c:when>
										<c:otherwise>
											<c:out value="NO IMAGE"></c:out>
										</c:otherwise>
									</c:choose>
								</c:if> <c:if test="${board.r_fname==null }">
									<c:out value="NO IMAGE"></c:out>
								</c:if></td>
							<td class="table_top"><a
								href="review_deatailAction.do?r_no=${board.r_no }">제목</a></td>
							<td colspan="3" class="table_top">${board.r_title}</td>
							<td class="table_top">작성자</td>
							<td colspan="2" class="table_edge1">${board.id}</td>
						</tr>
						<tr>
							<td>평점</td>
							<td colspan="3">${board.r_grade}</td>
							<td>등록일</td>
							<td class="table_right"><fmt:parseDate var="dateString"
									value="${board.r_redate}" pattern="yyyy-MM-dd" /> <fmt:formatDate
									value="${dateString}" pattern="yy/MM/dd" /></td>
						</tr>
						<tr class="table_bottom">
							<td>호텔명</td>
							<td>${board.hotle_name }</td>
							<td>숙박일수</td>
							<td>${board.stay_day }</td>
							<td>조회수</td>
							<td colspan="2" class="table_right">${board.r_hitcount }</td>
						</tr>
					</table>
				</c:forEach>
			</div>
		</div>
	</div>



	<script type="text/javascript">
		$("#review_button").click(function() {
			$("#rooms").css("display", "none");
			$("#reviews").css("display", "block");
		})
		$("#rooms_button").click(function() {
			$("#rooms").css("display", "block");
			$("#reviews").css("display", "none");
		})
	</script>
	<!-- <script src="../../scripts/common/jquery-3.2.1.min.js"></script> -->
	<script
		src="http://localhost:8081/kostaProject1/styles/common/bootstrap4/popper.js"></script>
	<script
		src="http://localhost:8081/kostaProject1/styles/common/bootstrap4/bootstrap.min.js"></script>
	<script
		src="http://localhost:8081/kostaProject1/plugins/common/greensock/TweenMax.min.js"></script>
	<script
		src="http://localhost:8081/kostaProject1/plugins/common/greensock/TimelineMax.min.js"></script>
	<script
		src="http://localhost:8081/kostaProject1/plugins/common/scrollmagic/ScrollMagic.min.js"></script>
	<script
		src="http://localhost:8081/kostaProject1/plugins/common/greensock/animation.gsap.min.js"></script>
	<script
		src="http://localhost:8081/kostaProject1/plugins/common/greensock/ScrollToPlugin.min.js"></script>
	<script
		src="http://localhost:8081/kostaProject1/plugins/common/Isotope/isotope.pkgd.min.js"></script>
	<script
		src="http://localhost:8081/kostaProject1/plugins/common/easing/easing.js"></script>
	<script
		src="http://localhost:8081/kostaProject1/plugins/common/parallax-js-master/parallax.min.js"></script>
	<script
		src="http://localhost:8081/kostaProject1/scripts/common/offers_custom.js"></script>
	<!--  메뉴이펙트 스크립트 -->
	<script
		src="http://localhost:8081/kostaProject1/scripts/common/menuEffect.js"
		type="text/javascript"></script>
	<script
		src="http://localhost:8081/kostaProject1/scripts/common/custom.js"></script>
</body>
</html>