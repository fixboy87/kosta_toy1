<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%request.setCharacterEncoding("utf-8");%>

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
<script src="../resources/bootstrap/scripts/common/contact_custom.js"></script>
<%-- summernote 라이브러리 추가 --%>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<!-- <script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> -->
<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.4/summernote.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.4/summernote.js"></script>
<!-- <--------------------------syj------------>
<!-- <script src="/scripts/syj_script/reviewList/list.js"></script> -->
<script src="../resources/bootstrap/scripts/syj_script/reviewList/list.js"></script>
<link rel="stylesheet" type="text/css" href="../resources/bootstrap/styles/syj_style/syj_contact.css">
<script src="../resources/bootstrap/scripts/syj_script/reviewList/list.js"></script>
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
					<button id="button-all">전체보기</button>
					<button id="button-photo" value="포토">포토</button>
					<select name="option">
						<option  value="최신순">최신순</option>
						<option  value="평점순">평점순</option>
					</select> 
					<a href="/review/bookingList_check">후기 작성</a>
				</div>
			</header>

			<div class="table_container">
				<c:forEach var="board" items="${list}">
					<!-- <a class="btn btn-default" data-target="#modal" data-toggle="modal"> -->
						<table class="list_table" width="800">
							<tr>
								<td rowspan="4" class="img_td" id="board_r_fname"><c:if
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
								<td class="table_top">제목</td>
								<td colspan="3" id="board_r_title">${board.r_title}</td>
								<td class="table_top">작성자</td>
								<td colspan="2" id="board_id">${board.id}</td>
							</tr>
							<tr>
								<td>평점</td>
								<td colspan="3"  >${board.r_grade}점</td>
								<td>등록일</td>
								<td class="table_right" id="board_r_redate">
								<fmt:parseDate var="dateString"
										value="${board.r_redate}" pattern="yyyy-MM-dd" />
										 <fmt:formatDate
										value="${dateString}" pattern="yy/MM/dd" /></td>
							</tr>
							<tr class="table_bottom">
								<td>호텔명</td>
								<td id="board_h_name">${board.h_name }</td>
								<td>숙박일수</td>
								<td id="board_number_of_stay_days">${board.number_of_stay_days }</td>
								<td>조회수</td>
								<td colspan="2" class="table_right" id="board_r_hitcount">${board.r_hitcount }
								<input type="hidden" id="board_r_content" value="${board.r_content}">
								<input type="hidden" id="board_r_no" value="${board.r_no }">
								<input type="hidden" id="board_r_grade" value="${board.r_grade}">
								</td>
							</tr>
						</table>
					<!-- </a> -->
					<a href="/review/detailReview/${board.r_no}">후기자세히보기</a>
				</c:forEach>
			</div>
			
			<div class="box-footer">

					<div class="text-center">
						<ul class="pagination">

							<c:if test="${pageMaker.prev}">
								<li><a
									href="/review/review_list/${pageMaker.makeSearch(pageMaker.startPage - 1) }">&laquo;</a></li>
							</c:if>

							<c:forEach begin="${pageMaker.startPage }"
								end="${pageMaker.endPage }" var="idx">
								<li
									<c:out value="${pageMaker.cri.page == idx?'class =active':''}"/>>
									<a href="/review/review_list/${pageMaker.makeSearch(idx)}">${idx}</a>
								</li>
							</c:forEach>

							<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
								<li><a
									href="/review/review_list/${pageMaker.makeSearch(pageMaker.endPage +1) }">&raquo;</a></li>
							</c:if>

						</ul>
					</div>

				</div>
			
		</div>
	</div>

	<!-- <p><a class="btn btn-default" data-target="#modal" data-toggle="modal">후기 보기2</a></p> -->
	
	<div class="row" style="width: 75%;height: 80%;">
		<div class="modal" id="modal" tabindex="-1">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<div id="r_title"></div>
						<button class="close" data-dismiss="modal">&times;</button>
					</div>
					<div class="modal-body" style="text-align: center;">
						<input class="sessionId" type="hidden" value="${sessionId}">
						<table class="tg" align="center">
							<tr>
								<td class="tg-0pky">호텔명</td>
								<td class="tg-0pky" id="h_name"></td>
								<td class="tg-0pky">숙박일수</td>
								<td class="tg-0pky" id="number_of_stay_days"></td>
							</tr>
							<tr>
								<td class="tg-0pky" >평점 :</td>
								<td id="r_grade"></td>
								<td class="tg-0pky" id="id"></td>
								<td class="tg-0pky" id="r_redate"></td>
							</tr>
							<tr>
								<td colspan='4'>[ MAIN IMAGE ]</td>
							</tr>
							<tr>
								<c:choose>
									<c:when test="${board.r_fname!=null }">
										<td colspan='4'><img
											src="images/pages/review_main_img/${board.r_fname}" /></td>
									</c:when>
									<c:when test="${board.r_fname==null }">
										<td><c:out value="NO IMAGE"></c:out></td>
									</c:when>
								</c:choose>
							</tr>
							<tr>
								<td class="tg-0pky" colspan="4" id="r_content">
								</td>
							</tr>
							<tr>
								<td colspan="4" class="only_writer">
									<a href="reveiw_update?r_no=${board.r_no}">수정</a> 
									<a href="review_delete?r_no=${board.r_no}">삭제</a>
									<button class="btn-board_update">수정</button>
									<button class="btn-board_delete">삭제</button>
								</td>
							</tr>
						</table>
					</div>
				</div>
			</div>    
		</div>
	</div>

	<script type="text/javascript">
	$(document).ready(function() {
		
		var result = '${msg}'
		
		switch (result) {
		case 'REVIEW_INSERT SECCESS':
			alert("후기 등록이 완료되었습니다.");
			break;
		case 'REVIEW_UPDATE SECCESS':
			alert("후기 수정이 완료되었습니다.");
			break;
		case 'REVIEW_DELETE SECCESS':
			alert("후기 삭제가 완료되었습니다.");
			break;

		default:
			break;
		}
/* 
	  $("#review_button").click(function() {/
			$("#rooms").css("display", "none");
			$("#reviews").css("display", "block");
		});
		$("#rooms_button").click(function() {
			$("#rooms").css("display", "block");
			$("#reviews").css("display", "none");
		});
		
		$("#button-photo").click(function() {
			self.location = "/review/review_list"
				/* + '${pageMaker.makeQuery(1)}' 
				+ "searchType="
				+ $("select option:selected").val()
				+ "&keyword=" + $('#keywordInput').val();

		})  
		 */
		 
		 
	});
		
	</script>
	</body>
</html>