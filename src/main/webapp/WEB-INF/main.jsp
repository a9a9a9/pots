<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url var="root" value="/" />
<html>
<head>
<meta charset="UTF-8">
<title>Main</title>
<script>
	var result = "${msg}";
	if (result === "가입 완료") {
		alert(result);
	} else if (result === "탈퇴 완료") {
		alert(result);
	} else if (result === "수정 완료") {
		alert(result);
	} else if (result === "충전 완료") {
		alert(result);
	}else if(result === "로그 아웃"){
		alert('로그아웃 하셨습니다.');
	}
</script>
<style>
	.at-container {max-width:1200px;}
	.no-responsive .wrapper, .no-responsive .at-container-wide { min-width:1200px; }
	.no-responsive .boxed.wrapper, .no-responsive .at-container { width:1200px; }
	.at-menu .nav-height { height:44px; line-height:44px !important; }
	.pc-menu, .pc-menu .nav-full-back, .pc-menu .nav-full-height { height:44px; }
	.pc-menu .nav-top.nav-float .menu-a { padding:0px 25px; }
	.pc-menu .nav-top.nav-float .sub-1div::before { left: 25px; }
	.pc-menu .subm-w { width:170px; }
	@media all and (min-width:1200px) {
		.responsive .boxed.wrapper { max-width:1200px; }
	}
</style>
<!-- <link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" /> -->
<!-- 	<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick-theme.css"/> -->
<!-- <script type="text/javascript" -->
<!-- 	src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script> -->
</head>
<body class="responsive is-pc">

	<div class="wrap wrapper  ko">
		<div class="body">
			<div class="width-container" style="height: auto;">
				<div class="title-wrap">
					<br> <br> 
					<a href="#" onclick="return false;">
					<img src="https://buts.co.kr/thema/Buts/colorset/Basic/img/20220804_sbuk_main_banner.png" alt="" /></a>
				</div>
				<div class="title-wrap">
					<div class="title"> 벗츠 <span class="text-purple">파티</span></div>
					<div class="title-right">
						<a href="${root}partyCreate" class="button border round button-purple">파티 만들기</a>
					</div>
				</div>
				
				<div class="item-slide party">
					<a href="" class="slide-navi prev" style="display: inline;"></a> 
					<a href="" class="slide-navi next" style="display: inline;"></a>
					
					<div class="item-boundary">
						<div class="item-list" style="left: 0px;">
							<div class="item-row">
								<div class="item-type">YES24 북클럽</div>
								<div class="item-title">신용1등급 / 2개월 / 일60원</div>
								<div class="item-members">
									<span class="item-member">
									<img src="https://buts.co.kr/thema/Buts/colorset/Basic/img/icon-butsicon-small.png" alt=""></span> 
									<span class="item-member">
									<img src="https://buts.co.kr/thema/Buts/colorset/Basic/img/icon-butsicon-small.png" alt=""></span> 
									<span class="item-member">
									<img src="https://buts.co.kr/thema/Buts/colorset/Basic/img/icon-butsicon-small.png" alt=""></span> 
									<span class="item-member">
									<img src="https://buts.co.kr/thema/Buts/colorset/Basic/img/icon-butsicon-small-glay.png" alt=""></span> 
									<span class="item-member">
									<img src="https://buts.co.kr/thema/Buts/colorset/Basic/img/icon-butsicon-small-glay.png" alt=""></span>
								</div>
								<div class="item-info">
									<div class="item-date">
										22.10.13<span class="pc-inline">까지</span>(<strong>55</strong>일)
									</div>
									<div class="item-price">
										<span class="Rajdhani">3,300</span>원
									</div>
								</div>
								<a href="https://buts.co.kr/shop/item.php?it_id=1660324389"
									class="item-button"></a>
							</div>
						</div>
					</div>
					<div class="indicator">
						<span class="on"></span>
						<span class=""></span>
						<span class=""></span>
						<span class=""></span>
						<span class=""></span>
					</div>
				</div>

				<!-- recommand -->
				<div class="title">
					벗츠 <span class="text-purple">추천 컨텐츠!</span>
				</div>
				<div class="recommand-list">
					<a href="http://www.youtube.com/watch?v=U9q-iiHgWPk"
						class="recommand-thumb popup-youtube"><img
						src="https://img.youtube.com/vi/U9q-iiHgWPk/mqdefault.jpg" alt="" /></a>
					<a href="http://www.youtube.com/watch?v=H-L5Ivk4XPI"
						class="recommand-thumb popup-youtube"><img
						src="https://img.youtube.com/vi/H-L5Ivk4XPI/mqdefault.jpg" alt="" /></a>
					<a href="http://www.youtube.com/watch?v=hh_549VGJU8"
						class="recommand-thumb popup-youtube"><img
						src="https://img.youtube.com/vi/hh_549VGJU8/mqdefault.jpg" alt="" /></a>
					<a href="http://www.youtube.com/watch?v=_R2pVwDrfSA"
						class="recommand-thumb popup-youtube"><img
						src="https://img.youtube.com/vi/_R2pVwDrfSA/mqdefault.jpg" alt="" /></a>
				</div>

			</div>
		</div>
	</div>
</body>
</html>