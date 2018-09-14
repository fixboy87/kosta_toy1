<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%request.setCharacterEncoding("utf-8");%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Destino project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="../resources/bootstrap/styles/common/bootstrap4/bootstrap.min.css">
<link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="../resources/bootstrap/styles/gng_style/gng_contact.css">
<link rel="stylesheet" type="text/css" href="../resources/bootstrap/styles/gng_style/gng_main.css">
<script src="../resources/bootstrap/scripts/common/jquery-3.2.1.min.js"></script>
<script src="../resources/bootstrap/styles/common/bootstrap4/popper.js"></script>
<script src="../resources/bootstrap/styles/common/bootstrap4/bootstrap.min.js"></script>
<script src="../resources/bootstrap/plugins/common/greensock/TweenMax.min.js"></script>
<script src="../resources/bootstrap/plugins/common//greensock/TimelineMax.min.js"></script>
<script src="../resources/bootstrap/plugins/common//scrollmagic/ScrollMagic.min.js"></script>
<script src="../resources/bootstrap/plugins/common//greensock/animation.gsap.min.js"></script>
<script src="../resources/bootstrap/plugins/common//greensock/ScrollToPlugin.min.js"></script>
<script src="../resources/bootstrap/plugins/common//easing/easing.js"></script>
<script src="../resources/bootstrap/plugins/common//parallax-js-master/parallax.min.js"></script>
<!-- <script src="../resources/bootstrap/scripts/common/contact_custom.js"></script> -->
<%-- summernote 라이브러리 추가 --%>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
<!-- <script src="http://code.jquery.com/jquery-latest.js"></script> -->
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>
<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.4/summernote.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.4/summernote.js"></script>
<!-- <--------------------------syj------------>
<!-- <script src="/scripts/syj_script/reviewList/list.js"></script> -->
<script src="../resources/bootstrap/scripts/syj_script/reviewList/list.js"></script>
<link rel="stylesheet" type="text/css" href="../resources/bootstrap/styles/syj_style/syj_contact.css">


	
	
<style type="text/css">
h1 {
	font-size: 300%;
	margin-top: 3%;
	margin-bottom: 1%;
	text-align: center;
}

.hotel_name {
	width: 5%;
	margin-bottom: 2%;
}
</style>

<%-- <%
	ReviewDao dao = ReviewDao.getInstance();
	List<Review_Board>list = dao.review_list();
	request.setAttribute("list", list);
	
	
%> --%>
</head>
<body>
	<%@include file="../sub_page/header_menu.jsp"%>


	<!-- Contact -->
	<%-- form의 textarea에 summernote 적용 --%>
<!-- 	<secion id="wrap"> -->
<!-- 		<section id="first"> -->
	<h1>후기 작성 가능 목록</h1>
	
		
		<!-- <div class="w3-margin-top w3-main"	> -->
		<div class="contact_form_container" id="list_container">

			<table class="check_tg">
				  <tr>
				    <th class="check_tg-s6z2" colspan="5" width="800px">후기 작성 가능 목록</th>
				  </tr>
				  <c:forEach var="hotel_OrderDTO" items="${list}">
				  <tr>
				  	<form action="/review/review_insert" method="get">
					  	<input type="hidden"  value="${hotel_OrderDTO.order_num}" name="order_num">
					  	<input type="hidden"  value="${hotel_OrderDTO.h_name}" name="h_name">
					  	<input type="hidden"  value="${hotel_OrderDTO.userNo}" name="userNo">
					  	<input type="hidden"  value="${hotel_OrderDTO.number_of_stay_days }" name="number_of_stay_days">
					    <td class="check_tg-5hgy">${hotel_OrderDTO.order_num}</td>
					   <td class="check_tg-5hgy">${hotel_OrderDTO.h_name}</td>
					    <td class="check_tg-5hgy">
					    	<%-- <fmt:parseDate var="start_day"
										value="${hotel_OrderDTO.start_day}" pattern="E MMM dd HH:mm:ss z yyyy"/>
										 <fmt:formatDate
										value="${start_day}" pattern="yy/MM/dd" />~
					    	<fmt:parseDate var="end_day"
										value="${hotel_OrderDTO.end_day}" pattern="E MMM dd HH:mm:ss z yyyy" />
										 <fmt:formatDate
										value="${end_day}" pattern="yy/MM/dd" /> --%>
					    ${hotel_OrderDTO.start_day}~${hotel_OrderDTO.end_day}
					    </td>
					    <td class="check_tg-5hgy">${hotel_OrderDTO.number_of_stay_days}일</td>
					    <td class="check_tg-hmp3"><input type="submit" value="후기작성"/></td>
					  	
				  	</form>
				  </tr>
				  </c:forEach>
				</table>
					<!-- <a href="review_list.do">후기 목록</a> -->
					<input type="button" value="취소" class="w3-button w3-white w3-round-small" onclick="history.go(-1)">
		</div>
		
	</section>
				



	</secion>

	<%@include file="../sub_page/footer.html"%>
</body>
</html>