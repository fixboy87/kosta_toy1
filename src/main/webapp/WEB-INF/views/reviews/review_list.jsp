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
<link rel="stylesheet" type="text/css" href="../../resources/bootstrap/styles/syj_style/syj_contact.css">
<script src="../resources/bootstrap/scripts/syj_script/reviewList/list.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>
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
<section>
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

			<header class="list">
				<div class="contact_form_container" id="list_container">
					<button id="button-all">전체보기</button>
				<div id="button-div">
					<button id="button-photo" value="포토">포토<small class="photoCnt"></small></button>
				</div>
					<select class="option">
						<option  value="latest">최신순</option>
						<option  value="grade">평점순</option>
					</select> 
					
					<c:if test="${not empty uid}">
						<a href="/reviews/bookingList_check">후기 작성</a>
					</c:if>
					
				</div>
			</header>

			<div class="table_container">
				<div id="review_container">
				</div>
			</div>
			
			<!-- 페이징 처리 부분 -->
			<div class='text-center'>
				<ul id="pagination" class="pagination pagination-sm no-margin ">
				</ul>
			</div>			
			

			
	
	</div>
</section>
<script id="reviewTemplate" type="text/x-handlebars-template">
{{#each .}}    
						<table class="list_table" width="800">
							<tr>
								<td rowspan="4" class="img_td" id="board_r_fname">
									{{#if_img r_fname}}
									{{/if_img}}
								<td class="table_top">제목</td>
								<td class="table_top"colspan="3" id="board_r_title">{{r_title}}</td>
								<td class="table_top">작성자</td>
								<td class="table_edge1" colspan="2" id="board_id">{{id}}</td>
							</tr>
							<tr>
								<td>평점</td>
								<td colspan="3" class="list_star" >
								{{#if_grade r_grade}}
								{{/if_grade}}
								</td>
								<td>등록일</td>
								<td class="table_right" id="board_r_redate">
								 {{prettifyDate r_redate}}
								</td>
							</tr>
							<tr class="table_bottom">
								<td>호텔명</td>
								<td id="board_h_name">{{h_name }}</td>
								<td>숙박일수</td>
								<td id="board_number_of_stay_days">{{number_of_stay_days }}</td>
								<td>조회수</td>
								<td colspan="2" class="table_right" id="board_r_hitcount">{{r_hitcount }}
								<input type="hidden" id="board_r_no" value="{{r_no }}">
								</td>
							</tr>
						</table>
{{/each}}
</script>
<script type="text/javascript">
var h_no =1;
var reviewPage=1;
var photo=false;
var sortTerms =  $("option:selected").val();



/* Date registerHelper */
	Handlebars.registerHelper("prettifyDate", function(timeValue) {
		var dateObj = new Date(timeValue);
		var year = dateObj.getFullYear();
		var month = dateObj.getMonth() + 1;
		var date = dateObj.getDate();
		return year + "/" + month + "/" + date;
	});
	
/* Date registerHelper */
	Handlebars.registerHelper("if_grade", function(r_grade) {
		
		if (r_grade==1) {
			return "<label>★</label>";
		} else if (r_grade==2) {
			return "<label>★★</label>";
		}else if (r_grade==3) {
			return "<label>★★★</label>";
		}else if (r_grade==4) {
			return "<label>★★★★</label>";
		}else if (r_grade==5) {
			return "<label>★★★★★</label>";
		}
		
	});
	
	
	
	
/* img registerHelper */
 	Handlebars.registerHelper("if_img", function(r_fname) {
		
 		if (r_fname != null) {
 			
 			var str = "C:/upload/"
 			var head = r_fname.substring(0, r_fname.indexOf("."));
 			var pattern = r_fname.substring(r_fname.indexOf(".")+1);
 			var src = str+head+"_small."+pattern;
 			/* alert(src); */
			return "<img src="+src+">";
		}
		return "<label>NO IMAGE</label> ";
	});
 
 
 
 
 
/* List_Review  Print */
	var printData = function(reviewArr, target, templateObject) {
		var template = Handlebars.compile(templateObject.html());
		var html = template(reviewArr);
		$(".list_table").remove(); 
		target.after(html); /* 추가 */
	}




/* List_Review Paging  */
	var printPaging = function(pageMaker, target) {
		var str ="";
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

	
	
	
/* List_Review JSON  */	
	function getPage(pageInfo) {
		$.getJSON(pageInfo, function(data) {
			printData(data.reviewList, $("#review_container"), $("#reviewTemplate"));
			printPaging(data.pageMaker, $(".pagination"));
			$(".photoCnt").html(" [ "+data.photoCnt+" ] ");
			
		});
	};

	
	
	
/* Detail_Review */
	$(".table_container").on("click", ".list_table", function(event) {
		var review = $(this);
		var r_no = review.find('#board_r_no').val();
		/* alert(r_no); */
	    location.href="/reviews/detailReview/"+r_no;
	});
	
	
	
	
/* List Event */		
	$("#review_button").click(function() {
		$("#rooms").css("display", "none");
		$("#reviews").css("display", "block");
		if ($(".timeline li").size() > 1) {
			return;
		}
		getPage("/hotelReviews/" + h_no + "/1/"+photo+"/"+sortTerms);
	});
	$("#rooms_button").click(function() {/* 방 목록 버튼 */
	 	$("#rooms").css("display", "block");
		$("#reviews").css("display", "none");
	});
	
	
	
	
/* Option1 - Only Photo */	
	$("#button-div").on("click", "#button-photo", function(event) {
		photo = true;
		getPage("/hotelReviews/" + h_no + "/1/"+photo+"/"+sortTerms);
	})
	 $("#button-all").click(function() {
		 photo = false;
		 getPage("/hotelReviews/" + h_no + "/1/"+photo+"/"+sortTerms);
	})
	
/* Option2- Sort */	
	$(".option").change(function(event) {
		alert("바뀜");
		sortTerms =  $("option:selected").val();
		alert(sortTerms);
		alert(photo);
		getPage("/hotelReviews/" + h_no + "/" + reviewPage+"/"+photo+"/"+sortTerms);
	})
	
	
	
	
/* Review_List Paging */
 	$(".pagination").on("click", "li a", function(event) {
 		event.preventDefault();
		reviewPage = $(this).attr("href");
		getPage("/hotelReviews/" + h_no + "/" + reviewPage+"/"+photo+"/"+sortTerms);
	}); 
	
	
</script>


	</body>
</html>