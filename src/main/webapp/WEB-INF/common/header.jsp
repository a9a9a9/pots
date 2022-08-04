<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html lang="ko">
<head>
<title>Buts</title>

<!-- css -->
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<link rel="stylesheet" href="/css/member/default_shop.css">
<link rel="stylesheet" href="/css/member/apms.css">
<link rel="stylesheet" href="/css/member/bootstrap.css" type="text/css" class="thema-mode">
<link rel="stylesheet" href="/css/member/magnific-popup.css" type="text/css">
<link rel="stylesheet" href="/css/member/buts.css" type="text/css" >
<link rel="stylesheet" href="/css/member/widget.css">
<link rel="stylesheet" href="/css/member/basic.css">

<!-- 스크립트 -->

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
var g5_purl = "https://buts.co.kr/";
</script>
<script src="https://buts.co.kr/js/jquery-1.11.3.min.js"></script>
<script src="https://buts.co.kr/js/jquery-migrate-1.2.1.min.js"></script>
<script src="https://buts.co.kr/lang/korean/lang.js?ver=180820"></script>
<script src="https://buts.co.kr/js/common.js?ver=180820"></script>
<script src="https://buts.co.kr/js/wrest.js?ver=180820"></script>
<script src="https://buts.co.kr/js/placeholders.min.js"></script>
<script src="https://buts.co.kr/js/apms.js?ver=180820"></script>
<link rel="stylesheet" href="https://buts.co.kr/js/font-awesome/css/font-awesome.min.css">
<script src="https://buts.co.kr/plugin/apms/js/jquery.mobile.swipe.min.js"></script>
<script>
var sub_show = "slide";
var sub_hide = "";
var menu_startAt = "0";
var menu_sub = "";
var menu_subAt = "0";
</script>
<script src="https://buts.co.kr/thema/Buts/assets/bs3/js/bootstrap.min.js"></script>
<script src="https://buts.co.kr/thema/Buts/assets/js/jquery.magnific-popup.min.js"></script>
<script src="https://buts.co.kr/thema/Buts/assets/js/sly.min.js"></script>
<script src="https://buts.co.kr/thema/Buts/assets/js/custom.js"></script>
<script src="https://buts.co.kr/thema/Buts/assets/js/buts.js"></script>

</head>
<!-- topper -->

		<div class="topper">
			<div class="width-container">
			<div class="topper-menu">
				<a href="#" class="v-bar">커뮤니티</a>
				<a href="${root}index?formpath=eventMain" class="v-bar">이벤트</a>
				<a href="#">공지사항</a>
			</div>
			</div>
		</div>

