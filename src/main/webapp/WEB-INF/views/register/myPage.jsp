<%@page import="yanoll.user.domain.Users"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	Users user = (Users)request.getAttribute("user");
%>	

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../resources/bootstrap/styles/account/registerForm.css">
<link rel="stylesheet" type="text/css" href="../resources/bootstrap/styles/common/bootstrap4/bootstrap.min.css">
<link href="../resources/bootstrap/plugins/common/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="../resources/bootstrap/plugins/common/OwlCarousel2-2.2.1/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="../resources/bootstrap/plugins/common/OwlCarousel2-2.2.1/owl.theme.default.css">
<link rel="stylesheet" type="text/css" href="../resources/bootstrap/plugins/common/OwlCarousel2-2.2.1/animate.css">
<link href="../resources/bootstrap/plugins/common/magnific-popup/magnific-popup.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="../resources/bootstrap/styles/common/main_styles.css">
<link rel="stylesheet" type="text/css" href="../resources/bootstrap/styles/common/responsive.css">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" type="text/css" href="../resources/bootstrap/styles/account/registerForm.css">
<style type="text/css">
.myPageMenuCylinder {
	/* height: 600px; */
	margin-top: 30px;
	margin-right: auto;
	margin-left: 30px;
	float: left;
	padding: 30px 30px 10px 30px;
}
.myPageMenuCylinder>div {
	display: block;
	margin-bottom: 20px;
}
.iEnquire {
	background-color: #fe435b;
}
.iEnquire>a {
	color: white !important;
    font-weight: bold;
    text-align: center;
}
.myPageCylinder {
	margin-top: 180px;
	margin-right: auto;
	margin-left: auto;
	width: 1000px;
	position: relative;
}
.myPageContentCylinder {
	width: 65%;
	margin-top: 30px;
	margin-right: 30px;
	float: right;
	padding: 30px 30px 10px 30px;
	margin-bottom: 50px;
}
.mypage_section {
	display: block;
    margin-bottom: 20px;
    /* height: 30px; */
    padding: 7px;
    width: fit-content;
    border-width: thin;
}
.mypage_section>div {
	display: inline-block;
}
.mypage_text {
	width: 100px;
}
.mypage_section input {
	width: 300px;
    height: 30px;
    border-bottom: solid;
    border-width: thin;
    border-color: grey;
}

.header_titlePage {
	background: none !important;
}

div.logo div {
	color: grey;
}
.scrolled div.logo>div {
	color: white;
}
.scrolled li.main_nav_item>a {
	color: white;
}
#update_user {
	clear:both;
}
#update_user>div {
	margin-right: 30%;
    float: right;
}
#update_user a {
	color: white;
	text-decoration: none;
	font-weight: bold;
	text-align: center;
}
</style>
</head>

<body>

	<div class="super_container margin_top_control">
	<%@ include file="../sub_page/header_menu.jsp"%>

		<div id="content" class="content_wrap">
			
			<form action="" id="updateUserDetail" method="post">
				<div class="myPageCylinder">
					<div class="myPageMenuCylinder">
						<div class="button iEnquire myPage_button"><a href="/enquire/register">1:1문의</a></div>			
						<div class="button iEnquire myPage_button"><a href="#">구매내역</a></div>			
						<div class="button iEnquire myPage_button"><a href="#">회원정보</a></div>			
						<div class="button iEnquire myPage_button"><a href="#">회원탈퇴</a></div>			
					</div>
					<div class="myPageContentCylinder">
						<div class="mypage_section">
							<div class="mypage_text">
								<div><p>ID : </p></div>
							</div>
							<div class="myPage_id">
								<input type="text" name="id" value="${user.id }" readonly="readonly"/>
							</div>
						</div>
						<div class="mypage_section">
							<div class="mypage_text">
								<div><p>비밀번호 : </p></div>
							</div>
							<div class="myPage_password">
								<input type="password" name="password" value="${user.password }"/>
							</div>
						</div>
						<div class="mypage_section">
							<div class="mypage_text">
								<div><p>이메일 : </p></div>
							</div>
							<div class="myPage_email">
								<input type="text" name="email" value="${user.email}"/>
							</div>
						</div>
						<div class="mypage_section">
							<div class="mypage_text">
								<div><p>이름 : </p></div>
							</div>
							<div class="myPage_text">
								<input type="text" name="name" value="${user.name}" readonly="readonly"/>
							</div>
						</div>
						<div class="mypage_section">
							<div class="mypage_text">
								<div><p>전화번호 : </p></div>
							</div>
							<div class="myPage_text">
								<input type="text" id="tel_rep" name="tel" value="${user.tel }"/>
							</div>
						</div>
						<div class="mypage_section">
							<div class="mypage_text">
								<div><p>생년월일 : </p></div>
							</div>
							<div class="myPage_text">
								<input type="text" name="birth" value="${user.birth }" readonly="readonly"/>
							</div>
						</div>
						<div class="mypage_section">
							<div class="mypage_text">
								<div><p>성별 : </p></div>
							</div>
							<div class="myPage_text">
								<input type="text" name="gender" value="${user.gender }" readonly="readonly"/>
							</div>
						</div>
						<div id="update_user">
							<button type="submit" name="button" class="button right_align" id="btnToJoinEnd">정보변경</button>
						</div>
					</div>
				</div>
				
			</form>
	</div>
</div>
<%@include file="../sub_page/footer.html"%>

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
<script src="../resources/bootstrap/scripts/account/registerForm.js"></script>
<script src="../resources/bootstrap/scripts/common/menuEffect.js" type="text/javascript"></script>
<script type="text/javascript">
</script>
</body>
</html>