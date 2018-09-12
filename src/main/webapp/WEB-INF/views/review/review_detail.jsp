<%-- <%@page import="yanoll.models.vo.Review_Board"%>
<%@page import="java.util.List"%>
<%@page import="yanoll.models.dao.ReviewDao"%>
<%@page import="yanoll.models.vo.Review_listModel"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Destino project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css"
	href="../../styles/common/bootstrap4/bootstrap.min.css">
<link
	href="../../plugins/common/font-awesome-4.7.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css"
	href="../../styles/syj_style/syj_contact.css">
<link rel="stylesheet" type="text/css"
	href="../../styles/gng_style/gng_main.css">
<script src="../../scripts/common/jquery-3.2.1.min.js"></script>
<script src="../../styles/common/bootstrap4/popper.js"></script>
<script src="../../styles/common/bootstrap4/bootstrap.min.js"></script>
<script src="../../plugins/common/greensock/TweenMax.min.js"></script>
<script src="../../plugins/common//greensock/TimelineMax.min.js"></script>
<script src="../../plugins/common//scrollmagic/ScrollMagic.min.js"></script>
<script src="../../plugins/common//greensock/animation.gsap.min.js"></script>
<script src="../../plugins/common//greensock/ScrollToPlugin.min.js"></script>
<script src="../../plugins/common//easing/easing.js"></script>
<script src="../../plugins/common//parallax-js-master/parallax.min.js"></script>
<script src="../../scripts/common/contact_custom.js"></script>
summernote 라이브러리 추가
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link
	href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css"
	rel="stylesheet">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script
	src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>
<link
	href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.4/summernote.css"
	rel="stylesheet">
<script
	src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.4/summernote.js"></script>

<script src="../../scripts/syj_script/reviewList/list.js"></script> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Destino project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css"
	href="http://localhost:8081/kostaProject1/styles/common/bootstrap4/bootstrap.min.css">
<link
	href="../../plugins/common/font-awesome-4.7.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css"
	href="http://localhost:8081/kostaProject1/styles/syj_style/syj_contact.css">
<link rel="stylesheet" type="text/css"
	href="../../styles/gng_style/gng_main.css">
<script
	src="http://localhost:8081/kostaProject1/scripts/common/jquery-3.2.1.min.js"></script>
<script
	src="http://localhost:8081/kostaProject1/styles/common/bootstrap4/popper.js"></script>
<script
	src="http://localhost:8081/kostaProject1/styles/common/bootstrap4/bootstrap.min.js"></script>
<script
	src="http://localhost:8081/kostaProject1/plugins/common/greensock/TweenMax.min.js"></script>
<script
	src="http://localhost:8081/kostaProject1/plugins/common//greensock/TimelineMax.min.js"></script>
<script
	src="http://localhost:8081/kostaProject1/plugins/common//scrollmagic/ScrollMagic.min.js"></script>
<script
	src="http://localhost:8081/kostaProject1/plugins/common//greensock/animation.gsap.min.js"></script>
<script
	src="http://localhost:8081/kostaProject1/plugins/common//greensock/ScrollToPlugin.min.js"></script>
<script
	src="http://localhost:8081/kostaProject1/plugins/common//easing/easing.js"></script>
<script
	src="http://localhost:8081/kostaProject1/plugins/common//parallax-js-master/parallax.min.js"></script>
<script
	src="http://localhost:8081/kostaProject1/scripts/common/contact_custom.js"></script>

<!-- <--------------------------syj------------>
<!-- <script src="/scripts/syj_script/reviewList/list.js"></script> -->
<script
	src="http://localhost:8081/kostaProject1/scripts/syj_script/reviewList/list.js"></script>
<link rel="stylesheet" type="text/css"
	href="http://localhost:8081/kostaProject1/styles/syj_style/syj_contact.css">
<link rel="stylesheet" type="text/css"
	href="http://localhost:8081/kostaProject1/styles/gng_style/gng_main.css">
<%-- summernote 라이브러리 추가 --%>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link
	href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css"
	rel="stylesheet">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script
	src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>
<link
	href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.4/summernote.css"
	rel="stylesheet">
<script
	src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.4/summernote.js"></script>
<%
	String sessionId = (String) session.getAttribute("id");
	request.setAttribute("sessionId", sessionId);
%>
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
<body class="detail_body">



	<div>
		<h1>후기 디테일</h1>
		<div>
			<div class="detail_table_container" align="center">
				<input class="sessionId" type="hidden" value="${sessionId}">
				<table class="tg" align="center">
					<tr>
						<td class="tg-0pky">제목</td>
						<td class="tg-0pky" colspan="3">${board.r_title}</td>
					</tr>
					<tr>
						<td class="tg-0pky">호텔명</td>
						<td class="tg-0pky">${board.hotle_name}</td>
						<td class="tg-0pky">숙박일수</td>
						<td class="tg-0pky">${board.stay_day}일</td>
					</tr>
					<tr>
						<td class="tg-0pky">평점 : ${board.r_grade}점</td>
						<td class="tg-0pky" id="board_id">${board.id}</td>
						<td class="tg-0pky" colspan="2"><fmt:parseDate
								var="dateString" value="${board.r_redate }" pattern="yyyy-MM-dd"></fmt:parseDate>
							<fmt:formatDate value="${dateString }" pattern="yy-MM-dd" /></td>
					</tr>
					<tr>
						<td colspan='4'>MAIN IMAGE</td>
					</tr>
					<tr>
						<c:choose>
							<c:when test="${board.r_fname!=null }">
								<td colspan='4'>
									<img src="images/pages/review_main_img/${board.r_fname}"/>
								</td>
							</c:when>
							<c:when test="${board.r_fname==null }">
								<td>
									<c:out value="NO IMAGE"></c:out>
								</td>
							</c:when>
						</c:choose>
					</tr>
					<tr>
						<td class="tg-0pky" colspan="4">${board.r_content}</td>
					</tr>
					<tr>
						<td colspan="4" class="only_writer">
							<a href="reveiw_updateFormAction.do?r_no=${board.r_no}">수정</a> 
							<a href="review_deleteAction.do?r_no=${board.r_no}">삭제</a>
						</td>
					</tr>
				</table>
				<!-- <a href="review_list.do">목록</a> -->
				<input type="button" value="목록">
			</div>
		</div>
	</div>
	
	
</html>