<%@page import="yanoll.user.domain.Users"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="utf-8"%>
    <%
	Users user = (Users)request.getAttribute("user");
%>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Destino project">
<meta name="viewport" content="width=device-width, initial-scale=1">
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
</style>

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


					
					<div class="container">
<div class="col-md-5">
    <div class="form-area">  
        <form role="form" method="post">
        <br style="clear:both">
                    <h3 style="margin-bottom: 25px; text-align: center;">문의</h3>
					
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
						<input type="text" class="form-control" id="subject" name="e_title" placeholder="제목">
					</div>
                    <div class="form-group">
                   <textarea class="form-control" type="textarea" id="message" name="e_contents" placeholder="내용" maxlength="140" rows="7"></textarea>
                        <span class="help-block"><p id="characterLeft" class="help-block "></p></span>             
                    </div>
            <input id="id" type="hidden" name="id" value="<%=(String)session.getAttribute("uid")%>">
         
            
        <input type="submit" id="submit" name="submit" class="btn btn-primary pull-right"></input>
        </form>
    </div>
</div>
</div>
	
			
			
<%@include file="../sub_page/footer.html" %>
</body>
</html>
