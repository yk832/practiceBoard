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
	showReplyList();
});



/* function showReplyList(num){
	var re_bno = $('#bno').val();
	var data = {"bno": re_bno,
				"num": num }
	
	$.ajax({
		url : "${pageContext.request.contextPath}/reply/getReply",
		dataType : "json",
		data : data,
		success : function(data){
			
			var replyList = data.list;
			var page = data.page;
			var str = "";
			var paging = "";
			
			//댓글 리스트
			$(replyList).each(function(idx,item){
				str +="<div>"
				str +=	"<li id=rno"+this.rno+">"
				str +=		"<p>댓글작성자 :"+this.re_writer+"</p>"
				str +=		"<p>댓글내용 :"+this.re_content+"</p>"
				str +=		"<button onclick='modiReply(\""+this.rno+"\",\""+this.re_writer+"\",\""+this.re_content+"\")'>수정</button>"
				str +=		"<button onclick='deleteReply(\""+this.rno+"\")'>삭제</button>"
				str +=	"</li>"
				str +="</div>"
				
				$('#replyList').html(str);
			})
			
			//댓글 페이징 처리
			for(var num = page.startPageNum; num <= page.endPageNum; num++){
				
				if(num == page.num){
					paging += '<b>' + num + '</b>';
				} else {
					paging += '<span>'
					paging += '<a href="#" onclick="showReplyList(' + num + '); return false;" class="page-btn">' + num + '</a>';
					paging += '</span>'
				}
				$('#replyPaging').html(paging);
			} //for end
			
		}
		
	})//ajax end	
} */

function sendReply(){
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
				console.log(result)				
			}
		
	}); 
	
}


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
		<a href="./modifyForm?bno=${view.bno}">게시물수정</a>, <a href="./deleteBoard?bno=${view.bno}">게시물 삭제</a> , <a href="./getBoardList">게시물 목록</a>
	</div>
	
	<hr />
	
	<div id="replyList" style="font-size : 13px;">
	</div>
	<div id="replyPaging" style="font-size : 16px;">
	</div>
	
	<%-- <div class="paging">
		<c:if test="${page.prev}">
		 	<span>[ <a href="/board/getBoardList?num=${page.startPageNum - 1}">이전</a> ]</span>
		</c:if>
		<c:forEach begin="${page.startPageNum}" end="${page.endPageNum}" var="num">
			  <span>
				   <c:if test="${select != num}">
				   		<a href="/board/getBoardList?num=${num}">${num}</a>
			 	   </c:if>    
				  
				  <c:if test="${select == num}">
				   	<b>${num}</b>
				  </c:if>
			 </span>
		</c:forEach>
		<c:if test="${page.next}">
		 	<span>[ <a href="/board/getBoardList?num=${page.endPageNum + 1}">다음</a> ]</span>
		</c:if>
	</div> --%>

</body>
</html>
