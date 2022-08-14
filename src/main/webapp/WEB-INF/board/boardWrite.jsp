<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url var="root" value="/" />

<body class="responsive is-pc">
	<div class="wrap wrapper  ko">
		<div class="body">
				<form action="${root }writeProc" method="post" enctype="multipart/form-data">
			<div class="width-container">
				<div class="title-wrap border">
					<div class="title">
						<a href="" class="text">글쓰기</a>
					</div>
				</div>

				<div class="table-row">
					<div class="subject" style="margin-left: 20px;">제목 
						<input type=text name='square_title' style="width: 900px; margin: 0 55px;" />
					</div>
				</div>
				<div class="table-row">
					<div class="subject" style="margin-left: 20px;">작성자 
						<input type=text name='nick' value="${sessionScope.nick }" disabled="disabled" style="width: 300px; margin: 0 40px;" /> 
					</div>
				</div>				

				<div class="table-view-article">
						
						<textarea name="square_content" style="height: 60%; width: 100%; margin-bottom: 20px;">내용</textarea>

					<div class="button-align right border">
						<div class="float-left" style="float: right;">
							<a href="${root}index?formpath=communityBoard" class="button small border button-purple">취소</a> 
							<input type=submit value='작성' class="button small border button-purple" style="width: 120px; "/>
						</div>
					</div>
				</div>
			</div>
				</form>
		</div>
	</div>
</body>