<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page session="false" %>
<c:set var="today" value="<%=new java.util.Date() %>"/>

<html>
<head>
	<title>Home</title>

<style type="text/css">

td{
	text-align:center;
}

</style>	

<script>

//게시글 작성 이벤트
function boardForm(){
	location.href = "/board/boardForm";
}

</script>

	
</head>
<body>
<h1>
	게시판 
</h1>

<p>boardList.jsp</p>

	<table>
		<thead>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성일</th>
				<th>작성자</th>
				<th>조회수</th>
			</tr>
		</thead>
		<tbody>
				<c:forEach items="${list}" var ="list" >
					<tr>
						<td>${list.bno}</td>
						<td><a href="/board/getView?bno=${list.bno}">${list.title}</a></td>
						<td>${list.reg_dt}</td>
						<td>${list.reg_id}</td>
						<td>${list.view_cnt}</td>
					</tr>
				</c:forEach>
		</tbody>
	</table>
	<button onclick="boardForm()">게시글 작성</button>
</body>
</html>
