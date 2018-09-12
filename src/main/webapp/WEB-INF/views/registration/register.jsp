<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String type = request.getParameter("type"); 
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="registration/detail" method="post">
		<div>
			ID : <input type="text" name="newid" class="newid" value="">
		</div>
		<div>
			Password : <input type="text" name="newpass" class="newpass" value="">
		</div>
		<input type="hidden" name="type" value="<%= type%>">
		<input type="submit" name="newuser">
	</form>
	
</body>
</html>