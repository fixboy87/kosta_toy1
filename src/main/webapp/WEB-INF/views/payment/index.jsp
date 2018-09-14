<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<script src="../resources/bootstrap/scripts/common/jquery-3.2.1.min.js"></script>
<link
  href='http://fonts.googleapis.com/css?family=Englebert|Open+Sans:400,600,700'
  rel='stylesheet' type='text/css' />
<link href="../resources/bootstrap/styles/HY_Style/payment.css"
  rel="stylesheet" type="text/css" />
<script src="../resources/bootstrap/scripts/HY_Script/step.js"></script>
<script src="../resources/bootstrap/scripts/HY_Script/payment.js"></script>


</head>
<body>
  <div id="header" class="container">
    <div id="logo">
      <h1>
        <a href="#"><img src="../resources/images/common/logo.png"
          height="40" /> L I M E </a>
      </h1>

    </div>

    <div id="menu">
      <ul>
        <li><a href="#" accesskey="1" title="">홈</a></li>
        <li><a href="#" accesskey="2" title="">예약내역</a></li>
        <li><a href="#" accesskey="3" title="">로그아웃</a></li>

      </ul>
    </div>
  </div>
  <div id="wrapper" class="container">
    <div id="page">
      <center>
        <h2>예약하기</h2>
      </center>
      <div id="content">




        <p>
        <p></p>
        <%@ include file="step.jsp"%>
        <a href="#" class="link-style1" id="agree">약관동의</a>
      </div>

    </div>
  </div>

  <div id="footer">
    <p>&copy; Lime. All rights reserved.</p>
  </div>

    
 
</body>
</html>