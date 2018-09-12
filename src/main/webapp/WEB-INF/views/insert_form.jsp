<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<style type="text/css">
	.error{
		color: #ff0000;
	}
</style>
</head>
<body>
<h3>${title }</h3>
<hr>
<form:form action="board_insert" method="post" commandName="boardCommand"
enctype="multipart/form-data">  <!-- enctype -->
<!-- boardCommand라는이름으로 가져옴 -->
	작성자 : <form:input type="text" path="writer"/><br>

	<form:errors path="writer" cssClass="error"/><br> 
	
	제목 : <form:input type="text" path="title"/>
	<br>
	<form:errors path="title" cssClass="error"/> <br>
	<!-- 위에서 만들어준 스타일 클래스 .error을 불러옴 -->
	<br>	
	파일 : <input type="file" name="uploadFile"/><br>
	내용 <br>
	<form:textarea rows="6" cols="70" path="contents"></form:textarea>
	<br>
	<input type="submit" value="등록"> 
</form:form>
<!--  type="text" name="title"에서 name을  path로 변경해줘야함  -->
	<!-- 에러메세지 넣을 장소 -->
<!-- submit은 form으로 바꾸지 않음 -->
<!--  form:form  태그안에 주석있으면 심볼이 같다는 에러남 -->
</body>
</html>








