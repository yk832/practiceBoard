<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 조회</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">

$(document).ready(function(){
	
});



$('.replyModify').click(function(){
	console.log("replyModify");
	
});


</script>
</head>
<body>

	<label>제목</label>
	${view.title}<br />
	
	${view.reg_id}<label>작성자</label>
	<br />
	
	<label>내용</label><br />
	${view.content}<br />

<div>
	<a href="#">게시물수정</a>, <a href="#">게시물 삭제</a> , <a href="./getBoardList">게시물 목록</a>
</div>


<hr />

<!-- <ul>
	<li>
		<div>
			<p>첫번째 댓글 작성자</p>
			<p>첫번째 댓글</p>
		</div>
	</li>
	<li>
		<div>
			<p>두번째 댓글 작성자</p>
			<p>두번째 댓글</p>
		</div>
	</li>
	<li>
		<div>
			<p>세번째 댓글 작성자</p>
			<p>세번째 댓글</p>
		</div>
	</li>



</ul> -->

<%-- <div>
	
	<form method="post" action="/reply/write"> <!-- action의 값을 설정하지 않으면 현재의 url로 데이터를 보내기때문에 action 사용 -->
	
		<p>
			<label>댓글 작성자</label> <input type="text" name="writer">
		</p>
		<p>
			<textarea rows="5" cols="50" name="content"></textarea>
		</p>
		<p>
		<input type="hidden" name="bno" value="${view.bno}">
			<button type="submit">댓글 작성</button>
		</p>
	</form>
	
</div> --%>

</body>
</html>
