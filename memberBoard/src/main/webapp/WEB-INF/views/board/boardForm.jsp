<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 작성</title>
</head>
<body>

<form action="insertBoards" method="post">

	<label>제목</label>
	<input type="text" name="title" /><br />
	
	<label>작성자</label>
	<input type="text" name="reg_id" /><br />
	
	<label>내용</label>
	<textarea cols="50" rows="5" name="content"></textarea><br />
	
	<button type="submit">작성</button>
	
</form>



</body>
</html>
