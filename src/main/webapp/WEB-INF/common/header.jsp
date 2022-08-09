<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html lang="ko">
<head>
<title>Buts</title>

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

<!-- 스크립트 -->

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
<!-- topper -->

<div class="topper">
	<div class="width-container">
		<div class="topper-menu">
			<a href="${root}index?formpath=communityBoard" class="v-bar">커뮤니티</a>
			<a href="${root}index?formpath=eventMain" class="v-bar">이벤트</a> <a
				href="${root}index?formpath=noticeBoard">공지사항</a>
		</div>
	</div>
</div>

<!-- header -->

<div class="header">
	<div class="width-container">
		<div class="header-logo">
			<a href="${root}index?formpath=home">
			<img src="/img/logo.png" srcset="/img/logo2.png 2x" alt="" /></a>
		</div>
		<div class="header-right">
			<c:choose>
				<c:when test="${empty sessionScope.id }">
					<a href="${root}index?formpath=login" class="header-login">로그인</a>
				</c:when>
			
			<c:otherwise>
					<a href="https://buts.co.kr/bbs/myphoto.php" target="_blank"
						class="header-user win_memo"> <span class="picture"> 
						<img src="https://buts.co.kr/thema/Buts/colorset/Basic/img/icon-myimg.png" 	alt="">
					</span> <span class="arrow">
					<img src="https://buts.co.kr/thema/Buts/colorset/Basic/img/mymenu-arrow.png" alt=""></span>
					</a>

					<div class="header-shade" style="display: none"></div>
					<div class="header-profile" style="display: none">
						<div class="block">
							<div class="picture mobile">
								<img src="https://buts.co.kr/thema/Buts/colorset/Basic/img/icon-myimg.png" alt="">
							</div>
							<div class="name">
								<div>${member.nick }</div> <a href="${root }logout" class="header-logout"> 
									<img src="https://buts.co.kr/thema/Buts/colorset/Basic/img/img-input-text-reste-copy.png"
									srcset="https://buts.co.kr/thema/Buts/colorset/Basic/img/2x/img-input-text-reste-copy.png 2x" alt="">
								</a>
							</div>
							<!--
								<div class="credit-percent">
									<div class="credit-bar credit-1" style="right: 50%"></div>
								</div>-->
							<div class="grade">
								<a href="https://buts.co.kr/bbs/partner_level.php">벗츠 신용 <span
									class="text-purple">개인</span>

								</a> <a href="javascript:;" class="ttip"> 
								<img src="https://buts.co.kr/thema/Buts/colorset/Basic/img/tip.png"
									srcset="https://buts.co.kr/thema/Buts/colorset/Basic/img/2x/tip.png 2x"
									alt=""> <span class="ttip-text"
									style="right: -29px; width: 160px">
									첫 가입시 9등급이며, 벗츠 사용도 및 거래 점수에 따라 등급이 변할 수 있습니다.</span>
								</a>
							</div>
							<div class="buttons">
								<a href="#">파티관리</a>
							</div>
						</div>
						<div class="block">
							<ul class="menu">
								<li><a href="https://buts.co.kr/shop/list_my.php?ca_id=10"
									style="color: #7e69fe;">참여중인 파티</a></li>
								<li><a
									href="https://buts.co.kr/shop/list_partner.php?ca_id=10">생성한
										파티</a></li>

							</ul>
						</div>
						<div class="block">
							<ul class="menu">
								<li>
									<div class="point">
										<span class="icon">
										<a href="https://buts.co.kr/bbs/point_buts.php">
										<img src="https://buts.co.kr/thema/Buts/colorset/Basic/img/icon-coin-star-big.png"
												srcset="https://buts.co.kr/thema/Buts/colorset/Basic/img/2x/icon-coin-star-big.png 2x"
												alt=""></a></span>
										 <span>
										 <a href="https://buts.co.kr/bbs/point_buts.php">벗</a></span> 
										 <span class="right"> 
										 <a href="https://buts.co.kr/bbs/point_buts.php">
										 <span class="price Rajdhani">540</span></a> 
										 <a href="https://buts.co.kr/shop/order_point_form.php"
											class="charge fill">충전</a>
										</span>
									</div>
								</li>
								<li>
									<div class="point">
										<span class="icon">
										<a href="https://buts.co.kr/bbs/up_buts.php">
										<img src="https://buts.co.kr/thema/Buts/colorset/Basic/img/icon-up.png"
												srcset="https://buts.co.kr/thema/Buts/colorset/Basic/img/2x/icon-up.png 2x"
												alt=""></a></span> 
										<span>
											<a href="#">파티 UP</a></span>
										 <span class="right"> 
										 <a href="#">
										 <span class="price Rajdhani">0</span></a> 
										 <span>개</span> 
										 <a href="#" class="charge">충전</a>
										</span>
									</div>
								</li>
							</ul>
						</div>
						<div class="block">
							<ul class="menu">
								<li><a href="#">회원정보확인</a></li>
								<li><a href="#">결제내역 조회</a></li>
							</ul>
						</div>
						<div class="block">
							<ul class="menu">
								<li><a href="#">FAQ</a></li>
								<li><a href="javascript:ChannelIO('showMessenger');">1:1문의하기</a></li>
							</ul>
						</div>
					</div>
				</c:otherwise>
			</c:choose>
		</div>
	</div>

	<div class="header-menu pc">
		<ul>
			<li class="menu-li off"><a href="#" class="menu-a">
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
							<li class="sub-li off"><a href="#" class="sub-a">#넷플릭스<span
									class="sub-1new2"></span></a></li>
							<li class="sub-li off"><a href="#" class="sub-a">#디즈니 </a></li>
							<li class="sub-li off"><a href="#" class="sub-a">#왓챠</a></li>
							<li class="sub-li off"><a href="#" class="sub-a">#유튜브 <span
									class="sub-1new2"></span></a></li>
							<li class="sub-li off"><a href="#" class="sub-a">#웨이브 <span
									class="sub-1new2"></span></a></li>
							<li class="sub-li off"><a href="#" class="sub-a">#티빙</a></li>
							<li class="sub-li off"><a href="#" class="sub-a">#라프텔 </a></li>
							<li class="sub-li off"><a href="#" class="sub-a">#AppleOne</a></li>
							<li class="sub-li off"><a href="#" class="sub-a">#프라임비디오</a></li>
							<li class="sub-li off"><a href="#" class="sub-a">#테니스TV</a></li>
							<li class="sub-li off"><a href="#" class="sub-a">기타(영상)</a></li>
						</ul>
					</div>
				</div></li>

			<li class="menu-li off"><a href="#" class="menu-a">
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
							<li class="sub-li off"><a href="#" class="sub-a">#리디북스</a></li>
							<li class="sub-li off"><a href="#" class="sub-a">#밀리의서재</a></li>
							<li class="sub-li off"><a href="#" class="sub-a">#YES24</a></li>
							<li class="sub-li off"><a href="#" class="sub-a">#윌라</a></li>
							<li class="sub-li off"><a href="#" class="sub-a">#스포티파이</a></li>
							<li class="sub-li off"><a href="#" class="sub-a">#애플뮤직</a></li>
							<li class="sub-li off"><a href="#" class="sub-a">#케이크 </a></li>
							<li class="sub-li off"><a href="#" class="sub-a">기타(도서/음악)</a></li>
						</ul>
					</div>
				</div></li>

			<li class="menu-li off"><a href="#" class="menu-a">
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
							<li class="sub-li off"><a href="#" class="sub-a">#닌텐도온라인
							</a></li>
							<li class="sub-li off"><a href="#" class="sub-a">#스팀</a></li>
							<li class="sub-li off"><a href="#" class="sub-a">#PS4/PS5</a></li>
							<li class="sub-li off"><a href="#" class="sub-a">#XBOX </a></li>
							<li class="sub-li off"><a href="#" class="sub-a">기타</a></li>
						</ul>
					</div>
				</div></li>

			<li class="menu-li off"><a href="#" class="menu-a">
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
							<li class="sub-li off"><a href="#" class="sub-a">#맴버쉽 </a></li>
							<li class="sub-li off"><a href="#" class="sub-a">#MS
									Office</a></li>
							<li class="sub-li off"><a href="#" class="sub-a">#그래픽 </a></li>
							<li class="sub-li off"><a href="#" class="sub-a">#운영체제</a></li>
							<li class="sub-li off"><a href="#" class="sub-a">#VPN</a></li>
							<li class="sub-li off"><a href="#" class="sub-a">기타</a></li>
						</ul>
					</div>
				</div></li>
		</ul>
	</div>
</div>