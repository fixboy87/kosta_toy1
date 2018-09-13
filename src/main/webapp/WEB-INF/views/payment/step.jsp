<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>



<script src="../resources/bootstrap/scripts/HY_Script/step.js"></script>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link rel="stylesheet" type="text/css" href="../resources/bootstrap/styles/HY_Style/step.css"> 
</head>
<body>

<div class="container">
  
<div class="stepwizard col-md-offset-3">
    <div class="stepwizard-row setup-panel">
      <div class="stepwizard-step">
        <a href="#step-1" type="button" class="btn btn-primary btn-circle">▷</a>
        <h4>예약</h4>
      </div>
      <div class="stepwizard-step" >
        <a href="#step-2" type="button" class="btn btn-default btn-circle" disabled="disabled">▶</a>
        <h4>약관동의</h4>
      </div> 
      <div class="stepwizard-step">
        <a href="#step-3" type="button" class="btn btn-default btn-circle" disabled="disabled">♡</a>
        <h4>결제</h4>
      </div>
    </div>
  </div>
  
  <form role="form" action="" method="post">
    <div class="row setup-content" id="step-1">
      <div class="col-xs-6 col-md-offset-3">
        <div class="col-md-12">
          <h3> Step 1</h3>
          <div class="form-group">
            <label class="control-label">아이디</label>
            <input  maxlength="100" type="text" class="form-control"   />
          </div>
          <div class="form-group">
            <label class="control-label">이름</label>
            <input maxlength="100" type="text" class="form-control"  />
          </div>
          <div class="form-group">
            <label class="control-label">연락처</label>
            <input maxlength="100" type="text" required="required" class="form-control" />
          </div>
          <!-- <div class="form-group">
            <label class="control-label">Address</label>
            <textarea required="required" class="form-control" placeholder="Enter your address" ></textarea>
          </div> -->
          <button class="btn btn-primary nextBtn btn-lg pull-right" type="button" style="background-color: #e21a40">Next</button>
        </div>
      </div>
    </div>
    <div id="step2_div">
     <div class="row setup-content" id="step-2">
      <div class="col-xs-6 col-md-offset-3">
        <div class="col-md-12" id="step_2_Bt">
        <br>
        <br>
           <center><h3> 취소 규정 및 약관동의</h3></center>
           <br>
           <br>
          <span><input type="checkbox"/>&nbsp;&nbsp;  <font style="font-size:20px; ">취소 규정 및 약관에 모두 동의 합니다.</font></span> 
           <br>
           <br>
           <!-- <img src="../resources/images/pages/HY_images/cash_check2.jpg" width="600px" height="500px"/> -->
           <br>
           <br>
           
          </div> 
          <button class="btn btn-primary nextBtn btn-lg pull-right" id="check_Bt" type="button" disabled="disabled">확인</button>
        </div>
       
      </div>
    </div>
    <div class="row setup-content" id="step-3">
      <div class="col-xs-6 col-md-offset-3">
        <div class="col-md-12">
          <h3> Step 3</h3>
          <button class="btn btn-success btn-lg pull-right" type="submit">Submit</button>
        </div>
      </div>
    </div>
  </form>
  
</div>
</body>
</html>



