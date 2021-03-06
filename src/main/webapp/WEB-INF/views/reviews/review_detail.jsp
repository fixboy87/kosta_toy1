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
	href="../../../resources/bootstrap/styles/common/bootstrap4/bootstrap.min.css">
<link href="../../plugins/font-awesome-4.7.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<script
	src="../../../resources/bootstrap/scripts/common/jquery-3.2.1.min.js"></script>
<script
	src="../../../resources/bootstrap/styles/common/bootstrap4/popper.js"></script>
<script
	src="../../../resources/bootstrap/styles/common/bootstrap4/bootstrap.min.js"></script>
<script
	src="../../../../resources/bootstrap/plugins/common/greensock/TweenMax.min.js"></script>
<script
	src="../../../resources/bootstrap/plugins/common//greensock/TimelineMax.min.js"></script>
<script
	src="../../../resources/bootstrap/plugins/common//scrollmagic/ScrollMagic.min.js"></script>
<script
	src="../../../resources/bootstrap/plugins/common//greensock/animation.gsap.min.js"></script>
<script
	src="../../../resources/bootstrap/plugins/common//greensock/ScrollToPlugin.min.js"></script>
<script src="../../../resources/bootstrap/plugins/common//easing/easing.js"></script>
<script
	src="../../../resources/bootstrap/plugins/common//parallax-js-master/parallax.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link
	href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css"
	rel="stylesheet">
<script
	src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>
<!-- <--------------------------syj------------>
<script src="/scripts/syj_script/reviewList/review_detail.js"></script>
<script
	src="../../../resources/bootstrap/scripts/syj_script/reviewList/list.js"></script>
<link rel="stylesheet" type="text/css"
	href="../../../resources/bootstrap/styles/syj_style/syj_contact.css">
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
				<table id="tg" align="center">
					<tr>
						<td class="tg-0pky"><label>제목  </label>${board.r_title}</td>
						<td class="tg-0pky" colspan="3"></td>
					</tr>
					<tr>
						<td class="tg-0pky"><label>호텔명  </label>${board.h_name}</td>
						<td class="tg-0pky"></td>
						<td class="tg-0pky"><label>숙박일수</label>${board.number_of_stay_days}일</td>
						<td class="tg-0pky"></td>
					</tr>
					<tr>
						<c:set var="grade" value="${board.r_grade}"/>
						<td class="tg-0pky">
							<label class="star">  
							<c:choose>
								<c:when test="${grade == '1' }">★</c:when>
								<c:when test="${grade == '2' }">★★</c:when>
								<c:when test="${grade == '3' }">★★★</c:when>
								<c:when test="${grade == '4' }">★★★★</c:when>
								<c:when test="${grade == '5' }">★★★★★</c:when>
							</c:choose>
							</label>
						</td>
						<td class="tg-0pky" id="board_id">${board.id}</td>
						<td class="tg-0pky" colspan="2"><fmt:parseDate
								var="dateString" value="${board.r_redate }" pattern="yyyy-MM-dd"></fmt:parseDate>
							<fmt:formatDate value="${dateString }" pattern="yy-MM-dd" /></td>
					</tr>
					<tr>
						<td colspan='4'><label>MAIN IMAGE</label></td>
					</tr>
					<tr id="img_container">
						<c:choose>
							<c:when test="${board.r_fname!=null }">
								<td colspan='4'><img src="/resources/images/pages/review_img${board.r_fname}" /></td>
							</c:when>
							<c:when test="${board.r_fname==null }">
								<td colspan="4"><c:out value="NO IMAGE"></c:out></td>
							</c:when>
						</c:choose>
					</tr>
					<tr>
						<td class="tg-0pky" id="content" colspan="4">${board.r_content}</td>
					</tr>
				</table>
				<div  class="only_writer">
							<button class="myButtonB" id="modifyBtn" value="수정">수정</button>
							<button class="myButtonB" id="removeBtn" value="삭제">삭제</button>
				</div>
				<input type="button" value="목록"
					class="w3-button w3-white w3-round-small" id="myButtonB" onclick="history.go(-1)">
					<input type="hidden" class="h_name" value="${board.h_name }">
			</div>
		</div>
	</div>


	<!-- reply -->
	<div class="row" style="width: 50%; margin-left: 20%;">
		<div class="col-md-12">
			<div class="box box-success">
				<div class="box-header">
					<h3 class="box-title">ADD NEW REPLY</h3>
				</div>
				
				<c:set var="board_id" value="${board.id}" />
				<c:set var="board_h_name" value="${board.h_name}" />
				<c:set var="uid" value="${uid}" />
				<c:set var="name" value="${name}" />
				<c:choose>
					<c:when test="${board_id eq uid || board_h_name eq name}">
						<div class="box-body">
							<label for="exampleInputEmail1">ReplyText</label> 
								<input class="form-control" type="text" placeholder="REPLY TEXT" style="width: 70%" id="newReplyText">
						</div>
						<div class="box-footer">
							<button type="button" class="btn btn-primary" id="replyAddBtn">
								ADD	REPLY
							</button>
						</div>
					</c:when>

					<c:otherwise>
						<div class="box-body">
							<div>
								  <p>리뷰와 댓글은 해당 호텔을 이용하신 고객과 호텔만  작성 가능합니다.</p>
                                  <p>허위 리뷰 및 댓글 작성을 방지하기 위함이니 이용자들의 이해 부탁드립니다.</p>
							</div>
						</div>
					</c:otherwise>
				</c:choose>
				
				<ul class="timeline">
					<li class="time-label" id="repliesDiv" style="size: 20"><span>Reply List</span></li>
				</ul>
				<div class='text-center'>
					<ul id="pagination" class="pagination pagination-sm no-margin ">
					</ul>
				</div>

			</div>
		</div>
	</div>


	<!-- Modal -->
	<!-- modify하기 위한 폼 -->
	<div id="modifyModal" class="modal modal-primary fade" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title"></h4>
				</div>
				<div class="modal-body" data-rno>
					<p>
						<input type="text" id="replytext" class="form-control">
					</p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-info" id="replyModBtn">Modify</button>
					<button type="button" class="btn btn-danger" id="replyDelBtn">DELETE</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
	<%@include file="../sub_page/footer.html"%>


