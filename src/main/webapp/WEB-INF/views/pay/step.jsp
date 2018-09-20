<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
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
  
  <form role="form" action="" method="post" id="formdata">
    <div class="row setup-content" id="step-1">
      <div class="col-xs-6 col-md-offset-3">
        <div class="col-md-12">
          <h3> [Step 1]</h3><br><br>
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
            <input maxlength="100" type="text" required="required" class="form-control" name="user_phonenumber"/>
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
        <h3> [Step 2]</h3>
           <center><h3> 취소 규정 및 약관동의</h3></center>
           <br>
           <br>
          
 <div id="img_Input">
    <img src="../resources/images/pages/HY_images/agree_Ok.gif"/> 
    <br>
     <br>
     <h3>"환불은 호오온나!"</h3> 
</div>
<div id="checkDiv">
          <span><input type="checkbox" id="checkbox" />&nbsp;&nbsp;  <font style="font-size:20px; ">취소 규정 및 약관에 모두 동의 합니다.</font></span> 
           <br>
           <br>
           호텔 이용규칙, 환불정책에 동의합니다. <br>
           서비스 수수료를 포함하여 표시된 총액을 지불하는 것에도 동의합니다.<br><br>
           
         [ # 기간별 환불기준 ] <br> <br>
         - 투숙일 기준 4일전 100% 환불가능<br>
         - 투숙일 기준 3일전 30% 취소수수료 부과<br>
         - 투숙일 기준 2일전~당일 100% 수수료 발생<br>
		
	

</div>
           
           
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
          <h3> [Step 3]</h3>
          
          
		    <input type="hidden" name="pic_room_url" value="${dto.pic_room_url}">
		    <input type="hidden" name="h_name" value="${dto.h_name}">
		    <input type="hidden" name="room_type" value="${dto.room_type}">
		    <input type="hidden" name="room_price" value="${dto.room_price}">
		    <input type="hidden" name="h_address" value="${dto.h_address}">                     
		    <input type="hidden" name="h_phonenum" value="${dto.h_phonenum}">
		    <input type="hidden" name="h_no" value="${dto.h_no}">
			
	
          <button class="btn btn-success btn-lg pull-right" id="cash_Bt" type="submit">결제</button>
        </div>
      </div>
    </div>
  </form>
  
</div>



<script type="text/javascript">
$(document).ready(function() {
    var formObj = $("form[role='form']");
    $("#cash_Bt").on("click", function() {
       formObj.attr("action", "/pay/cashCheck");
       formObj.attr("method", "post");
       formObj.submit();
    });
 });
</script>
</body>
</html>