<!-- header -->

		<div class="header">
			<div class="width-container">
				<div class="header-logo">
					<a href="${root}index?formpath=home"><img src="/img/logo.png" srcset="/img/logo2.png 2x" alt="" /></a>
				</div>
				<div class="header-right">
					<a href="${root}index?formpath=login" class="header-login">로그인</a>
				</div>
			</div>
			
		<div class="header-menu pc">
		<ul>
			<li class="menu-li off">
			<a href="#" class="menu-a"><!-- 영상 -->영상	<span class="menu_new"></span></a>
			<div class="sub-menu" style="display: none">
				<div class="sub-width">
					<div class="sub-tip">
						<span class="text-purple">영상</span> 인기 카테고리
						<a href="javascript:;" class="ttip">
							<img src="/img/tip.png" alt="" />
							<span class="ttip-text" style="left: 0; width: 166px"> 많이 생성된 파티방 및 인기 검색어 기준으로 노출됩니다. </span>
						</a>
					</div>
					<ul>
						<li class="sub-li off"><a href="#" class="sub-a">#넷플릭스<span class="sub-1new2"></span></a></li>
						<li class="sub-li off"><a href="#" class="sub-a">#디즈니	</a></li>
						<li class="sub-li off"><a href="#" class="sub-a">#왓챠</a></li>
						<li class="sub-li off"><a href="#" class="sub-a">#유튜브	<span class="sub-1new2"></span></a></li>
						<li class="sub-li off"><a href="#" class="sub-a">#웨이브	<span class="sub-1new2"></span></a></li>
						<li class="sub-li off"><a href="#" class="sub-a">#티빙</a></li>
						<li class="sub-li off"><a href="#" class="sub-a">#라프텔	</a></li>
						<li class="sub-li off"><a href="#" class="sub-a">#AppleOne</a></li>
						<li class="sub-li off"><a href="#" class="sub-a">#프라임비디오</a></li>
						<li class="sub-li off"><a href="#" class="sub-a">#테니스TV</a></li>
						<li class="sub-li off"><a href="#" class="sub-a">기타(영상)</a></li>
					</ul>
				</div>
			</div>
		</li>
		
		<li class="menu-li off">
			<a href="#" class="menu-a"><!-- 영상 -->도서/음악</a>
			<div class="sub-menu" style="display: none">
				<div class="sub-width">
					<div class="sub-tip">
						<span class="text-purple">도서/음악</span> 인기 카테고리
						<a href="javascript:;" class="ttip">
							<img src="/img/tip.png" alt="" />
							<span class="ttip-text" style="left: 0; width: 166px"> 많이 생성된 파티방 및 인기 검색어 기준으로 노출됩니다. </span>
						</a>
					</div>
					<ul>
						<li class="sub-li off">	<a href="#" class="sub-a">#리디북스</a></li>
						<li class="sub-li off">	<a href="#" class="sub-a">#밀리의서재</a></li>
						<li class="sub-li off">	<a href="#" class="sub-a">#YES24</a></li>
						<li class="sub-li off">	<a href="#" class="sub-a">#윌라</a></li>
						<li class="sub-li off">	<a href="#" class="sub-a">#스포티파이</a></li>
						<li class="sub-li off">	<a href="#" class="sub-a">#애플뮤직</a></li>
						<li class="sub-li off">	<a href="#" class="sub-a">#케이크	</a></li>
						<li class="sub-li off">	<a href="#" class="sub-a">기타(도서/음악)</a></li>
					</ul>
				</div>
			</div>
		</li>
		
		<li class="menu-li off">
			<a href="#" class="menu-a"><!-- 영상 -->게임</a>
			<div class="sub-menu" style="display: none">
				<div class="sub-width">
					<div class="sub-tip">
						<span class="text-purple">게임</span> 인기 카테고리
						<a href="javascript:;" class="ttip">
							<img src="/img/tip.png" alt="" />
							<span class="ttip-text" style="left: 0; width: 166px"> 많이 생성된 파티방 및 인기 검색어 기준으로 노출됩니다. </span>
						</a>
					</div>
					<ul>
						<li class="sub-li off">	<a href="#" class="sub-a">#닌텐도온라인	</a></li>
						<li class="sub-li off">	<a href="#" class="sub-a">#스팀</a></li>
						<li class="sub-li off">	<a href="#" class="sub-a">#PS4/PS5</a></li>
						<li class="sub-li off">	<a href="#" class="sub-a">#XBOX	</a></li>
						<li class="sub-li off">	<a href="#" class="sub-a">기타</a></li>
					</ul>
				</div>
			</div>
		</li>
		
		<li class="menu-li off">
			<a href="#" class="menu-a"><!-- 영상 -->기타</a>
			
			<div class="sub-menu" style="display: none">
				<div class="sub-width">
					<div class="sub-tip">
						<span class="text-purple">기타</span> 인기 카테고리
						<a href="javascript:;" class="ttip">
							<img src="/img/tip.png" alt="" />
							<span class="ttip-text" style="left: 0; width: 166px"> 많이 생성된 파티방 및 인기 검색어 기준으로 노출됩니다. </span>
						</a>
					</div>
					<ul>
						<li class="sub-li off">	<a href="#" class="sub-a">#맴버쉽	</a></li>
						<li class="sub-li off">	<a href="#" class="sub-a">#MS Office</a></li>
						<li class="sub-li off">	<a href="#" class="sub-a">#그래픽	</a></li>
						<li class="sub-li off">	<a href="#" class="sub-a">#운영체제</a></li>
						<li class="sub-li off">	<a href="#" class="sub-a">#VPN</a></li>
						<li class="sub-li off">	<a href="#" class="sub-a">기타</a></li>
					</ul>
				</div>
			</div>
		</li>
		</ul>
	</div>
	</div>