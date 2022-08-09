<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url var="root" value="/" />


<body class="responsive is-pc">
	<div class="wrap wrapper  ko">
		<div class="body">
			<div class="width-container" style="height: auto;">
				<h1 style="display: inline-block !important; position: absolute; top: 0; left: 0; margin: 0 !important; padding: 0 !important; 
						font-size: 0; line-height: 0; border: 0 !important; overflow: hidden !important"> 회원정보 찾기 &gt; Buts</h1>
				<div class="ko">
					<form role="form" name="fpasswordlost"
						action="https://buts.co.kr/bbs/password_lost2.php"
						onsubmit="return fpasswordlost_submit(this);" method="post"
						autocomplete="off">
						<!-- [[ 아이디/비번찾기 ]] -->

						<div class="mw-400 form-pd form-password">
							<div class="form-title center">
								<span class="text-purple">아이디 / 패스워드</span> 찾기
							</div>
							<p class="form-text center">
								회원가입 시 등록하신 <span class="text-purple">이메일 주소를 입력</span>해 주세요. <br>해당
								이메일로 아이디와 비밀번호 정보를 보내드립니다.
							</p>
							<div class="password-email">
								<input type="text" name="mb_email" id="mb_email" required=""
									class="form-control input-sm email" size="30"
									placeholder="이메일을 입력해주세요" maxlength="100">
							</div>
							<div class="form-captcha">

								<script>var g5_captcha_url  = "https://buts.co.kr/plugin/kcaptcha";</script>
								<script src="https://buts.co.kr/plugin/kcaptcha/kcaptcha.js"></script>
								<fieldset id="captcha" class="captcha">
									<legend>
										<label for="captcha_key">자동등록방지</label>
									</legend>
									<img
										src="https://buts.co.kr/plugin/kcaptcha/kcaptcha_image.php?t=1659527348336"
										alt="" id="captcha_img"><input type="text"
										name="captcha_key" id="captcha_key" required=""
										class="captcha_box required" size="6" maxlength="6"
										style="color: black;">
									<button type="button" id="captcha_mp3">
										<span></span>숫자음성듣기
									</button>
									<button type="button" id="captcha_reload">
										<span></span>새로고침
									</button>
									<span id="captcha_info">자동등록방지 숫자를 순서대로 입력하세요.</span>
								</fieldset>
							</div>
							<div class="button-align center">
								<button type="button" class="button small border button-purple"
									onclick="${root }index?formpath=home">닫기</button>
								<button type="submit" class="button small button-purple">확인</button>
							</div>
						</div>

					</form>

				</div>

			</div>
		</div>
	</div>
</body>
