<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>

</head>
<body>
<h3>더미 데이터 ㄱㄱ</h3>
<hr>
<form action="/search/data" method="post">
	호텔번호 23 ㄱ : <input type="text" name="h_no" /><br>	
	호텔이름 : <input type="text" name="h_name" /><br>			
	호텔전화번호 : <input type="text" name="h_phonenum"/><br>
	호텔메일 : <input type="text" name="h_mail" /><br>
	호텔전화번호 : <input type="text" name="h_phonenum" /><br>
	호텔 상세주소 : <input type="text" name="h_address" /><br>
	호텔방갯수 : <input type="text" name="room_count" /><br>
	호텔아이디 : <input type="text" name="h_id" /><br>		
	호텔비번 : <input type="text"  name="h_password" /><br> 
	호텔 수익: <input type="text"  name="h_profit" /><br> 
	호텔 첫페이지 방가격: <input type="text"  name="price" /><br>
	호텔 정보: <input type="text" name="h_info" /><br>
	호텔 사진URL : <input type="text" name="pic_url" /><br>
	호텔 간단 위치 : <input type="text" name="h_location" /><br>
	<input type="submit" value="등록">
</form>

</body>