<script id="template" type="text/x-handlebars-template">
{{#each .}}  
<li class="replyLi" data-rno={{r_r_no}}>
          <i class="fa fa-comments bg-blue"></i>
          <div class="timeline-item" >
                   <span class="time">
                              <i class="fa fa-clock-o"></i>{{prettifyDate r_r_redate}}
                   </span>
                   <h3 class="timeline-header"><strong>{{r_r_no}}</strong>-{{id}}</h3>
                   <div class="timeline-body">{{r_r_content}} </div>
                   <div class="timeline-footer">
                       {{#eqReplyer id}}
                 			<a class="btn btn-primary btn-xs" 
							data-toggle="modal" data-target="#modifyModal">Modify</a>	
                       {{/eqReplyer}}
          </div>
          </div>       
</li>
{{/each}}
</script>



	<script type="text/javascript">
		var r_no = ${board.r_no};
		var replyPage = 1;
		
		var b_name = $('.h_name').val();
		var loginId = $('#session_id').val();
		var name = $('#session_name').val();
		var type = $('#session_type').val();
	
	
		
		
		Handlebars.registerHelper("prettifyDate", function(timeValue) {
			var dateObj = new Date(timeValue);
			var year = dateObj.getFullYear();
			var month = dateObj.getMonth() + 1;
			var date = dateObj.getDate();
			return year + "/" + month + "/" + date;
		});
		

		Handlebars.registerHelper("eqReplyer", function(id, block) {
			id =id;
			var accum = '';
			if (loginId == id) {
				return accum += block.fn();
			}
			else if (name == id) {
				return	accum += block.fn();
			}
			return accum;
		});

		
		
		var printData = function(replyArr, target, templateObject) {

			var template = Handlebars.compile(templateObject.html());
			var html = template(replyArr);
			$(".replyLi").remove();
			target.after(html);
		}

		
		
		function getPage(pageInfo) {
			$.getJSON(pageInfo, function(data) {
				printData(data.list, $("#repliesDiv"), $('#template'));
				printPaging(data.pageMaker, $(".pagination"));

			});
		}

		
		
		var printPaging = function(pageMaker, target) {
			var str = "";
			if (pageMaker.prev) {
				str += "<li><a href='" + (pageMaker.startPage - 1)
						+ "'> << </a></li>";
			}
			for (var i = pageMaker.startPage, len = pageMaker.endPage; i <= len; i++) {
				var strClass = pageMaker.cri.page == i ? 'class=active' : '';
				str += "<li "+strClass+"><a href='"+i+"'>" + i + "</a></li>";
			}
			if (pageMaker.next) {
				str += "<li><a href='" + (pageMaker.endPage + 1)
						+ "'> >> </a></li>";
			}
			target.html(str);
		};

		
		
 	 	$(document).ready(function() {
			getPage("/reivew_replies/" + r_no + "/1");
		});
		
		
		$(".pagination").on("click", "li a", function(event) {
			event.preventDefault();
			replyPage = $(this).attr("href");
			getPage("/reivew_replies/" + r_no + "/" + replyPage);
		});

		
		
		/* replyAdd */
		$("#replyAddBtn").on("click", function() {
			var replytextObj = $("#newReplyText");
			var replytext = replytextObj.val();
			var replyer ="";
			
			if (type=="user") {
				replyer=loginId;
			} else {
				replyer=name;
			}
		
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
						getPage("/reivew_replies/" + r_no + "/" + replyPage);
						replytextObj.val("");
					}
				}
			});
		});

		
		
		$(".timeline").on("click", ".replyLi", function(event) {
			var reply = $(this);
			$("#replytext").val(reply.find('.timeline-body').text());
			$(".modal-title").html(reply.attr("data-rno"));
		});

		
		
		/* 수정 버튼 눌렀을때 컨트롤러에 url요청 */
		
		$("#replyModBtn").on("click", function() {
			var r_r_no = $(".modal-title").html();
			var replytext = $("#replytext").val();
			$.ajax({
				type : 'put',
				url : '/reivew_replies/' + r_r_no,
				headers : {
					"Content-Type" : "application/json",
					"X-HTTP-Method-Override" : "PUT" 
				},
				data : JSON.stringify({
					r_r_content : replytext
				}),
				dataType : 'text',
				success : function(result) {
					console.log("result: " + result);
					if (result == 'SUCCESS') {
						$("#modifyModal").modal('hide');
						alert("수정 되었습니다.");
						getPage("/reivew_replies/" + r_no + "/" + replyPage);
					}
				}
			});
		});
		
		
		
		
		/* 삭제 버튼 눌렀을때 컨트롤러에 url요청 */
		$("#replyDelBtn").on("click", function() {
			var r_r_no = $(".modal-title").html();
			$.ajax({
				type : 'delete',
				url : '/reivew_replies/' + r_r_no,
				headers : {
					"Content-Type" : "application/json",
					"X-HTTP-Method-Override" : "DELETE"
				},
				dataType : 'text',
				success : function(result) {
					console.log("result: " + result);
					if (result == 'SUCCESS') {
						$("#modifyModal").modal('hide');
						alert("삭제 되었습니다.");
						getPage("/reivew_replies/" + r_no + "/" + replyPage);
					}
				}
			});
		});
		
		
		var h_noPage=${h_noPage};
		$('#modifyBtn').click(function(event) {
			alert(r_no);
			alert(h_noPage);
			location.href = "/reviews/updateReview/" + r_no+"/"+h_noPage;
		});
		$('#removeBtn').click(function(event) {
			location.href = "/reviews/deleteReview/" + r_no+"/"+h_noPage;
		});
		
		
		
		$('.only_writer').hide();
		
		var sessionId = $('#session_id').val();
		var board_id = $('#board_id').text();
		
		if (sessionId == board_id) {
			$('.only_writer').show();
		};
		
	</script>

	
</body>
</html>