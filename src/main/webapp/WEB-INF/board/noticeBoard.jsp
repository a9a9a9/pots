<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:url var="root" value="/" />

<style>
	.page-number img{max-width: 36%;}
	.table-list .notice::before{content: ""; border: 0;}
	.table-list tr.active td{background-color: white;}
</style>
 <script>
 	var result = "${msg}";
 	if(result === "삭제 성공"){
 		alert("삭제 완료");
 	}
 </script>
<body class="responsive is-pc">
	<div class="wrap wrapper  ko">
		<div class="body">
			<div class="width-container">
				<div class="title-wrap border">
					<div class="title">
						<a href="${root}noticeProc" class="text">공지사항</a>
					</div>
					<div class="title-right">
						<div class="search-bar">
							<form action="${root}noticeProc" method="post">
								<!-- 검색 -->
								<select name="select">
									<option value="">선택</option>
									<option value="title">제목</option>
									<option value="content">내용</option>
								</select> 
								<input type="text" name="search" placeholder="검색어를 입력해 주세요">
								<button type="submit" class="submit" name="searchBtn">
									<img src="/img/search.png">
								</button>
							</form>
						</div>
					</div> 
				</div>

					<div class="table-list list-wrap">
					<form id="f" method="post" >
						<input type="hidden" id="writeNo" name="writeNo"/>
						<input type=hidden name="proc" value="deletes" />
						<input type=hidden name="formpath" value="delete" />
					

						<table>

							<thead>
								<tr>
									<th class="pc-table">번호</th>
									<th>제목</th>
									<th>등록일</th>
									<th class="pc-table">조회</th>
								</tr>
							</thead>
							<tbody>
							<c:forEach var="list" items="${boardList }">
								<tr class="active">
									<!-- 번호 -->
									<td class="pc-table" style="width: 10%">${list.notice_num }</td>
									<td>
									<!-- 제목 -->
										<div class="subject notice" id="${list.notice_num}">
										<a href="noticeViewProc?writeNo=${list.notice_num}">${list.notice_title }</a> </div>
									</td>
									<!-- 작성일  -->
									<td><c:out value="${fn:substring(list.notice_date, 0, 6)}"/></td> 
									<!-- 조회수 -->
									<td class="pc-table" style="width: 10%">${list.notice_view }</td>
								</tr>
						</c:forEach>
							</tbody>
						</table>
					</form>
					
					<div class="page-number">
						${page}
					</div>
					
					<c:if test="${sessionScope.id eq 'admin'}">
						<div class="write-right" style="position: relative; float: right;" >
						<br><br><br>
							<a href="${root}index?formpath=noticeWrite" class="button small border button-purple">글쓰기</a>
						</div>
					</c:if>
					<div class="button-align right mg-top-0"></div>
				</div>
			</div>
		</div>
	</div>
</body>
