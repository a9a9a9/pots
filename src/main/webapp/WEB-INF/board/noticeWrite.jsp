<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url var="root" value="/" />

<style>
	.board_content{
		min-height: 500px; background-color: #ffffff; font-size: 17px;
		font-family: 'Noto Sans KR', 'NanumGothic', '나눔고딕', ng, 'Malgun Gothic', Gulim, Dotum, Sans-Serif;
		line-height: 35px; font-weight: 300; color: #333333; border: 0px;
		height: 60%; width: 100%; margin-bottom: 20px;
	}
</style>
<body class="responsive is-pc">
	<div class="wrap wrapper  ko">
		<div class="body">
				<form action="${root }noticeWriteProc" method="post" enctype="multipart/form-data">
			<div class="width-container">
				<div class="title-wrap border">
					<div class="title">
						<a href="" class="text">글쓰기</a>
					</div>
				</div>

				<div class="table-row">
					<div class="subject" style="margin-left: 20px;">제목 
						<input type=text required name='notice_title' 
							style="width: 90%; margin-left: 70px;" />
					</div>
				</div>
				<div class="table-row">
					<div class="subject" style="margin-left: 20px;">작성자 
						<input type="text" name='nick' value="관리자" disabled 
							style="width: 70%; margin-left: 50px; border: 0; background-color: transparent; color: gray;"/> 
					</div>
				</div>				

				<div class="table-view-article">
						
						<textarea class="board_content" name="notice_content" required placeholder="내용 작성"></textarea>

					<div class="button-align right border">
						<div class="float-left" style="float: right;">
							<a href="${root}noticeProc" class="button small border button-purple">취소</a> 
							<input type=submit value='작성' class="button small border button-purple" style="width: 100px; "/>
						</div>
					</div>
				</div>
			</div>
				</form>
		</div>
	</div>
</body>