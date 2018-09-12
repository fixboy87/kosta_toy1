<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html lang="kr">
<head>
<title>라임 야놀자</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Destino project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="../resources/bootstrap/styles/common/bootstrap4/bootstrap.min.css">
<link href="../resources/bootstrap/plugins/common/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="../resources/bootstrap/plugins/common/OwlCarousel2-2.2.1/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="../resources/bootstrap/plugins/common/OwlCarousel2-2.2.1/owl.theme.default.css">
<link rel="stylesheet" type="text/css" href="../resources/bootstrap/plugins/common/OwlCarousel2-2.2.1/animate.css">
<link href="../resources/bootstrap/plugins/common/magnific-popup/magnific-popup.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="../resources/bootstrap/styles/common/main_styles.css">
<link rel="stylesheet" type="text/css" href="../resources/bootstrap/styles/common/responsive.css">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" type="text/css" href="../resources/bootstrap/styles/account/register_type.css">

</head>
<body>

	<input type="hidden" id="uid" name="uid" val="<%=(String)session.getAttribute("id")%>"/>
	<input type="hidden" id="type" name="type" val="<%=(String)session.getAttribute("type")%>"/>
	<input type="hidden" id="name" name="name" val="<%=(String)session.getAttribute("name")%>"/>
	
<div class="super_container margin_top_control">
<%@ include file="../sub_page/header_menu.jsp"%>

        <div id="content" class="content_wrap">
            <!-- mb_join start -->
            <div class="mb_join">
                <br><br>
                <p class="txt">해당 사이트에서 제공하는 호텔 간편조회 및 간편예약 서비스를 즐길 수 있습니다. 회원가입은 무료입니다.</p>

                <div class="join_divi">
                    <dl class="personal_type">
                        <dt>일반회원(개인)</dt>
                        <dd>호텔 간편조회 및 간편예약<br>서비스를 즐길 수 있습니다.<br>
                        	<div>
	                        	<img src="http://localhost:8081/kostaProject1/images/pages/account/btn_join_1.gif" alt="일반회원">
                        	</div>
                            <span class="register_button button find_button"><span><a id="#" href="#">일반회원 가입하기</a></span></span>
                        </dd>
                    </dl>

                    <dl class="enterprise_type">
                        <dt>기업회원(회사)</dt>
                        <dd>매칭 서비스 및 관리에 필요한<br>UI를 제공해 드립니다.<br>
                        	<div>
	                        	<img src="http://localhost:8081/kostaProject1/images/pages/account/btn_join_3.gif" alt="기업회원">
                        	</div>
                            <span class="register_button button find_button"><span><a id="#" href="#">기업회원 가입하기</a></span></span>
                        </dd>
                    </dl>
                </div>

            </div>
            <!-- mb_join end -->
        </div>
        <!-- <form name= "typeSelect" method="get" action="registerAction.do">
        	<input type="hidden" name="registerType" value="">
        	<input type="submit" value="typeSelect"/>
        </form>  -->
        <!-- content end -->


	
</div>
<%@include file="../sub_page/footer.html" %>

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
<script src="../resources/bootstrap/scripts/account/registerType.js"></script>
<script src="../resources/bootstrap/scripts/common/menuEffect.js" type="text/javascript"></script>
<script type="text/javascript">
</script>
</body>
</html>