<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 조회</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="../resources/js/ajax.js"></script>
<script type="text/javascript">

$(document).ready(function(){
	
});


function replayAjax(){
	console.log("h");
}


</script>
</head>
<body>
	
	<label>제목</label>
	${view.title}<br />
	
	${view.reg_id}<label>작성자</label>
	<br />
	
	<label>내용</label><br />
	${view.content}<br />
	
	<hr />
	<ul>
		<li>
			<div>
				<p>첫번째 댓글 작성자</p>
				<p>첫번째 댓글</p>
			</div>
		</li>
	</ul>
	<hr>
	<div>
		<p>
			<label>댓글 작성자</label> <input type="text" name="reWriter">
		</p>
		<p>
			<textarea rows="5" cols="50" name="reContent"></textarea>
		</p>
		<p>
		<input type="hidden" name="bno" value="${view.bno}">
			<button onclick="replayAjax()">댓글 작성</button>
		</p>
	</div>
	<hr/>
	<div>
		<a href="./modifyForm?bno=${view.bno}">게시물수정</a>, <a href="./deleteBoard?bno=${view.bno}">게시물 삭제</a> , <a href="./getBoardList">게시물 목록</a>
	</div>

</body>
</html>
