<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>계산기</title>
</head>
<body>
<h1>계산기</h1>
<form action="calcResult.jsp" method="post">
	<input type="text" name = "num1" size = "5">
	<select name="operator">
	<option vlaue = "+">+</option>
	<option vlaue = "-">-</option>
	<option vlaue = "*">*</option>
	<option vlaue = "/">/</option>
	</select>
	<input type="text" name = "num2" size = "5">
	<input type="submit" value="입력">
</form>
</body>
</html>