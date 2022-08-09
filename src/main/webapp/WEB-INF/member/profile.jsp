<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>프로필 사진</title>

<!-- css -->
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="/css/member/default_shop.css">
<link rel="stylesheet" href="/css/member/apms.css">
<link rel="stylesheet" href="/css/member/bootstrap.css" type="text/css"
	class="thema-mode">
<link rel="stylesheet" href="/css/member/magnific-popup.css"
	type="text/css">
<link rel="stylesheet" href="/css/member/buts.css" type="text/css">
<link rel="stylesheet" href="/css/member/widget.css">
<link rel="stylesheet" href="/css/member/basic.css">

<script>
	// 자바스크립트에서 사용하는 전역변수 선언
	var g5_url = "https://buts.co.kr";
	var g5_bbs_url = "https://buts.co.kr/bbs";
	var g5_is_member = "";
	var g5_is_admin = "";
	var g5_is_mobile = "";
	var g5_bo_table = "";
	var g5_sca = "";
	var g5_pim = "";
	var g5_editor = "";
	var g5_responsive = "1";
	var g5_cookie_domain = "";
	var g5_purl = "https://buts.co.kr/";
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
<script
	src="https://buts.co.kr/plugin/apms/js/jquery.mobile.swipe.min.js"></script>
<script>
	var sub_show = "slide";
	var sub_hide = "";
	var menu_startAt = "0";
	var menu_sub = "";
	var menu_subAt = "0";
</script>
<script
	src="https://buts.co.kr/thema/Buts/assets/bs3/js/bootstrap.min.js"></script>
<script
	src="https://buts.co.kr/thema/Buts/assets/js/jquery.magnific-popup.min.js"></script>
<script src="https://buts.co.kr/thema/Buts/assets/js/sly.min.js"></script>
<script src="https://buts.co.kr/thema/Buts/assets/js/custom.js"></script>
<script src="https://buts.co.kr/thema/Buts/assets/js/buts.js"></script>

</head>

<body class="responsive is-pc">
	<h1 style="display:inline-block !important;position:absolute;top:0;left:0;margin:0 !important;padding:0 !important;font-size:0;line-height:0;border:0 !important;overflow:hidden !important">
	Buts	</h1>
<div class="ko">

<!-- [[ my photo ]] -->
<form name="fphotoform" class="form" role="form" method="post" enctype="multipart/form-data" autocomplete="off">
<input type="hidden" name="mode" value="u">
<div class="dialog center dialog-profile" style="width: 540px;">
	<div class="dialog-title title"><span class="text-purple">프로필</span> 이미지 등록</div>
	<div class="dialog-body">
		<div class="dialog-images">
			<ul>
				<li>
					<div class="picture">
						<img src="https://buts.co.kr/thema/Buts/colorset/Basic/img/icon-butsicon-middle-glay.png" alt="" />						<img src="https://buts.co.kr/thema/Buts/colorset/Basic/img/icon-butsicon-middle-glay.png" alt="" />
					</div>
									</li>
			</ul>
		</div>
		<span class="dialog-lightgrey">회원 사진은 jpg, gif, png 만 가능하며, 등록 시 60x60로 자동 리사이징 됩니다.</span>
		<div class="dialog-upload">
			<div class="input-file">
				<a href="#" class="button round border button-purple">파일 선택</a>
				<input type="file" id="file-upload" name="mb_icon2" onchange="$('.file-name').val(window.FileReader ? $(this)[0].files[0].name : $(this).val().split('/').pop().split('\\').pop());" />
				<input class="file-name" value="선택된 파일 없음" disabled="disabled" />
			</div>
		</div>
	</div>
	<div class="dialog-buttons">
		<button type="button" class="button small border button-purple" onclick="window.close();">닫기</button>
		<button type="submit" class="button small button-purple">적용</button>
	</div>
</div>
</form> 
</div>
</body>
</html>