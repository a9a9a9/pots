<%@ page contentType="text/html; charset=UTF-8"%>

<html>
<head>
<title>POTS 로그인</title>
</head>

<body>

	<div class="body">
		<div class="width-container">
			<div class="mw-400 form-pd form-login">
				<form class="form" role="form" name="flogin"
					action="https://buts.co.kr/bbs/login_check.php"
					onsubmit="return flogin_submit(this);" method="post">
					<div class="login-logo">
						<img
							src="https://buts.co.kr/thema/Buts/colorset/Basic/img/big-butslogo.png" alt="">
					</div>
					<div class="login-input">
						<input type="text" name="mb_id" id="login_id" required="" maxlength="20" placeholder="아이디를 입력하세요">
					</div>
					<div class="login-input">
						<input type="password" name="mb_password" id="login_pw" required="" maxlength="20" placeholder="패스워드를 입력하세요">
					</div>
					<div class="login-option">
						<div class="input-check">
							<input type="checkbox" name="auto_login" id="login_auto_login">
							<label for="login_auto_login">자동로그인</label>
						</div>
						<div class="right">
							<a href="${root }index?formpath=registerAgree" class="v-bar">회원가입</a> 
							<a href="${root }index?formpath=findMy">아이디/비밀번호찾기</a>
						</div>
					</div>
					<button type="submit" class="form-button button button-purple">로그인</button>
					<div class="form-text">
						벗츠 회원이 아닌가요? <br> 첫가입 시 500포인트! <span class="text-purple">추천인
							등록 시 추가 500포인트!</span>
					</div>
				</form>

				<div class="form-sns-join sns-wrap">
					<a href="javascrip:;"
						onclick="nwindow('https://buts.co.kr/plugin/social/popup.php?provider=naver&amp;url=https://buts.co.kr/bbs/login.php')"
						style="margin-top: 20px; width: 100%;" class="naver sns-naver" title="네이버"> 
						<img src="https://buts.co.kr/thema/Buts/colorset/Basic/img/btn-sns-login-naver.png"
						alt=""> 네이버 계정으로 로그인 하기 </a>
						<a href="javascrip:;"
						onclick="nwindow('https://buts.co.kr/plugin/social/popup.php?provider=kakao&amp;url=https://buts.co.kr/bbs/login.php')"
						style="margin-left: 0px; margin-top: 5px; width: 100%;"
						class="kakao sns-kakao" title="카카오"> <img
						src="https://buts.co.kr/thema/Buts/colorset/Basic/img/btn-sns-login-kakao.png"
						alt=""> 카카오 계정으로 로그인 하기
					</a>
<!-- 					<script> -->
// 						jQuery(function($) {
// 							$(".sns-wrap")
// 									.on(
// 											"click",
// 											"a.social_link",
// 											function(e) {
// 												e.preventDefault();
// 												var pop_url = $(this).attr(
// 														"href");
// 												var newWin = window
// 														.open(
// 																pop_url,
// 																"social_sing_on",
// 																"location=0,status=0,scrollbars=1,width=600,height=500");
// 												if (!newWin
// 														|| newWin.closed
// 														|| typeof newWin.closed == 'undefined')
// 													alert('브라우저에서 팝업이 차단되어 있습니다. 팝업 활성화 후 다시 시도해 주세요.');
// 												return false;
// 											});
// 						});
<!-- 					</script> -->
				</div>

			</div>
			
			
		<!-- .width-container -->
	</div>
</div>

</body>
</html>
