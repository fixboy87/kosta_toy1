<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
.main_nav_item>a {
	color: white;
}
</style>
</head>

<body>

	<input type="hidden" id="uid" name="uid" val="<%=(String)session.getAttribute("id")%>"/>
	<input type="hidden" id="type" name="type" val="<%=(String)session.getAttribute("type")%>"/>
	<input type="hidden" id="name" name="name" val="<%=(String)session.getAttribute("name")%>"/>
	
	<div class="super_container margin_top_control">
	<%@ include file="../sub_page/header_menu.jsp"%>

		<div id="content" class="content_wrap">
           <main class="container-comm">
                <article class="contents">
                    <div class="member-content">
                        <section class="login-area">
                            <h3>회원가입</h3>

                            <form id="joinMemberPc_p" action="registerInsert.do" method="post" data-member-form="true" class="form-group form-w410">

                                <fieldset id="joinFieldset">
                                   v <legend class="sc-out">회원가입 폼</legend>

                                    <div class="login-cont">
                                        <div class="inp-txt-member">
                                            <input type="date" name="birth" value="" placeholder="생년월일을 입력해주세요.(옵션)" title="생년월일을 입력해주세요.(옵션)" autocomplete="off">
                                        </div>

                                        <div class="inp-txt-member">
                                        	<select name="gender">
                                        		<option value="male">남성</option>
                                        		<option value="female">여성</option>
                                        	</select>
                                        </div>
                                    </div>
                                    <input type="hidden" name="type" value="personal">
                                    <button type="submit" name="button" class="button right_align" id="btnToJoinEnd">완료</button>
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