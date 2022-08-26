<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="ko">
<head>
<link rel="icon" href="/img/cicon.png"/>
<title>POTS</title>
<!-- css -->
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="/css/member/default_shop.css">
<link rel="stylesheet" href="/css/member/apms.css">
<link rel="stylesheet" href="/css/member/bootstrap.css" type="text/css" class="thema-mode">
<link rel="stylesheet" href="/css/member/magnific-popup.css" type="text/css">
<link rel="stylesheet" href="/css/member/buts.css" type="text/css">
<link rel="stylesheet" href="/css/member/widget.css">
<link rel="stylesheet" href="/css/member/basic.css">
<link rel="stylesheet" href="/css/partyAdmin/font-awesome.min.css">
<!-- <link rel="stylesheet" href="//buts.co.kr/thema/Buts/colorset/Basic/buts.css?time=1660891800" type="text/css"> -->
<!-- 스크립트 -->
<script>
var result = "${msg}";
if(result === "접근할 수 없는 페이지 입니다."){
	${msg }
}
</script>
<script>
	// 자바스크립트에서 사용하는 전역변수 선언
	var g5_url = "${root}index?formpath=main";
	var g5_bbs_url = "${root}boardProc";
	var g5_is_member = "";
	var g5_is_admin = "";
	var g5_is_mobile = "";
	var g5_bo_table = "";
	var g5_sca = "";
	var g5_pim = "";
	var g5_editor = "";
	var g5_responsive = "1";
	var g5_cookie_domain = "";
	var g5_purl = "${root}index?formpath=main";
</script>

<script src="https://buts.co.kr/thema/Buts/assets/js/buts.main.js"></script>
<script src="/js/jquery-1.11.3.min.js"></script>
<script src="/js/jquery-migrate-1.2.1.min.js"></script>
<script src="/js/common.js"></script>
<script src="/js/wrest.js"></script>
<script src="/js/placeholders.min.js"></script>
<script src="/js/apms.js"></script>
<script src="/js/jquery.mobile.swipe.min.js"></script>
<script src="/js/lang.js"></script>
	
<script>
	var sub_show = "slide";
	var sub_hide = "";
	var menu_startAt = "0";
	var menu_sub = "";
	var menu_subAt = "0";
</script>

<script src="/js/bootstrap.min.js"></script>
<script src="/js/jquery.magnific-popup.min.js"></script>
<script src="/js/sly.min.js"></script>
<script src="/js/custom.js"></script>
<script src="/js/buts.js"></script>

<script>
	function showProfile(){
		var width = 550;
		var height = 340;
		
		var left = (window.screen.width / 2) - (width/2);
		var top = (window.screen.height / 4);
		
		var windowStatus = 'width='+width+', height='+height+', left='+left+', top='+top;
		
		const profileUrl = "profile"
		window.open(profileUrl, "", windowStatus);
	}
</script>
<style>
	.header{border-bottom: 1px solid pink;}
</style>
</head>

<!--							 topper									 -->

<div class="topper">
	<div class="width-container">
		<div class="topper-menu">
			<a href="${root}boardProc" class="v-bar">커뮤니티</a>
<%-- 			<a href="${root}index?formpath=eventMain" class="v-bar">이벤트</a>  --%>
			<a href="${root}noticeProc">공지사항</a>
		</div>
	</div>
</div>

<!-- header -->

