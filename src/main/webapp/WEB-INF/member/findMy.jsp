<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url var="root" value="/" />

<head>
<meta charset="utf-8">
<link rel="favicon" href="/favicon.ico">
<!--<link rel="favicon" href="https://buts.co.kr/img/buts/favicon.ico">-->
<meta http-equiv="imagetoolbar" content="no">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta name="title" content="회원정보 찾기 > Buts">
<meta name="publisher" content="Buts">
<meta name="author" content="Buts">
<meta name="robots" content="index,follow">
<meta name="keywords" content="Buts">
<meta name="description" content="회원정보 찾기 > Buts">
<meta name="twitter:card" content="summary_large_image">
<meta property="og:title" content="회원정보 찾기 > Buts">
<meta property="og:site_name" content="Buts">
<meta property="og:author" content="Buts">
<meta property="og:type" content="">
<meta property="og:image" content="https://buts.co.kr/thema/Buts/colorset/Basic/img/og_image.jpg">
<meta property="og:description" content="회원정보 찾기 > Buts">
<meta property="og:url" content="https://buts.co.kr/bbs/password_lost.php">
<link rel="canonical" href="https://buts.co.kr/bbs/password_lost.php">
<title>회원정보 찾기 &gt; Buts</title>
<link rel="stylesheet" href="https://buts.co.kr/css/default.css?ver=180820">
<link rel="stylesheet" href="https://buts.co.kr/css/apms.css?ver=180820">
<link rel="stylesheet" href="https://buts.co.kr/assets/bs3/css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="https://buts.co.kr/colorset.css" type="text/css">
<link rel="stylesheet" href="https://buts.co.kr/skin/member/basic/style.css">
<link rel="stylesheet" href="https://buts.co.kr/thema/Buts/colorset/Basic/popup.form.css?time=1659527346">
<link rel="stylesheet" href="https://buts.co.kr/css/level/basic.css?ver=180820">
<!--[if lte IE 8]>
<script src="https://buts.co.kr/js/html5.js"></script>
<![endif]-->
<script>
// 자바스크립트에서 사용하는 전역변수 선언
var g5_url       = "https://buts.co.kr";
var g5_bbs_url   = "https://buts.co.kr/bbs";
var g5_is_member = "";
var g5_is_admin  = "";
var g5_is_mobile = "";
var g5_bo_table  = "";
var g5_sca       = "";
var g5_pim       = "";
var g5_editor    = "";
var g5_responsive    = "1";
var g5_cookie_domain = "";
var g5_purl = "https://buts.co.kr/bbs/password_lost.php";
</script>
<script src="https://buts.co.kr/js/jquery-1.11.3.min.js"></script>
<script src="https://buts.co.kr/js/jquery-migrate-1.2.1.min.js"></script>
<script src="https://buts.co.kr/lang/korean/lang.js?ver=180820"></script>
<script src="https://buts.co.kr/js/common.js?ver=180820"></script>
<script src="https://buts.co.kr/js/wrest.js?ver=180820"></script>
<script src="https://buts.co.kr/js/placeholders.min.js"></script>
<script src="https://buts.co.kr/js/apms.js?ver=180820"></script>
<link rel="stylesheet"
	href="https://buts.co.kr/js/font-awesome/css/font-awesome.min.css">
</head>
<body class="responsive is-pc">
	<div class="wrap wrapper  ko">
		<div class="body" >
			<div class="width-container" style="height: auto;">
	<h1
		style="display: inline-block !important; position: absolute; top: 0; left: 0; margin: 0 !important; padding: 0 !important; font-size: 0; line-height: 0; border: 0 !important; overflow: hidden !important">
		회원정보 찾기 &gt; Buts</h1>
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
					회원가입 시 등록하신 <span class="text-purple">이메일 주소를 입력</span>해 주세요.
					 <br>해당 이메일로 아이디와 비밀번호 정보를 보내드립니다.
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
						onclick="window.close();">닫기</button>
					<button type="submit" class="button small button-purple">확인</button>
				</div>
			</div>

			<!-- <div class="panel panel-default">
		<div class="panel-heading"><strong><i class="fa fa-search fa-lg"></i> 회원정보찾기</strong></div>
		<div class="panel-body">
			<p class="help-block">
				회원가입 시 등록하신 이메일 주소를 입력해 주세요. 해당 이메일로 아이디와 비밀번호 정보를 보내드립니다.
			</p>
			<div class="form-group has-feedback">
				<label class="sound_only" for="mb_email"><b>이메일</b><strong class="sound_only">필수</strong></label>
				<div class="col-xs-10">
					<input type="text" name="mb_email" id="mb_email" required class="form-control input-sm email" size="30" maxlength="100">
					<span class="fa fa-envelope form-control-feedback"></span>
				</div>
			</div>

			<div class="form-group">
				<div class="col-xs-10">
					
<script>var g5_captcha_url  = "https://buts.co.kr/plugin/kcaptcha";</script>
<script src="https://buts.co.kr/plugin/kcaptcha/kcaptcha.js"></script>
<fieldset id="captcha" class="captcha">
<legend><label for="captcha_key">자동등록방지</label></legend>
<img src="https://buts.co.kr/plugin/kcaptcha/img/dot.gif" alt="" id="captcha_img"><input type="text" name="captcha_key" id="captcha_key" required class="captcha_box required" size="6" maxlength="6" style="color:black;">
<button type="button" id="captcha_mp3"><span></span>숫자음성듣기</button>
<button type="button" id="captcha_reload"><span></span>새로고침</button>
<span id="captcha_info">자동등록방지 숫자를 순서대로 입력하세요.</span>
</fieldset>				</div>
			</div>
		</div>
	</div>

	<div class="text-center" style="margin:15px 0px 0px;">
		<button type="submit" class="btn btn-color btn-sm">확인</button>
        <button type="button" class="btn btn-black btn-sm" onclick="window.close();">닫기</button>
	</div> -->
		</form>

		<script>
function fpasswordlost_submit(f) {
    if (!chk_captcha()) return false;

    return true;
}

$(function() {
    var sw = screen.width;
    var sh = screen.height;
    var cw = document.body.clientWidth;
    var ch = document.body.clientHeight;
    var top  = sh / 2 - ch / 2 - 100;
    var left = sw / 2 - cw / 2;
    moveTo(left, top);
});
</script>
		<!-- } 회원정보 찾기 끝 -->
	</div>

	<!--[if lt IE 9]>
<script type="text/javascript" src="https://buts.co.kr/thema/Buts/assets/js/respond.js"></script>
<![endif]-->

	<!-- JavaScript -->
	<script type="text/javascript"
		src="https://buts.co.kr/thema/Buts/assets/bs3/js/bootstrap.min.js"></script>
	<script type="text/javascript"
		src="https://buts.co.kr/thema/Buts/assets/js/custom.sub.js"></script>

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


</div></div></div>
</body>
