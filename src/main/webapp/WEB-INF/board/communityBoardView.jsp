<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url var="root" value="/" />

<body class="responsive is-pc">
	<div class="wrap wrapper  ko">
		<div class="body">
			<div class="width-container">
				<div class="title-wrap border">
					<div class="title">
						<a href="" class="text">게시글</a>
					</div>
				</div>
				
				<div class="table-row">
					<div class="subject">${board.square_title }</div>
				</div>
				
				<div class="table-row">
					<!-- 이미지 -->
					<span class="picture"><img src="/img/butsadm.gif" class="photo" alt=""></span>
					<!-- 작성자 -->
					<span class="v-bar"><span class="sv_member">${board.nick }</span></span>
					<!-- 댓글 -->
					<span class="v-bar">댓글 <span class="text-purple">0</span></span>
					<!-- 조회수 -->
					<span class="v-bar">조회수 <span class="text-purple">${board.square_view }</span></span>
					<!-- 작성일 -->
					<div class="right">${board.square_date }</div> 
				</div>
				
				<div class="table-view-article" style="min-height: 0px;">
					<p style="min-height: 500px;">${board.square_content}</p>
<!-- 					<p><span style="color:#333333;font-family:'Noto Sans KR', NanumGothic, '나눔고딕', ng, 'Malgun Gothic', Gulim, Dotum, sans-serif;font-size:17px;background-color:#ffffff;">안녕하세요. 벗츠 운영팀입니다.</span></p> -->
<!-- 					<p style="margin-bottom:10px;padding:0px;color:#333333;font-family:'Noto Sans KR', NanumGothic, '나눔고딕', ng, 'Malgun Gothic', Gulim, Dotum, sans-serif;font-size:17px;background-color:#ffffff;"> <br></p> -->
<!-- 					<p style="margin-bottom:10px;padding:0px;color:#333333;font-family:'Noto Sans KR', NanumGothic, '나눔고딕', ng, 'Malgun Gothic', Gulim, Dotum, sans-serif;font-size:17px;background-color:#ffffff;">현재 다수의 파티장님들이 파티 모집 후 15일이 경과된 파티를 계속해서</p> -->
<!-- 					<p style="margin-bottom:10px;padding:0px;color:#333333;font-family:'Noto Sans KR', NanumGothic, '나눔고딕', ng, 'Malgun Gothic', Gulim, Dotum, sans-serif;font-size:17px;background-color:#ffffff;">특정 프로그램을 사용하여 부활시켜 지속적으로 노출을 시켜 악의적인 방법으로</p> -->
<!-- 					<p style="margin-bottom:10px;padding:0px;color:#333333;font-family:'Noto Sans KR', NanumGothic, '나눔고딕', ng, 'Malgun Gothic', Gulim, Dotum, sans-serif;font-size:17px;background-color:#ffffff;">판매를 하고 있는 것으로 확인되었습니다.</p> -->
<!-- 					<p style="margin-bottom:10px;padding:0px;color:#333333;font-family:'Noto Sans KR', NanumGothic, '나눔고딕', ng, 'Malgun Gothic', Gulim, Dotum, sans-serif;font-size:17px;background-color:#ffffff;"> <br></p> -->
<!-- 					<p style="margin-bottom:10px;padding:0px;color:#333333;font-family:'Noto Sans KR', NanumGothic, '나눔고딕', ng, 'Malgun Gothic', Gulim, Dotum, sans-serif;font-size:17px;background-color:#ffffff;">많은 분들이 이런 문제를 호소하고 있어 이에대한 제재를 하기 위해</p> -->
<!-- 					<p style="margin-bottom:10px;padding:0px;color:#333333;font-family:'Noto Sans KR', NanumGothic, '나눔고딕', ng, 'Malgun Gothic', Gulim, Dotum, sans-serif;font-size:17px;background-color:#ffffff;">파티를 생성 후 15일이 경과된 모집인원이 없는 파티는 삭제 처리 하도록 하겠습니다.</p> -->
<!-- 					<p style="margin-bottom:10px;padding:0px;color:#333333;font-family:'Noto Sans KR', NanumGothic, '나눔고딕', ng, 'Malgun Gothic', Gulim, Dotum, sans-serif;font-size:17px;background-color:#ffffff;"> <br></p> -->
<!-- 					<p style="margin-bottom:10px;padding:0px;color:#333333;font-family:'Noto Sans KR', NanumGothic, '나눔고딕', ng, 'Malgun Gothic', Gulim, Dotum, sans-serif;font-size:17px;background-color:#ffffff;">추가로 문의 사항 있으실 경우 벗츠 채널톡으로 문의 부탁 드립니다.</p> -->
<!-- 					<p style="margin-bottom:10px;padding:0px;color:#333333;font-family:'Noto Sans KR', NanumGothic, '나눔고딕', ng, 'Malgun Gothic', Gulim, Dotum, sans-serif;font-size:17px;background-color:#ffffff;">감사합니다.</p></div> -->
				
				<div class="button-align right border">
					<div class="float-left" style="float:right;">
						<a href="${root}boardProc" class="button small border button-purple">목록</a>
						<a href="#" class="button small border button-purple">수정</a>
						<a href="#" class="button small border button-purple">삭제</a>
					</div>
				</div>
			</div>
		</div>
		</div>
	</div>
</body>