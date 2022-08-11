<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:url var="root" value="/" />

<body class="responsive is-pc">
	<div class="wrap wrapper  ko">
		<div class="body">
			<div class="width-container">
				<div class="title-wrap border">
					<div class="title">
						<a href="" class="text">커뮤니티</a>
					</div>
					<div class="title-right">
						<div class="search-bar">
							<form name="fsearch" method="get" role="form">
								<input type="hidden" name="bo_table" value="notice"> 
								<input type="hidden" name="sca" value=""> 
								<input type="hidden" name="sop" value="and"> 
								<!-- 검색 -->
								<select name="sfl" id="sfl">
									<option value="wr_subject">제목</option>
<!-- 									<option value="wr_content">내용</option> -->
<!-- 									<option value="wr_subject||wr_content">제목+내용</option> -->
									<option value="mb_id,1">닉네임</option>
<!-- 									<option value="mb_id,0">회원아이디(코)</option> -->
<!-- 									<option value="wr_name,1">글쓴이</option> -->
<!-- 									<option value="wr_name,0">글쓴이(코)</option> -->
								</select> <input type="text" name="stx" value="" required="" id="stx"
									maxlength="20" placeholder="검색어를 입력해 주세요">
								<button type="submit" class="submit">
									<img src="#" alt="">
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
									<td class="pc-table" style="width: 10%">${list.square_num }</td>
									<td>
									<!-- 제목 -->
										<div class="subject notice" id="${list.square_num}">
											<a href="${root}index?formpath=communityBoardView" >${list.square_title }</a>
										</div>
									</td>
									<!-- 작성일  -->
									<td>${list.square_date }</td> 
									<!-- 조회수 -->
									<td class="pc-table" style="width: 10%">${list.square_view }</td>
								</tr>
						</c:forEach>
							</tbody>
						</table>
					</form> 
					</div>
					<div class="write-right" style="position: relative; float: right;" >
					<br><br><br>
						<a href="${root}index?formpath=boardWrite" class="button small border button-purple">글쓰기</a>
					</div>

					<div class="button-align right mg-top-0"></div>


			</div>

		</div>

				
	</div>
</body>
