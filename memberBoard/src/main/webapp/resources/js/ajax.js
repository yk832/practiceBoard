/**
 * 
 */

function modiReply(rno,writer,content){
	console.log(rno,writer)
}


function showReplyList(num){
	var re_bno = $('#bno').val();
	console.log(re_bno+"==>>>>")
	var data = {"bno": re_bno,
				"num": num }
	
	$.ajax({
		/*url : "${pageContext.request.contextPath}/reply/getReply",*/
		url : "../reply/getReply",
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
}