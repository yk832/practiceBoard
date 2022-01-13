<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 조회</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="../resources/js/ajax.js?v_0.1"></script>
<script type="text/javascript">

$(document).ready(function(){
	showReplyList();
	
	
});

//게시글삭제 (댓글 유무에 따른 처리)
function fn_delete(bno){
	console.log(bno)
	var len = $('.ajax').length //댓글의 갯수
	if(len <= 0){ //댓글이 없다면..
		//게시글 삭제 url 
	} else {
		// 댓글전부삭제  url (boardController에 만들기)+ 삭제후 컨트롤러에서 게시글삭제 url로 redirect 시키기  
	}
}

/* function sendReply(){
	var bno = $('#bno').val();
	var re_reWriter = $('#reWriter').val();
	var re_reContent = $('#reContent').val();
	
	var paramData = JSON.stringify(
		{"re_content": re_reContent,
		 "re_writer": re_reWriter,
		 "bno": bno }
		);
	
	 $.ajax({
		type : "post",
		url : "${pageContext.request.contextPath}/reply/regReply",
		headers : { "Content-type" : "application/json", "X-HTTP-Method-Override" : "POST" },
		dataType : "text",
		data : paramData,
		success : function (result) {
				showReplyList();
				$('#reWriter').val("");
				$('#reContent').val("");
			}
		
	}); 
	
} */
	

</script>
</head>
<body>
	
	<label>제목</label>
	${view.title}<br />
	${view.reg_id}<label>작성자</label><br />
	<label>내용</label><br />
	${view.content}<br />
	
	
	<hr>
	
	<div>
		<p>
			<label>댓글 작성자</label> <input type="text" id="reWriter">
		</p>
		<p>
			<textarea rows="5" cols="50" id="reContent"></textarea>
		</p>
		<p>
		<input type="hidden" id="bno" value="${view.bno}">
			<button onclick="sendReply()">댓글 작성</button>
		</p>
	</div>
	<hr/>
	<div>
		<a href="./modifyForm?bno=${view.bno}">게시물수정</a>, <a href="#" onclick="fn_delete('${view.bno}')">게시물 삭제</a> , <a href="./getBoardList">게시물 목록</a>
	</div>
	
	<hr />
	
	<div id="replyList" class="reList" style="font-size : 13px;">
	</div>
	<div id="replyPaging" style="font-size : 16px; ">
	</div>
	

</body>
</html>
