
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Destino project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="http://localhost:8081/kostaProject1/styles/common/bootstrap4/bootstrap.min.css">
<link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="http://localhost:8081/kostaProject1/styles/gng_style/gng_contact.css">
<link rel="stylesheet" type="text/css" href="http://localhost:8081/kostaProject1/styles/gng_style/gng_main.css">
<script src="http://localhost:8081/kostaProject1/scripts/common/jquery-3.2.1.min.js"></script>
<script src="http://localhost:8081/kostaProject1/styles/common/bootstrap4/popper.js"></script>
<script src="http://localhost:8081/kostaProject1/styles/common/bootstrap4/bootstrap.min.js"></script>
<script src="http://localhost:8081/kostaProject1/plugins/common/greensock/TweenMax.min.js"></script>
<script src="http://localhost:8081/kostaProject1/plugins/common//greensock/TimelineMax.min.js"></script>
<script src="http://localhost:8081/kostaProject1/plugins/common//scrollmagic/ScrollMagic.min.js"></script>
<script src="http://localhost:8081/kostaProject1/plugins/common//greensock/animation.gsap.min.js"></script>
<script src="http://localhost:8081/kostaProject1/plugins/common//greensock/ScrollToPlugin.min.js"></script>
<script src="http://localhost:8081/kostaProject1/plugins/common//easing/easing.js"></script>
<script src="http://localhost:8081/kostaProject1/plugins/common//parallax-js-master/parallax.min.js"></script>
<script src="http://localhost:8081/kostaProject1/scripts/common/contact_custom.js"></script>

<style type="text/css">


.EnquireDelete {
	-moz-box-shadow:inset 1px 1px 0px 0px #ffffff;
	-webkit-box-shadow:inset 1px 1px 0px 0px #ffffff;
	box-shadow:inset 1px 1px 0px 0px #ffffff;
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #f9f9f9), color-stop(1, #e9e9e9));
	background:-moz-linear-gradient(top, #f9f9f9 5%, #e9e9e9 100%);
	background:-webkit-linear-gradient(top, #f9f9f9 5%, #e9e9e9 100%);
	background:-o-linear-gradient(top, #f9f9f9 5%, #e9e9e9 100%);
	background:-ms-linear-gradient(top, #f9f9f9 5%, #e9e9e9 100%);
	background:linear-gradient(to bottom, #f9f9f9 5%, #e9e9e9 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#f9f9f9', endColorstr='#e9e9e9',GradientType=0);
	background-color:#f9f9f9;
	border:1px solid #dcdcdc;
	display:inline-block;
	cursor:pointer;
	color:#666666;
	font-family:Arial;
	font-size:28px;
	font-weight:bold;
	padding:9px 23px;
	text-decoration:none;
	text-shadow:1px -1px 0px #ffffff;

}
.EnquireDelete:hover {
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #e9e9e9), color-stop(1, #f9f9f9));
	background:-moz-linear-gradient(top, #e9e9e9 5%, #f9f9f9 100%);
	background:-webkit-linear-gradient(top, #e9e9e9 5%, #f9f9f9 100%);
	background:-o-linear-gradient(top, #e9e9e9 5%, #f9f9f9 100%);
	background:-ms-linear-gradient(top, #e9e9e9 5%, #f9f9f9 100%);
	background:linear-gradient(to bottom, #e9e9e9 5%, #f9f9f9 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#e9e9e9', endColorstr='#f9f9f9',GradientType=0);
	background-color:#e9e9e9;
}
.EnquireDelete:active {
	position:relative;
	top:1px;
}



.enquire_detail
{
	width: 80%;
	height: 41px;
	border: solid 2px #dbdbdb;
	padding-left: 20px;
	margin-left :10%;
	margin-bottom: 5%;
	margin-top : 5%
	outline: none;
	text-align: center;
}



</style>


</head>
<body>


   <table class="enquire_detail" border="1">
	<thead>
	<tr>
	<td style="background-color: #fafafa; color: #000000; width: 80px;"><h5>글번호</h5></td>
	<td colspan="3"><h5>${board.e_seq}</h5></td>
	</tr>
	<tr>
	<td style="background-color: #fafafa; color: #000000; width: 80px; "><h5>제목</h5></td>
	<td colspan="3"><h5>${board.e_title}</h5></td>
	</tr>
	<tr>
	<td style="background-color: #fafafa; color: #000000; width: 80px; "><h5>작성자</h5></td>
	<td colspan="3"><h5>${board.e_write}</h5></td>
	</tr>
	<tr>
	<td style="vertical-align :middle; min-height: 30%; background-color: #fafafa; color: #000000; width: 80px; "><h5>내용</h5></td>
	<td colspan="13" style="text-align: left"><h5>${board.e_contents}</h5></td>
	</tr>
	</thead>
	</table>
	            <a href="/enquire/list"class="Enquirelist">목록</a>
				<button type="submit" class="EnquireDelete" id="removeBtn">REMOVE</button>
	            <a href="GngUpdateEnqForm.do?e_seq=${board.e_seq}"class="EnquireDelete">수정</a>
	
	
	
		<script>	
	$(".EnquireDelete").on("click", function(){
		formObj.attr("action", "/enquire/remove");
		formObj.submit();
	});
	</script>
	
	<br style="display:block; ">
	<br style="display:block; ">
	<br style="display:block; ">								
															
					

</body>
</html>