<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="utf-8"%>

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
<script src="../resources/bootstrap/scripts/common/jquery-3.2.1.min.js"></script>
<link
  href='http://fonts.googleapis.com/css?family=Englebert|Open+Sans:400,600,700'
  rel='stylesheet' type='text/css' />
<link href="../resources/bootstrap/styles/HY_Style/payment.css"
  rel="stylesheet" type="text/css" />
<script src="../resources/bootstrap/scripts/HY_Script/step.js"></script>
<script src="../resources/bootstrap/scripts/HY_Script/payment.js"></script>

<style type="text/css">
.col-md-5{

margin-left: 30%;
}

.btn btn-primary pull-right{
margin-left: 20%;
background: red;	
}
</style>
</head>
<body>



</head>
<body>
<div id="header" class="container">
    <div id="logo">
      <h1>
        <a href="http://localhost:8081"><img src="../resources/images/common/logo.png"
          height="40" /> L I M E </a>
      </h1>

    </div>

    <div id="menu">
      <ul>
        <li><a href="http://localhost:8081" accesskey="1" title="">홈</a></li>
        <li><a href="#" accesskey="2" title="">예약내역</a></li>
        <li><a href="#" accesskey="3" title="">로그아웃</a></li>

      </ul>
    </div>
  </div>


	<!-- Contact -->

    <form action="modify" method="post">
    <input type="hidden" name="page" value="${cri.page}">
    <input type="hidden" name="perPageNum" value="${cri.perPageNum}">
    <input type='hidden' name='searchType' value="${cri.searchType}">
	<input type='hidden' name='keyword' value="${cri.keyword}">
    </form>

                    
					
										<div class="container">
<div class="col-md-5">
    <div class="form-area">  
        <form role="form" method="post">
        <br style="clear:both">
                    <h3 style="margin-bottom: 25px; text-align: center;">문의</h3>
					<a class="btn btn-primary pull-right" href="/enquire/list" >나의문의내역</a>
				<select class="h_name" name="h_name" id="h_name" >
						
							<option>문의호텔</option>
							<option value="파라다이스">파라다이스</option>
							<option value="코모도">코모도</option>
							<option value="라마다프라자광주">라마다프라자광주</option>
							<option value="홀리데이인광주">홀리데이인광주</option>
							<option value="호텔인터불고">호텔인터불고</option>
							<option value="골든튤립스카이베이경포">골든튤립스카이베이경포</option>
							<option value="세인트존스경포">세인트존스경포</option>
							<option value="그랜드하야트서울">그랜드하야트서울</option>
							<option value="롯데시티">롯데시티</option>
							<option value="제주신라">제주신라</option>
							
							</select>
							<br>
					
					<div class="form-group">
						<input type="text" class="form-control" id="subject" name="e_title" value="${board.e_title}" placeholder="제목">
					</div>
                    <div class="form-group">
                    <textarea class="form-control" type="textarea" id="message" name="e_contents" placeholder="내용" maxlength="140" rows="7">${board.e_contents}</textarea>
                        <span class="help-block"><p id="characterLeft" class="help-block "></p></span>
                         <input id="contact_input_subject" class="contact_input contact_input_subject" type="hidden" name="e_seq" value="${board.e_seq}">                    
                    </div>
            <input id="id" type="hidden" name="id" value="<%=(String)session.getAttribute("uid")%>">
         
            
        <input type="submit" id="submit" name="submit" class="btn btn-primary pull-right"></input>
        </form>
    </div>
</div>
</div>
			
			

</body>
</html>
