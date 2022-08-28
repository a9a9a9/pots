<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url var="root" value="/" />
<script>
	var result = "${msgs}";
	if (result === "존재하지 않는 회원입니다."){
		alert(result);
	}else if (result === "인증 완료") {
		alert(result)
	} else if (result === "인증 실패") {
		alert("번호를 다시 입력해 주세요")
	}
</script>

<body class="responsive is-pc">
	<div class="body">
		<div class="width-container">

	<div class="ko">
		<form role="form" name="fpasswordlost" action="captchaProc"
			method="post" autocomplete="off">
			<input type="hidden" id="getAnswer" name="rand" value="captchaImg"/>
			<div class="mw-400 form-pd form-password">
				<div class="form-title center">
					<span class="text-purple">패스워드</span> 찾기
				</div>
		
				<div class="form-captcha">
				<p class="form-text center">
					회원가입 시 등록하신 <span class="text-purple">이메일 주소를 입력</span>해 주세요.
				</p>
					<div class="form-group">
				<div class="password-email">
					<input type="text" name="id" id="id" required=""
						class="form-control input-sm email" size="30"
						placeholder="이메일을 입력해주세요" maxlength="100">
				</div>
				
				<fieldset id="captcha" class="captcha">
						<div class="captcha">
							<div class="form-group">
								<img id="captchaImg" title="캡차 이미지" src="captchaImg.do"
									alt="캡차 이미지" />
								<div id="captchaAudio" style="display: none;"></div>
							</div>
							<div class="form-group">
								<a onclick="javascript:audio()" class="refreshBtn"> 
									<button type="button" id="captcha_mp3" style="left:200px;">
									<span></span>
										음성듣기
									</button>
<!-- 								<input type="button" value="음성듣기" /> -->
								</a>
								<a onclick="javascript:refreshBtn()" class="refreshBtn" id="captcha_reload" style="top:29px;left:200px;"> 
									<button type="button" id="captcha_reload">
									<span></span>
										새로고침
									</button>
<!-- 								<input type="button" value="새로고침" /> -->
								</a> 
							</div>
							<div class="form-group">
								<input type="text" class="captcha_box required" name="answer" id="answer" size="6" maxlength="6" 
									style="color: black;" />
<!-- 									 class="form-control" -->
						<label for="captcha" style="display: block;">자동등록방지 숫자를 순서대로 입력하세요.</label>
							</div>
						</div>
				</fieldset>
					</div>

				</div>
				<div class="button-align center">
					<a class="button small border button-purple"
						href="${root}index?formpath=main">취소</a>
						
					<button type="submit" class="button small button-purple">확인</button>
				</div>
			</div>
		</form>

		<script>
			function audio() {
				var rand = Math.random();
				var url = 'captchaAudio.do';
				$
						.ajax({
							url : url,
							type : 'POST',
							dataType : 'text',
							data : 'rand=' + rand,
							async : false,
							success : function(resp) {
								var uAgent = navigator.userAgent;
								var soundUrl = 'captchaAudio.do?rand=' + rand;

								if (uAgent.indexOf('Trident') > -1
										|| uAgent.indexOf('MSIE') > -1) {
									winPlayer(soundUrl);
								} else if (!!document.createElement('audio').canPlayType) {
									try {
										new Audio(soundUrl).play();
									} catch (e) {
										winPlayer(soundUrl);
									}
								} else {
									window.open(soundUrl, '',
											'width=1, height=1');
								}
							}

						});

			}

			function refreshBtn(type) {
				var rand = Math.random();
				var url = "captchaImg.do?rand=" + rand;
				$('#captchaImg').attr("src", url);
			}
			function winPlayer(objUrl) {
				$('#captchaAudio').html('<vgsound src="' + objUrl + '">');
			}
		</script>
		<!-- } 회원정보 찾기 끝 -->
	</div>

	<!--[if lt IE 9]>
<script type="text/javascript" src="https://buts.co.kr/thema/Buts/assets/js/respond.js"></script>
<![endif]-->

	<!-- JavaScript -->
<!-- 	<script type="text/javascript" -->
<!-- 		src="https://buts.co.kr/thema/Buts/assets/bs3/js/bootstrap.min.js"></script> -->
<!-- 	<script type="text/javascript" -->
<!-- 		src="https://buts.co.kr/thema/Buts/assets/js/custom.sub.js"></script> -->

	<!-- ie6,7에서 사이드뷰가 게시판 목록에서 아래 사이드뷰에 가려지는 현상 수정 -->
	<!--[if lte IE 7]>
<script>
$(function() {
    var $sv_use = $(".sv_use");
    var count = $sv_use.length;

    $sv_use.each(function() {
        $(this).css("z-index", count);
        $(this).css("position", "relative");
        count = count - 1;
    });
});
</script>
<![endif]-->


</div>
</div>
</body>

