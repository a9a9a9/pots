<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url var="root" value="/" />

<style>
	.board_content{
		min-height: 500px; background-color: #ffffff; font-size: 17px;
		font-family: 'Noto Sans KR', 'NanumGothic', '나눔고딕', ng, 'Malgun Gothic', Gulim, Dotum, Sans-Serif;
		line-height: 35px; font-weight: 300; color: #333333; border: 0px;
		padding-bottom: 40px;
	}
</style>
<body class="responsive is-pc">
	<div class="wrap wrapper  ko">
		<div class="body">
			<div class="width-container">
			
				<div class="title-wrap border">
					<div class="title">
						<a href="${root}noticeProc" class="text">공지사항</a>
					</div>
				</div>
				
				<form action="" method="post">
					<input type="hidden" name="notice_num" value="${board.notice_num }" />
<%-- 					<input type="hidden" name="nick" value="${board.nick }" /> --%>
					<input type="hidden" name="notice_title" value="${board.notice_title }" />
					<input type="hidden" name="notice_content" value="${board.notice_content }" />
					<div class="table-row">
						<div class="subject">${board.notice_title }</div>
					</div>
					
					<div class="table-row">
						<!-- 이미지 -->
						<span class="picture"><img src="/img/butsadm.gif" class="photo" alt=""></span>
						<!-- 작성자 -->
						<span class="v-bar"><span class="sv_member">관리자</span></span>
						<!-- 댓글 -->
<!-- 						<span class="v-bar">댓글 <span class="text-purple">0</span></span> -->
						<!-- 조회수 -->
						<span class="v-bar">조회수 <span class="text-purple">${board.notice_view }</span></span>
						<!-- 작성일 -->
						<div class="right">${board.notice_date }</div> 
					</div>
					
					<div class="table-view-article" style="min-height: 0px;">
						<pre class="board_content">${board.notice_content}</pre>
						<div class="button-align right border">
							<div class="float-left" style="float:right;">
								<a href="${root}noticeProc" class="button small border button-purple">목록</a>
							</div>
						</div>
					</div>
				</form>
		
 		  </div>
		</div>
	</div>
</body>