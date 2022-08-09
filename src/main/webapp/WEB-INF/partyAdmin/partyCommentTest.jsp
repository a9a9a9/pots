<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table style="min-width: 1000px">
	<thead>
	  <tr>
		<th width="10%" scope="col">닉네임</th>
		<th width="10%" scope="col">댓글내용</th>
		<th width="10%" scope="col">파티제목</th>
		<th scope="col">날짜</th>
	  </tr>
	</thead>
	<tbody>
		<c:forEach var="list" items="${commentList }">
		<tr>
			<td>${list.nick }</td>
			<td>${list.comment }</td>
			<td>${list.comment_date }</td>
		</tr>
		</c:forEach>
	</tbody>
</table>
 
<table style="min-width: 1000px">
	<thead>
	  <tr>
		<th width="10%" scope="col">닉네임</th>
		<th width="10%" scope="col">댓글내용</th>
		<th width="10%" scope="col">파티제목</th>
		<th scope="col">날짜</th>
	  </tr>
	</thead>
	<tbody>
		<c:forEach var="comment" items="${comment }">
		<tr>
			<td>${comment.nick }</td>
			<td>${comment.comment }</td>
			<td>${comment.party_title }</td>
			<td>${comment.comment_date }</td>
		</tr>
		</c:forEach>
	</tbody>
</table>
<!--  
<table style="min-width: 1000px">
	<thead>
	  <tr>
		<th>파티번호</th>
		<th>파티제목</th>
		<th>닉네임</th>
		<th>댓글내용</th>
		<th>날짜</th>
	  </tr>
	</thead>
	<tbody>
		<c:forEach var="party" items="${partyList }">
		<tr>
			<td>${party.party_num }</td>
			<td>${party.party_title }</td>
			<td>${party.party_nick }</td>
			<td>{party.comment}</td>
			<td>${party.comment_date }</td>
		</tr>
		</c:forEach>
	</tbody>
</table>
-->
</body>
</html>