<div class="header">
	<div class="width-container">
		<div class="header-logo">
			<a href="${root}index?formpath=main">
			<img src="/img/logo.png" alt="" /></a>
		</div>
		<div class="header-right">
			<c:choose>
				<c:when test="${empty sessionScope.id }">
					<a href="${root}index?formpath=login" class="header-login">로그인</a>
				</c:when>
			
			<c:otherwise>
					<a class="header-user win_memo" href="javascript:void(0);" onclick="showProfile()"> 
					<span class="picture"> 
						<img src="/img/profile${sessionScope.profile}.png" >
					</span> <span class="arrow">
					<img src="/img/mymenu-arrow.png" ></span>
					</a>

					<div class="header-shade" style="display: none"></div>
					<div class="header-profile" style="display: none">
						<div class="block">
							<div class="picture mobile">
								<img src="/img/icon-myimg.png" alt="">
							</div>
							<div class="name"> ${sessionScope.nick }
							</div>
							<!--
								<div class="credit-percent">
									<div class="credit-bar credit-1" style="right: 50%"></div>
								</div>-->
							<div class="grade">
								<a href="#">팟츠 신용 <span
									class="text-purple">개인</span>

								</a> <a href="javascript:;" class="ttip"> 
								<img src="/img/tip.png"
									srcset="/img/tip2.png 2x"
									alt=""> <span class="ttip-text"
									style="right: -29px; width: 160px">
									첫 가입시 9등급이며, 팟츠 사용도 및 거래 점수에 따라 등급이 변할 수 있습니다.</span>
								</a>
							</div>
							<div class="buttons">
								<c:choose>
									<c:when test="${sessionScope.partner eq 'false'}">
										<a href="partnerRegister">파티장신청</a>
									</c:when>
									<c:when test="${sessionScope.partner eq 'true'}">
										<a href="partyList">파티관리</a>
									</c:when>
								</c:choose>
							</div>
						</div>
						<div class="block">
							<ul class="menu">
								<li><a href="#"
									style="color: #84cdcf;">참여중인 파티</a></li>
								<c:choose>
									<c:when test="${sessionScope.partner eq 'true'}">
										<li><a href="#">생성한 파티</a></li>
									</c:when>
								</c:choose>
								
							</ul>
						</div>
						<div class="block">
							<ul class="menu">
								<li>
									<div class="point">
										<span class="icon">
										<a href="${root}index?formpath=myPoint">
										<img src="/img/icon-coin-star-big.png"
												srcset="/img/icon-coin-star-big2.png 2x"
												alt=""></a></span>
										 <span>
										 <a href="${root }myPointproc">팟</a></span> 
										 <span class="right"> 
										 <a href="${root }myPointproc">
										 <span class="price Rajdhani">${sessionScope.compoint}</span></a> 
										 <a href="${root}index?formpath=myPointCharge"
											class="charge fill">충전</a>
										</span>
									</div>
								</li>
							</ul>
						</div>
						<div class="block">
							<ul class="menu">
								<li><a href="memberInfoProc">회원정보확인</a></li>
								<li><a href="index?formpath=partyOrderList">결제내역 조회</a></li>
							</ul>
						</div>
						<div class="block">
							<ul class="menu">
								<li><a href="${root }logout">로그아웃</a></li>
								<li><a href="${root }index?formpath=faq1">FAQ</a></li>
<!-- 								<li><a href="javascript:ChannelIO('showMessenger');">1:1문의하기</a></li> -->
							</ul>
						</div>
					</div>
				</c:otherwise>
			</c:choose>
		</div>
	</div>

	<div class="header-menu pc">
		<ul>
			<li class="menu-li off"><a href="${root}videoProc" class="menu-a">
					<!-- 영상 -->영상 <span class="menu_new"></span>
			</a>
				<div class="sub-menu" style="display: none">
					<div class="sub-width">
						<div class="sub-tip">
							<span class="text-purple">영상</span> 인기 카테고리 <a
								href="javascript:;" class="ttip"> <img src="/img/tip.png"
								alt="" /> <span class="ttip-text" style="left: 0; width: 166px">
									많이 생성된 파티방 및 인기 검색어 기준으로 노출됩니다. </span>
							</a>
						</div>
						<ul>
							<li class="sub-li off"><a href="${root}netflixProc" class="sub-a">#넷플릭스<span class="sub-1new2"></span></a></li>
							<li class="sub-li off"><a href="${root}disneyProc" class="sub-a">#디즈니 </a></li>
							<li class="sub-li off"><a href="${root}watchaProc" class="sub-a">#왓챠</a></li>
							<li class="sub-li off"><a href="${root}youtubeProc" class="sub-a">#유튜브 <span class="sub-1new2"></span></a></li>
							<li class="sub-li off"><a href="${root}wavveProc" class="sub-a">#웨이브 <span class="sub-1new2"></span></a></li>
							<li class="sub-li off"><a href="${root}tivingProc" class="sub-a">#티빙</a></li>
