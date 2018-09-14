<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%
	String type = request.getParameter("type");
	request.setCharacterEncoding("utf-8");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
<link rel="stylesheet" type="text/css" href="../resources/bootstrap/styles/common/custom.css">
<style type="text/css">
.main_nav_item>a {
	color: white;
}
</style>
</head>

<script type="text/javascript">
 
</script>

<body>

	<div class="super_container margin_top_control">
	<%@ include file="../sub_page/header_menu.jsp"%>

		<div id="content" class="content_wrap">
           <main class="container-comm">
                <article class="contents">
                    <div class="member-content">
                        <section class="login-area">
                            <h3>회원가입</h3>


                            <form name="fmt" id="joinMemberPc" action="register/details" method="post" data-member-form="true" class="form-group form-w410"><!--  onsubmit="return Button_Click();"> -->  <!-- 태그안에 onsubmit="return Button_Click();> <!--내용이 있어야 다음페이지로 안넘어감 강사님 수정해주심 -->                                

                                <fieldset id="joinFieldset">
                                    <legend class="sc-out">회원가입 폼</legend>

                                    <div class="login-cont">
		                            	<input type="hidden" id="type" name="type" value="${type }"/>
                                        <div class="inp-txt-member">
                                            <input type="text" class="id_checker" id="mInput0" name="email" value="" placeholder="이메일을 입력해주세요.(7~15자)" title="아이디(이메일)를 입력" autocomplete="off">
                                        </div>

                                        <div class="inp-txt-member">
                                            <input type="text" id="mInput1" name="id" value="" placeholder="닉네임을 입력하세요.(7~15자)" title="닉네임을 입력(2~8자)" autocomplete="off">
                                        </div>

                                        <div class="inp-txt-member">
                                            <input type="text" id="mInput2" name="tel" value="" placeholder="-를 제외한 핸드폰번호를 입력하세요." title="전화번호를 입력" autocomplete="off">
                                        </div>

                                        <div class="inp-txt-member">
                                            <input type="text" class="u_name" id="mInput3" name="name" value="" placeholder="이름을 입력하세요." title="전화번호를 입력" autocomplete="off">
                                        </div>

                                        <div class="inp-txt-member">
                                            <input type="password" id="mInput4" name="password" value="" placeholder="비밀번호를 입력하세요(7~15자)" class="inp-password">
                                        </div>
                                        <div class="inp-txt-member">
                                            <input type="password" id="mInput5" name="passwdConfirm" value="" placeholder="비밀번호를 한번 더 입력하세요." class="inp-password">
                                        </div>
                                    </div>
                                    <input type="submit" name="button" class="button right_align" id="btnToJoinEnd" value="다음"></input>
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