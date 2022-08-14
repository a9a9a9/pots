<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url var="root" value="/" />
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

<link rel="stylesheet"
	href="https://buts.co.kr/js/font-awesome/css/font-awesome.min.css">
<script>
	var result = "${msg}";
	if(result === "로그인 필요"){
		opener.parent.location="${root}index?formpath=login";
		window.close();
	}else if(result === "사진 저장"){
		opener.parent.location.reload();
		window.close();
	}
	
</script>
</head>

<body class="responsive is-pc">
	<h1 style="display:inline-block !important;position:absolute;top:0;left:0;margin:0 !important;padding:0 !important;font-size:0;line-height:0;border:0 !important;overflow:hidden !important">
	Buts	</h1>
<div class="ko">

<!-- [[ my photo ]] -->
<form name="fphotoform" class="form" method="post" action="profileUpdateProc">
<div class="dialog center dialog-profile" style="width: 540px;">
	<div class="dialog-title title"><span class="text-purple">프로필</span> 이미지 변경</div>
	<div class="dialog-body">
		<div class="dialog-upload">
			<div class="input-file" style="height: auto; margin-left:30px; margin-top:10px;">
				<div class="profile_select" style="margin-right: 20px; float: left;">
					<input type="image" src="/img/profile1.png" disabled="disabled"><br>
					<input type="radio" name="profile" id="profile" value="1" checked="checked" style="margin:10px 18px;" />
				</div>
				<div class="profile_select" style="margin-right: 20px; float: left;">
					<input type="image" src="/img/profile2.png" disabled="disabled"><br>
					<input type="radio" name="profile" id="profile" value="2" style="margin:10px 18px;" />
				</div>
				<div class="profile_select" style="margin-right: 20px; float: left;">
					<input type="image" src="/img/profile3.png" disabled="disabled"><br>
					<input type="radio" name="profile" id="profile" value="3" style="margin:10px 18px;" />
				</div>
				<div class="profile_select" style="margin-right: 20px; float: left;">
					<input type="image" src="/img/profile4.png" disabled="disabled"><br>
					<input type="radio" name="profile" id="profile" value="4" style="margin:10px 18px;" />
				</div>
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