<!-- 							<li class="sub-li off"><a href="#" class="sub-a">#라프텔 </a></li> -->
<!-- 							<li class="sub-li off"><a href="#" class="sub-a">#AppleOne</a></li> -->
<!-- 							<li class="sub-li off"><a href="#" class="sub-a">#프라임비디오</a></li> -->
<!-- 							<li class="sub-li off"><a href="#" class="sub-a">#테니스TV</a></li> -->
<!-- 							<li class="sub-li off"><a href="#" class="sub-a">기타(영상)</a></li> -->
						</ul>
					</div>
				</div></li>

			<li class="menu-li off"><a href="${root}artProc" class="menu-a">
					<!-- 영상 -->도서/음악
			</a>
				<div class="sub-menu" style="display: none">
					<div class="sub-width">
						<div class="sub-tip">
							<span class="text-purple">도서/음악</span> 인기 카테고리 <a
								href="javascript:;" class="ttip"> <img src="/img/tip.png"
								alt="" /> <span class="ttip-text" style="left: 0; width: 166px">
									많이 생성된 파티방 및 인기 검색어 기준으로 노출됩니다. </span>
							</a>
						</div>
						<ul>
							<li class="sub-li off"><a href="${root}ridiProc" class="sub-a">#리디북스</a></li>
							<li class="sub-li off"><a href="${root}millieProc" class="sub-a">#밀리의서재</a></li>
							<li class="sub-li off"><a href="${root}yes24Proc" class="sub-a">#YES24</a></li>
							<li class="sub-li off"><a href="${root}spotifyProc" class="sub-a">#스포티파이</a></li>
<!-- 							<li class="sub-li off"><a href="#" class="sub-a">#윌라</a></li> -->
<!-- 							<li class="sub-li off"><a href="#" class="sub-a">#애플뮤직</a></li> -->
<!-- 							<li class="sub-li off"><a href="#" class="sub-a">#케이크 </a></li> -->
<!-- 							<li class="sub-li off"><a href="#" class="sub-a">기타(도서/음악)</a></li> -->
						</ul>
					</div>
				</div></li>

			<li class="menu-li off"><a href="${root}gameProc" class="menu-a">
					<!-- 영상 -->게임
			</a>
				<div class="sub-menu" style="display: none">
					<div class="sub-width">
						<div class="sub-tip">
							<span class="text-purple">게임</span> 인기 카테고리 <a
								href="javascript:;" class="ttip"> <img src="/img/tip.png"
								alt="" /> <span class="ttip-text" style="left: 0; width: 166px">
									많이 생성된 파티방 및 인기 검색어 기준으로 노출됩니다. </span>
							</a>
						</div>
						<ul>
							<li class="sub-li off"><a href="${root}nintendoProc" class="sub-a">#닌텐도온라인</a></li>
							<li class="sub-li off"><a href="${root}xboxProc" class="sub-a">#XBOX </a></li>
<!-- 							<li class="sub-li off"><a href="#" class="sub-a">#스팀</a></li> -->
<!-- 							<li class="sub-li off"><a href="#" class="sub-a">#PS4/PS5</a></li> -->
<!-- 							<li class="sub-li off"><a href="#" class="sub-a">기타</a></li> -->
						</ul>
					</div>
				</div></li>

			<li class="menu-li off"><a href="${root}etcProc" class="menu-a">
					<!-- 영상 -->기타
			</a>

				<div class="sub-menu" style="display: none">
					<div class="sub-width">
						<div class="sub-tip">
							<span class="text-purple">기타</span> 인기 카테고리 <a
								href="javascript:;" class="ttip"> <img src="/img/tip.png"
								alt="" /> <span class="ttip-text" style="left: 0; width: 166px">
									많이 생성된 파티방 및 인기 검색어 기준으로 노출됩니다. </span>
							</a>
						</div>
						<ul>
							<li class="sub-li off"><a href="${root}membershipProc" class="sub-a">#멤버쉽 </a></li>
							<li class="sub-li off"><a href="${root}msofficeProc" class="sub-a">#MS Office</a></li>
<!-- 							<li class="sub-li off"><a href="#" class="sub-a">#그래픽 </a></li> -->
<!-- 							<li class="sub-li off"><a href="#" class="sub-a">#운영체제</a></li> -->
<!-- 							<li class="sub-li off"><a href="#" class="sub-a">#VPN</a></li> -->
<!-- 							<li class="sub-li off"><a href="#" class="sub-a">기타</a></li> -->
						</ul>
					</div>
				</div></li>
		</ul>
	</div>
</div>