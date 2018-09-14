<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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
<link rel="stylesheet" type="text/css" href="../resources/bootstrap/styles/account/loginForm.css">
<style type="text/css">
.main_nav_list a {
	color: white;
}

#joinFieldset>div a {
	color: blue;
	text-decoration: none !important;
	font-weight: bold;
}

#joinFieldset>div {
	margin-bottom: 3px;
}
</style>

</head>

<body>

	<div class="super_container margin_top_control">
	<%@ include file="../sub_page/header_menu.jsp"%>

		<div id="content" class="content_wrap">
           <main class="container-comm">
                <article class="contents">
                    <div class="member-content">
                        <section class="login-area">
                            <h3>계정 찾기</h3>

                            <form id="findLoginUser" action="" method="post" data-member-form="true" class="form-group form-w410">

                                <fieldset id="joinFieldset">
                                    <legend class="sc-out">아이디/비밀번호 찾기</legend>
                                    <div class="login-find">
                                        <div class="inp-txt-member">
                                            <input type="text" name="email" value="" placeholder="이메일을 입력해 주세요." title="이메일을 입력" autocomplete="off">
                                        </div>

                                        <div class="inp-txt-member">
                                            <input type="text" name="tel" placeholder="-를 제외한 전화번호를 입력해 주세요." title="전화번호 입력" autocomplete="off">
                                        </div>

                                        <div class="inp-txt-member">
                                        	<select name="loginType" class="widthExpand" placeholder="가입하신 계정의 유형을 선택해주세요." value="">
                                        		<option value="user">일반유저</option>
                                        		<option value="hotel">사업자유저</div>
                                        	</select>
                                        </div>

                                    <button type="submit" name="button" class="button right_align" id="btnToJoinEnd">찾기</button>
                                </fieldset>
                            </form>
                        </section>
                    </div>
                </article>
            </main>

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