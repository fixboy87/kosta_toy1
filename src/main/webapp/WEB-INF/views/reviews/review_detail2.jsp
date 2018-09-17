<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("utf-8");
%>
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
<link rel="stylesheet" type="text/css"
	href="../resources/bootstrap/styles/common/bootstrap4/bootstrap.min.css">
<link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<script
	src="../../resources/bootstrap/scripts/common/jquery-3.2.1.min.js"></script>
<script
	src="../../resources/bootstrap/styles/common/bootstrap4/popper.js"></script>
<script
	src="../../resources/bootstrap/styles/common/bootstrap4/bootstrap.min.js"></script>
<script
	src="../../resources/bootstrap/plugins/common/greensock/TweenMax.min.js"></script>
<script
	src="../../resources/bootstrap/plugins/common//greensock/TimelineMax.min.js"></script>
<script
	src="../../resources/bootstrap/plugins/common//scrollmagic/ScrollMagic.min.js"></script>
<script
	src="../../resources/bootstrap/plugins/common//greensock/animation.gsap.min.js"></script>
<script
	src="../../resources/bootstrap/plugins/common//greensock/ScrollToPlugin.min.js"></script>
<script src="../../resources/bootstrap/plugins/common//easing/easing.js"></script>
<script
	src="../../resources/bootstrap/plugins/common//parallax-js-master/parallax.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link
	href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css"
	rel="stylesheet">
<script
	src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>
<!-- <--------------------------syj------------>
<script
	src="../../resources/bootstrap/scripts/syj_script/reviewList/list.js"></script>
<link rel="stylesheet" type="text/css"
	href="../../resources/bootstrap/styles/syj_style/syj_contact.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>



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

</head>
<body>
	<%@include file="../sub_page/header_menu.jsp"%>



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
						<td class="tg-0pky">${board.h_name}</td>
						<td class="tg-0pky">숙박일수</td>
						<td class="tg-0pky">${board.number_of_stay_days}일</td>
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
								<td colspan='4'><img src="C:/upload/${board.r_fname}" /></td>
							</c:when>
							<c:when test="${board.r_fname==null }">
								<td><c:out value="NO IMAGE"></c:out></td>
							</c:when>
						</c:choose>
					</tr>
					<tr>
						<td class="tg-0pky" colspan="4">${board.r_content}</td>
					</tr>
					<tr>
						<td colspan="4" class="only_writer">
							<button id="modifyBtn" value="수정">수정</button>
							<button id="removeBtn" value="삭제">삭제</button> <a
							href="reveiw_updateForm">수정</a> <a
							href="review_deleteAction.do?r_no=${board.r_no}">삭제</a>
						</td>
					</tr>
				</table>
				<!-- <a href="review_list.do">목록</a> -->
				<input type="button" value="목록"
					class="w3-button w3-white w3-round-small" onclick="history.go(-1)">
			</div>
		</div>



		<!-- *댓글의 등록에 필요한 form -->
		<div class="row">
			<div class="col-md-12">
				<div class="box box-success">
					<div class="box-header">
						<h3 class="box-title">ADD NEW REPLY</h3>
					</div>
					<%-- <c:if test="${not empty login }"> --%>

					<div class="box-body">
						<label for="exampleInputEmail1">Writer</label> <input
							class="form-control" type="text" placeholder="USER ID"
							id="newReplyWriter"
							value="<%=(String) session.getAttribute("uid")%>"
							readonly="readonly"> <label for="exampleInputEmail1">ReplyText</label>
						<input class="form-control" type="text" placeholder="REPLY TEXT"
							id="newReplyText">
					</div>
					<!-- /.box-body -->
					<div class="box-footer">
						<button type="button" class="btn btn-primary" id="replyAddBtn">ADD
							REPLY</button>
					</div>
				</div>
			</div>
		</div>

	<script type="text/javascript">
                   $(document).ready(function() {
                             
                             $('#modifyBtn').click(function(event) {
                                      location.href = "/reviews/updateReview/" + r_no;
                             })
                             $('#removeBtn').click(function(event) {
                                      location.href = "/reviews/deleteReview/" + r_no;
                             })
                   
                   })
          </script>
	<script type="text/javascript">
		$("#replyAddBtn").  on("click", function() {
			alert("댓글 추가");
			/* var replyerObj = $("#newReplyWriter"); /* 태그의 아이디를 여러번 사용하기 위해 변수에 담음 */
			var replytextObj = $("#newReplyText");
			var replyer = replyerObj.val(); /* 입력값 가져오기 */
			var replytext = replytextObj.val();
			$.ajax({
				type : 'post',
				url : '/reivew_replies/',
				headers : {
					"Content-Type" : "application/json",
					"X-HTTP-Method-Override" : "POST"
				},
				dataType : 'text',
				data : JSON.stringify({
					r_no : r_no,
					id : replyer,
					r_r_content : replytext
				}),
				success : function(result) {
					console.log("result: " + result);
					if (result == 'SUCCESS') {
						alert("등록 되었습니다.");
						replyPage = 1;
						getPage("/reivew_replies/" + r_no + "/" + replyPage); /* 등록 후 페이징1로 지정 */
						replyerObj.val(""); /* 등록하기위해 작성한 것 지워줌 */
						replytextObj.val("");
					}
				}
			}); 

		});
	</script>

	<%@include file="../sub_page/footer.html"%>

</body>
</html>