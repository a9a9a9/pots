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
<script src="/js/common.js"></script>
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
</head>
<!-- topper -->

<div class="topper">
	<div class="width-container">
		<div class="topper-menu">
			<a href="${root}boardProc" class="v-bar">커뮤니티</a>
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
					<a class="header-user win_memo" href="javascript:void(0);" onclick="showProfile()"> 
					<span class="picture"> 
						<img src="/img/profile${sessionScope.profile}.png" >
					</span> <span class="arrow">
					<img src="https://buts.co.kr/thema/Buts/colorset/Basic/img/mymenu-arrow.png" ></span>
					</a>

					<div class="header-shade" style="display: none"></div>
					<div class="header-profile" style="display: none">
						<div class="block">
							<div class="picture mobile">
								<img src="https://buts.co.kr/thema/Buts/colorset/Basic/img/icon-myimg.png" alt="">
							</div>
							<div class="name">
								<div>${sessionScope.nick }</div> <a href="${root }logout" class="header-logout"> 
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
								<c:choose>
									<c:when test="${sessionScope.partner eq 'true'}">
										<a href="partnerRegister">파티장신청</a>
									</c:when>
									<c:otherwise>
										<a href="partyList">파티관리</a>
									</c:otherwise>
								</c:choose>
							</div>
						</div>
						<div class="block">
							<ul class="menu">
								<li><a href="#"
									style="color: #7e69fe;">참여중인 파티</a></li>
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
										<a href="https://buts.co.kr/bbs/point_buts.php">
										<img src="https://buts.co.kr/thema/Buts/colorset/Basic/img/icon-coin-star-big.png"
												srcset="https://buts.co.kr/thema/Buts/colorset/Basic/img/2x/icon-coin-star-big.png 2x"
												alt=""></a></span>
										 <span>
										 <a href="https://buts.co.kr/bbs/point_buts.php">벗</a></span> 
										 <span class="right"> 
										 <a href="https://buts.co.kr/bbs/point_buts.php">
										 <span class="price Rajdhani">${sessionScope.point}</span></a> 
										 <a href="https://buts.co.kr/shop/order_point_form.php"
											class="charge fill">충전</a>
										</span>
									</div>
								</li>
							</ul>
						</div>
						<div class="block">
							<ul class="menu">
								<li><a href="memberInfoProc">회원정보확인</a></li>
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


			
<c:set var="p" value="${info }"/>
<script src="https://buts.co.kr/skin/apms/item/Miso-Basic4/shop.js"></script>

<div class="title-wrap border">
	<div class="title">
	<a href="./list.php?ca_id=10" class="text">${p.party_service }</a>		</div>
	<div class="title-right"><a href="/partyCreate" class="button border round button-purple">파티 만들기</a></div>
</div>

<div class="item-view-title">
	<div class="symbol">
		<img src="https://buts.co.kr/thema/Buts/colorset/category/1030.jpg" alt="" />
	</div>
		<span class="text">${p.party_subservice }</span>
	<div class="subject">${p.party_title }</div>	
</div>

<div class="item-view-row">
	<span class="picture">
		<img src="https://buts.co.kr/data/member_image/mo/momok22.gif" alt="">		
	</span>
	<span>${p.nick}<span class="item-view-grade text-purple">
			
			<a href="https://buts.co.kr/bbs/partner_level.php">
				<img style="margin-top: -2px" src="https://buts.co.kr/thema/Buts/colorset/Basic/img/pt_level5.png" />
					
			</a>
					</span>
	</span>
		<span class="right pc-block">파티 번호 : <span class="lightgrey">${p.party_num }</span></span>
</div>

<div class="item-view-row mobile-block">
	<span>파티 번호 : <span class="lightgrey"><span class="lightgrey">${p.party_num }</span></span>
	<a href="#popup-policy" class="right fw300 text-purple popup-inline">벗츠 환불 보증 정책 보기</a>
</div>

<div class="item-view-row">
		<span > 종료일 : 
		<span class="fw300">
			${p.party_end }		</span>		
		<span class="lightgrey">
		(${p.party_left_date }일 / 일 평균 ${p.party_charge }원)		</span>
	</span>
		
		<span class="v-bar left">참여 비용 : <span class="price Rajdhani text-purple">${p.party_total_charge }</span><span class="lightgrey"> 원</span></span>
		
		
		<c:if test="${memberChk ==  'checked'}">
			<a href="#popup-account" class="item-view-idpw popup-inline button round button-red">아이디/패스워드 보기</a>
	<div id="popup-account" class="popup-magnific mfp-hide white-popup-block">
		<h3><span class="text-purple">계정</span> 정보</h3>
		<div class="popup-table">
			<table>
				<colgroup>
				<col style="width: 30%" />
				<col />
				</colgroup>
				<tbody>
				<tr>
					<th>계정</th>
					<td>
										<input id="myID"  onclick="copyText('myID')" value="${p.party_id }" readonly style="border:0px;"  class="text-purple">				
										</td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td>
										<input id="myPW"  onclick="copyText('myPW')" value="${p.party_pw }" readonly style="border:0px;"  class="text-purple">	
										</td>
				</tr>
				</tbody>
			</table>
		</div>
		<div class="popup-button center">
			<a href="" class="magnific-close button small button-purple">닫기</a>
		</div>
	</div>
	</c:if>
	
	
		
	<a href="#popup-policy" class="right fw300 text-purple pc-block popup-inline">벗츠 환불 보증 정책 보기</a>
	<div id="popup-policy" class="popup-magnific mfp-hide white-popup-block">
		<h3 class="center">환불정책 안내</h3>
		<div class="popup-policy">
		<h4 class="text-purple">환불 진행 절차</h4>
		<ul>
			<li>
			판매자의 귀책사유로 서비스 이용이 제한되는 직 후, 파티장(판매자)에게 문제해결 요청을 반드시 진행 해야하며, 요청 진행 후 24시간 내에 조치가 진행되지 않을 경우 환불이 진행 됩니다.
			<div class="lightgrey">참여자(구매자)가 문제해결 요청한 내용은 분쟁해결 및 환불내용에 자료로 사용 될 수 있습니다.</div>
			</li>
			<li>환불신청은 [결제내역조회] 페이지에서 가능하며, 환불 비용은 환불신청을 진행한 날짜의 +1일로 계산되어 환불이 진행 됩니다.</li>
			<li>위 사항에 해당하는 경우 파티장 의사와 상관없이 벗츠에서 환불비용을 부담하여 제공하고 있으며, 포인트 환불로 진행됩니다.</li>
		</ul>
		<h4 class="text-purple">환불 불가</h4>
		<ul>
			<li>
			구매자의 필요 사항에 의한 요구일 경우 환불이 반려 될 수 있습니다.
			<div class="lightgrey">예) 성인인증 및 핀번호 설정 등 불편하지만 구매자가 직접 설정할 수 있는 영역</div>
			</li>
			<li>
			환불신청은 [결제내역조회] 페이지에서 가능하며, 환불 비용은 환불신청을 진행한 날짜의 +1일로 계산되어 환불이 진행 됩니다.
			<div class="lightgrey">예) 프로그램 오류, 네트워크 환경 불안으로 인한 오류 등</div>
			</li>
			<li>위 사항에 해당하는 경우 파티장 의사와 상관없이 벗츠에서 환불비용을 부담하여 제공하고 있으며, 포인트 환불로 진행됩니다.</li>
		</ul>
		</div>
		<div class="popup-button center">
		<a href="" class="magnific-close button small button-purple">확인</a>
		</div>
	</div>
</div>
<c:choose>
	<c:when test="${joined == 0 }">
		<div class="empty">
			<div class="icon"><img src="https://buts.co.kr/thema/Buts/colorset/Basic/img/icon-butsicon-big-glay.png" /></div>
			<h5>아직 모집된 인원이 없습니다.</h5>
		</div>
	</c:when>
	<c:otherwise>

	<div class="item-view-user">
		<ul>
	
	<c:forEach var="m" items="${list }">
		<li>
			<div class="picture">
				<img src="https://buts.co.kr/thema/Buts/colorset/Basic/img/icon-butsicon-middle.png" alt="" />			</div>
			<div class="name">
				${m.nick }			</div>
			<div class="date">
							</div>
			<div class="date">
				${m.mystartday } 
				참여			
			</div>
		</li>
						
		</c:forEach>
		<c:if test="${ joined != 100}">
			<c:forEach  begin="${joined + 1 }" end="${p.party_member }" varStatus="vs">
				<li>
					<div class="picture">
						<img src="https://buts.co.kr/thema/Buts/colorset/Basic/img/icon-butsicon-middle-glay.png" alt="" />				</div>
					<div class="name">
					${joined + vs.count }.벗츠
					</div>
					<div class="date">
					모집대기중
					</div>
				</li>
		</c:forEach>
	</c:if>
				</ul>
</div>
	</c:otherwise>
</c:choose>


<div class="item-view-caution">
		<div class="tag">
									<span> 공유 금지 </span>
									<span> 설정 임의변경 불가 </span>
									<span> 개인사정 환불 불가 </span>
									<span> 위반 시 강제 조치 </span>
					</div>
		<div class="text">${p.party_notice }
</div>

<form name="fitem" method="post" action="https://buts.co.kr/shop/cartupdate.php" role="form" onsubmit="return fitem_submit(this);">
	<input type="hidden" name="it_id[]" value="1656867366">
	<input type="hidden" name="it_msg1[]" value="">
	<input type="hidden" name="it_msg2[]" value="">
	<input type="hidden" name="it_msg3[]" value="">
	<input type="hidden" name="sw_direct">
	<input type="hidden" name="url">


<div id="it_sel_option">
	<ul id="it_opt_added" class="list-group" style="margin:0;">
		<li class="it_opt_list">
			<input type="hidden" name="io_type[1656867366][]" value="0">
			<input type="hidden" name="io_id[1656867366][]" value="">
			<input type="hidden" name="io_value[1656867366][]" value="[정식사업자]신속안전 프리미엄과 뮤직">
			<input type="hidden" class="io_price" value="0">
			<input type="hidden" class="io_stock" value="2">											
			<input type="hidden" name="ct_qty[1656867366][]" value="1" id="ct_qty_7" >																								
		</li>
	</ul>
	<script>
		$(function() {
			price_calculate();
		});
	</script>
</div>

<div class="item-view-check">
	<div class="input-check item-view-confirm">
		<input type="checkbox" id="chk_confirm" name="chk_confirm" />
		<label for="chk_confirm">파티 규칙에 대한 내용 확인 및 파티 알림 수신에 동의합니다.</label>
	</div>
</div>
<br>
<div class="item-view-caution" style="border-color:#7e69fe; background-color: #ffffff;">
	<div class="text">
		<b>[벗츠에서 알려 드립니다.]</b><br>
		개인 거래를 유도하여 피해가 생기는 경우가 발생되고 있습니다.<br>
		벗츠를 통하지 않는 <span style="color:#7e69fe;">개인간의 거래 또는 파티장 임의로 제공되는 추가기간에 대해서는 어떠한 경우에도 보상 및 책임지지 않습니다.</span><br>
		연락을 유도하여 개인거래를 진행하거나 타 사이트를 홍보하는 경우 '벗츠'에 신고 부탁 드립니다. (신고 보상 3,000포인트 제공)<br>
	</div>
</div>

<div class="button-align center">
	<a href="./list.php?ca_id=10&amp;page=1" class="button large">목록</a>
	
						<button type="submit" onclick="document.pressed=this.value;" class="button large button-purple">참여신청</button>
				</div>

	<input type="hidden" id="it_price" value="50">

</form>

<script>
	// BS3
	$(function() {
		$("select.it_option").addClass("form-control input-sm");
		$("select.it_supply").addClass("form-control input-sm");
	});

	// 재입고SMS 알림
	function popup_stocksms(it_id, ca_id) {
		url = "./itemstocksms.php?it_id=" + it_id + "&ca_id=" + ca_id;
		opt = "scrollbars=yes,width=616,height=420,top=10,left=10";
		popup_window(url, "itemstocksms", opt);
	}

	// 바로구매, 장바구니 폼 전송
	function fitem_submit(f) {

		if(document.getElementById("chk_confirm").checked == false){
			alert('안내 및 규칙을 읽고\n체크박스에 체크해 주세요.');
			document.getElementById("chk_confirm").focus();
			return false;
		}

		f.action = "https://buts.co.kr/shop/cartupdate.php";
		f.target = "";

		if (document.pressed == "장바구니") {
			f.sw_direct.value = 0;
		} else { // 바로구매
			f.sw_direct.value = 1;
		}

		// 판매가격이 0 보다 작다면
		if (document.getElementById("it_price").value < 0) {
			alert("전화로 문의해 주시면 감사하겠습니다.");
			return false;
		}

		if($(".it_opt_list").size() < 1) {
			alert("선택옵션을 선택해 주십시오.");
			return false;
		}

		var val, io_type, result = true;
		var sum_qty = 0;
		var min_qty = parseInt(1);
		var max_qty = parseInt(0);
		var $el_type = $("input[name^=io_type]");

		$("input[name^=ct_qty]").each(function(index) {
			val = $(this).val();

			if(val.length < 1) {
				alert("수량을 입력해 주십시오.");
				result = false;
				return false;
			}

			if(val.replace(/[0-9]/g, "").length > 0) {
				alert("수량은 숫자로 입력해 주십시오.");
				result = false;
				return false;
			}

			if(parseInt(val.replace(/[^0-9]/g, "")) < 1) {
				alert("수량은 1이상 입력해 주십시오.");
				result = false;
				return false;
			}

			io_type = $el_type.eq(index).val();
			if(io_type == "0")
				sum_qty += parseInt(val);
		});

		if(!result) {
			return false;
		}

		if(min_qty > 0 && sum_qty < min_qty) {
			alert("선택옵션 개수 총합 "+number_format(String(min_qty))+"개 이상 주문해 주십시오.");
			return false;
		}

		if(max_qty > 0 && sum_qty > max_qty) {
			alert("선택옵션 개수 총합 "+number_format(String(max_qty))+"개 이하로 주문해 주십시오.");
			return false;
		}

		if (document.pressed == "장바구니") {
			$.post("./itemcart.php", $(f).serialize(), function(error) {
				if(error != "OK") {
					alert(error.replace(/\\n/g, "\n"));
					return false;
				} else {
					if(confirm("장바구니에 담겼습니다.\n\n바로 확인하시겠습니까?")) {
						//document.location.href = "./cart.php";
					}
				}
			});
			return false;
		} else {
			return true;
		}
	}

	// Wishlist
	function apms_wishlist(it_id) {
		if(!it_id) {
			alert("코드가 올바르지 않습니다.");
			return false;
		}

		$.post("./itemwishlist.php", { it_id: it_id },	function(error) {
			if(error != "OK") {
				alert(error.replace(/\\n/g, "\n"));
				return false;
			} else {
				if(confirm("위시리스트에 담겼습니다.\n\n바로 확인하시겠습니까?")) {
					document.location.href = "./wishlist.php";
				}
			}
		});

		return false;
	}

	// Recommend
	function apms_recommend(it_id, ca_id) {
		if (!g5_is_member) {
			alert("회원만 추천하실 수 있습니다.");
		} else {
			url = "./itemrecommend.php?it_id=" + it_id + "&ca_id=" + ca_id;
			opt = "scrollbars=yes,width=616,height=420,top=10,left=10";
			popup_window(url, "itemrecommend", opt);
		}
	}
</script>

<div class="sns-share-icon">
	<a href="https://buts.co.kr/bbs/sns_send.php?longurl=https%3A%2F%2Fbuts.co.kr%2Fshop%2Fitem.php%3Fit_id%3D1656867366&amp;title=%5B%EC%A0%95%EC%8B%9D%EC%82%AC%EC%97%85%EC%9E%90%5D%EC%8B%A0%EC%86%8D%EC%95%88%EC%A0%84+%ED%94%84%EB%A6%AC%EB%AF%B8%EC%97%84%EA%B3%BC+%EB%AE%A4%EC%A7%81+%7C+Buts&amp;sns=facebook" onclick="apms_sns('facebook','https://buts.co.kr/bbs/sns_send.php?longurl=https%3A%2F%2Fbuts.co.kr%2Fshop%2Fitem.php%3Fit_id%3D1656867366&amp;title=%5B%EC%A0%95%EC%8B%9D%EC%82%AC%EC%97%85%EC%9E%90%5D%EC%8B%A0%EC%86%8D%EC%95%88%EC%A0%84+%ED%94%84%EB%A6%AC%EB%AF%B8%EC%97%84%EA%B3%BC+%EB%AE%A4%EC%A7%81+%7C+Buts&amp;sns=facebook'); return false;" target="_blank"><img src="https://buts.co.kr/skin/apms/item/Miso-Basic4/img/sns_fb.png" alt="Facebook"></a> <a href="https://buts.co.kr/bbs/sns_send.php?longurl=https%3A%2F%2Fbuts.co.kr%2Fshop%2Fitem.php%3Fit_id%3D1656867366&amp;title=%5B%EC%A0%95%EC%8B%9D%EC%82%AC%EC%97%85%EC%9E%90%5D%EC%8B%A0%EC%86%8D%EC%95%88%EC%A0%84+%ED%94%84%EB%A6%AC%EB%AF%B8%EC%97%84%EA%B3%BC+%EB%AE%A4%EC%A7%81+%7C+Buts&amp;sns=twitter" onclick="apms_sns('twitter','https://buts.co.kr/bbs/sns_send.php?longurl=https%3A%2F%2Fbuts.co.kr%2Fshop%2Fitem.php%3Fit_id%3D1656867366&amp;title=%5B%EC%A0%95%EC%8B%9D%EC%82%AC%EC%97%85%EC%9E%90%5D%EC%8B%A0%EC%86%8D%EC%95%88%EC%A0%84+%ED%94%84%EB%A6%AC%EB%AF%B8%EC%97%84%EA%B3%BC+%EB%AE%A4%EC%A7%81+%7C+Buts&amp;sns=twitter'); return false;" target="_blank"><img src="https://buts.co.kr/skin/apms/item/Miso-Basic4/img/sns_twt.png" alt="Twitter"></a> <a href="https://buts.co.kr/bbs/sns_send.php?longurl=https%3A%2F%2Fbuts.co.kr%2Fshop%2Fitem.php%3Fit_id%3D1656867366&amp;title=%5B%EC%A0%95%EC%8B%9D%EC%82%AC%EC%97%85%EC%9E%90%5D%EC%8B%A0%EC%86%8D%EC%95%88%EC%A0%84+%ED%94%84%EB%A6%AC%EB%AF%B8%EC%97%84%EA%B3%BC+%EB%AE%A4%EC%A7%81+%7C+Buts&amp;sns=gplus" onclick="apms_sns('googleplus','https://buts.co.kr/bbs/sns_send.php?longurl=https%3A%2F%2Fbuts.co.kr%2Fshop%2Fitem.php%3Fit_id%3D1656867366&amp;title=%5B%EC%A0%95%EC%8B%9D%EC%82%AC%EC%97%85%EC%9E%90%5D%EC%8B%A0%EC%86%8D%EC%95%88%EC%A0%84+%ED%94%84%EB%A6%AC%EB%AF%B8%EC%97%84%EA%B3%BC+%EB%AE%A4%EC%A7%81+%7C+Buts&amp;sns=gplus'); return false;" target="_blank"><img src="https://buts.co.kr/skin/apms/item/Miso-Basic4/img/sns_goo.png" alt="GooglePlus"></a> <a href="https://buts.co.kr/bbs/sns_send.php?longurl=https%3A%2F%2Fbuts.co.kr%2Fshop%2Fitem.php%3Fit_id%3D1656867366&amp;title=%5B%EC%A0%95%EC%8B%9D%EC%82%AC%EC%97%85%EC%9E%90%5D%EC%8B%A0%EC%86%8D%EC%95%88%EC%A0%84+%ED%94%84%EB%A6%AC%EB%AF%B8%EC%97%84%EA%B3%BC+%EB%AE%A4%EC%A7%81+%7C+Buts&amp;sns=kakaostory" onclick="apms_sns('kakaostory','https://buts.co.kr/bbs/sns_send.php?longurl=https%3A%2F%2Fbuts.co.kr%2Fshop%2Fitem.php%3Fit_id%3D1656867366&amp;title=%5B%EC%A0%95%EC%8B%9D%EC%82%AC%EC%97%85%EC%9E%90%5D%EC%8B%A0%EC%86%8D%EC%95%88%EC%A0%84+%ED%94%84%EB%A6%AC%EB%AF%B8%EC%97%84%EA%B3%BC+%EB%AE%A4%EC%A7%81+%7C+Buts&amp;sns=kakaostory'); return false;" target="_blank"><img src="https://buts.co.kr/skin/apms/item/Miso-Basic4/img/sns_kakaostory.png" alt="KakaoStory"></a> <a onclick="kakaolink_send('[정식사업자]신속안전 프리미엄과 뮤직 | Buts','https://buts.co.kr/shop/item.php?it_id=1656867366',''); return false;" class="cursor"><img src="https://buts.co.kr/skin/apms/item/Miso-Basic4/img/sns_kakao.png" alt="KakaoTalk"></a> <a href="https://buts.co.kr/bbs/sns_send.php?longurl=https%3A%2F%2Fbuts.co.kr%2Fshop%2Fitem.php%3Fit_id%3D1656867366&amp;title=%5B%EC%A0%95%EC%8B%9D%EC%82%AC%EC%97%85%EC%9E%90%5D%EC%8B%A0%EC%86%8D%EC%95%88%EC%A0%84+%ED%94%84%EB%A6%AC%EB%AF%B8%EC%97%84%EA%B3%BC+%EB%AE%A4%EC%A7%81+%7C+Buts&amp;sns=naverband" onclick="apms_sns('naverband','https://buts.co.kr/bbs/sns_send.php?longurl=https%3A%2F%2Fbuts.co.kr%2Fshop%2Fitem.php%3Fit_id%3D1656867366&amp;title=%5B%EC%A0%95%EC%8B%9D%EC%82%AC%EC%97%85%EC%9E%90%5D%EC%8B%A0%EC%86%8D%EC%95%88%EC%A0%84+%ED%94%84%EB%A6%AC%EB%AF%B8%EC%97%84%EA%B3%BC+%EB%AE%A4%EC%A7%81+%7C+Buts&amp;sns=naverband'); return false;" target="_blank"><img src="https://buts.co.kr/skin/apms/item/Miso-Basic4/img/sns_naverband.png" alt="NaverBand"></a> </div>

<div class="button-align left border">
			<a href="./item.php?it_id=1593077843&amp;ca_id=10" class="button small border button-purple">다음</a>
		<div class="float-right">
				<a href="https://buts.co.kr/shop/partner/?ap=item&amp;fn=2" class="button small button-red">등록</a>
							</div>
</div>



<div class="comment-wrap mg-top">
			<aside id="it_vc_w">
		<div class="comment-title">벗츠 댓글톡</div>
			<form id="fviewcomment" name="fviewcomment" class="form" role="form" action="https://buts.co.kr/shop/itemcommentupdate.php" onsubmit="return fviewcomment_submit(this);" method="post" autocomplete="off">
				<input type="hidden" name="w" value="c" id="w">
				<input type="hidden" name="it_id" value="1656867366">
				<input type="hidden" name="ca_id" value="10">
				<input type="hidden" name="comment_id" value="" id="comment_id">
				<input type="hidden" name="comment_url" value="" id="comment_url">
				<input type="hidden" name="crows" value="20">
				<input type="hidden" name="page" value="" id="comment_page">
				<div class="comment-wirte">
					<div class="select">
						<select name="wr_1" id="wr_1"  onchange="tochange(this.form)">
														<option value="momok22">파티장에게</option>	
								
							<option value="">일반</option>	
						</select>
						<div class="input-check secret">
							<input type="checkbox" name="wr_secret" value="secret" id="wr_secret" />
							<label for="wr_secret">비밀글</label>
						</div>
					</div>
					<textarea id="wr_content" name="wr_content" maxlength="10000" required   placeholder="파티장에게 궁금한 점이 있으면 물어보세요!&#13;&#10;※ 알림톡은 5분 동안 1회로 사용이 제한됩니다."></textarea>					
															<a href="javascript:apms_comment('itemcomment');" class="button-apply" id="btn_submit" >등록</a>	
										<script>
					function apms_comment_onKeyDown() {
							if(event.keyCode == 13) {
							apms_comment('itemcomment');
							}
						}
					</script>			
				</div>
			</form>
		</aside>
		<div class="comment-list" id="itemcomment">
		<ul id="it_vc"  >
						<li class="left" id="c_139350">
				<div class="picture">
					<img src="https://buts.co.kr/thema/Buts/colorset/Basic/img/icon-butsicon-middle.png" alt="" />
				</div>
				<div class="balloon">
					<div class="to"  style="color:#ffffff;">놐크로님 에게</div>					
					<div class="speech">
													<img src="https://buts.co.kr/skin/apms/item/Miso-Basic4/img/icon_secret.gif" alt="">
												비밀댓글 입니다.					</div>
				</div>
				<div class="option">
					<span class="v-bar">힘티비</span>
					<span class="v-bar">5일전</span>
									</div>
			</li>
            			<li id="c_139245">
				<div class="picture">
					<img src="https://buts.co.kr/thema/Buts/colorset/Basic/img/icon-butsicon-middle.png" alt="" />
				</div>
				<div class="balloon">
					<div class="to">힘티비님 에게</div>						
					<div class="speech">
													<img src="https://buts.co.kr/skin/apms/item/Miso-Basic4/img/icon_secret.gif" alt="">
												비밀댓글 입니다.					</div>
				</div>
				<div class="option">
					<span class="v-bar">놐크로</span>
					<span class="v-bar">5일전</span>
									</div>
			</li>
						<li class="left" id="c_131787">
				<div class="picture">
					<img src="https://buts.co.kr/thema/Buts/colorset/Basic/img/icon-butsicon-middle.png" alt="" />
				</div>
				<div class="balloon">
					<div class="to"  style="color:#ffffff;">skygowoo님 에게</div>					
					<div class="speech">
													<img src="https://buts.co.kr/skin/apms/item/Miso-Basic4/img/icon_secret.gif" alt="">
												비밀댓글 입니다.					</div>
				</div>
				<div class="option">
					<span class="v-bar">힘티비</span>
					<span class="v-bar">2022.07.29 19:27</span>
									</div>
			</li>
            			<li class="left" id="c_125157">
				<div class="picture">
					<img src="https://buts.co.kr/thema/Buts/colorset/Basic/img/icon-butsicon-middle.png" alt="" />
				</div>
				<div class="balloon">
					<div class="to"  style="color:#ffffff;">싱가포리님 에게</div>					
					<div class="speech">
													<img src="https://buts.co.kr/skin/apms/item/Miso-Basic4/img/icon_secret.gif" alt="">
												비밀댓글 입니다.					</div>
				</div>
				<div class="option">
					<span class="v-bar">힘티비</span>
					<span class="v-bar">2022.07.17 01:07</span>
									</div>
			</li>
            			<li id="c_125066">
				<div class="picture">
					<img src="https://buts.co.kr/thema/Buts/colorset/Basic/img/icon-butsicon-middle.png" alt="" />
				</div>
				<div class="balloon">
					<div class="to">힘티비님 에게</div>						
					<div class="speech">
													<img src="https://buts.co.kr/skin/apms/item/Miso-Basic4/img/icon_secret.gif" alt="">
												비밀댓글 입니다.					</div>
				</div>
				<div class="option">
					<span class="v-bar">싱가포리</span>
					<span class="v-bar">2022.07.16 21:43</span>
									</div>
			</li>
						<li class="left" id="c_125062">
				<div class="picture">
					<img src="https://buts.co.kr/thema/Buts/colorset/Basic/img/icon-butsicon-middle.png" alt="" />
				</div>
				<div class="balloon">
					<div class="to"  style="color:#ffffff;">싱가포리님 에게</div>					
					<div class="speech">
													<img src="https://buts.co.kr/skin/apms/item/Miso-Basic4/img/icon_secret.gif" alt="">
												비밀댓글 입니다.					</div>
				</div>
				<div class="option">
					<span class="v-bar">힘티비</span>
					<span class="v-bar">2022.07.16 21:40</span>
									</div>
			</li>
            			<li id="c_125060">
				<div class="picture">
					<img src="https://buts.co.kr/thema/Buts/colorset/Basic/img/icon-butsicon-middle.png" alt="" />
				</div>
				<div class="balloon">
					<div class="to">힘티비님 에게</div>						
					<div class="speech">
													<img src="https://buts.co.kr/skin/apms/item/Miso-Basic4/img/icon_secret.gif" alt="">
												비밀댓글 입니다.					</div>
				</div>
				<div class="option">
					<span class="v-bar">싱가포리</span>
					<span class="v-bar">2022.07.16 21:39</span>
									</div>
			</li>
						<li class="left" id="c_125056">
				<div class="picture">
					<img src="https://buts.co.kr/thema/Buts/colorset/Basic/img/icon-butsicon-middle.png" alt="" />
				</div>
				<div class="balloon">
					<div class="to"  style="color:#ffffff;">싱가포리님 에게</div>					
					<div class="speech">
													<img src="https://buts.co.kr/skin/apms/item/Miso-Basic4/img/icon_secret.gif" alt="">
												비밀댓글 입니다.					</div>
				</div>
				<div class="option">
					<span class="v-bar">힘티비</span>
					<span class="v-bar">2022.07.16 21:33</span>
									</div>
			</li>
            			<li id="c_118539">
				<div class="picture">
					<img src="https://buts.co.kr/thema/Buts/colorset/Basic/img/icon-butsicon-middle.png" alt="" />
				</div>
				<div class="balloon">
					<div class="to">힘티비님 에게</div>						
					<div class="speech">
													<img src="https://buts.co.kr/skin/apms/item/Miso-Basic4/img/icon_secret.gif" alt="">
												비밀댓글 입니다.					</div>
				</div>
				<div class="option">
					<span class="v-bar">바나나귤</span>
					<span class="v-bar">2022.07.04 07:50</span>
									</div>
			</li>
						<li class="left" id="c_118536">
				<div class="picture">
					<img src="https://buts.co.kr/thema/Buts/colorset/Basic/img/icon-butsicon-middle.png" alt="" />
				</div>
				<div class="balloon">
					<div class="to"  style="color:#ffffff;">바나나귤님 에게</div>					
					<div class="speech">
													<img src="https://buts.co.kr/skin/apms/item/Miso-Basic4/img/icon_secret.gif" alt="">
												비밀댓글 입니다.					</div>
				</div>
				<div class="option">
					<span class="v-bar">힘티비</span>
					<span class="v-bar">2022.07.04 07:35</span>
									</div>
			</li>
            		</ul>
			</div>
</div>
<script>

function tochange(f)
{
    var idx = f.wr_1.value;

	if(idx == ""){
		$('#opentalk').hide();
		$('.secret').hide();
		f.wr_2.checked = false;
	}else{
		$('#opentalk').show();
		$('.secret').show();
		f.wr_2.checked = true;	
	}
}
</script>
<script>
$(function() {

	$('.item-tab a[data-toggle="tab"]').on('shown.bs.tab', function (e) {
		var ref = $(e.target).attr("ref") // activated tab
		var tid = $(e.target).attr("tid") // activated tab
		$('.item-tab .nav-tabs li').removeClass('active');
		$('.tab-'+ref).addClass('active');
		if(tid == "1") {
			location.href = "#tspot";
		}
	});

	$("a.view_image").click(function() {
		window.open(this.href, "large_image", "location=yes,links=no,toolbar=no,top=10,left=10,width=10,height=10,resizable=yes,scrollbars=no,status=no");
		return false;
	});
});
$("document").ready(function() {
    $("#chk_submit").submit(function() {
		if(document.getElementById("chk_confirm").checked == false){
			alert('안내 및 규칙을 읽고\n\n체크박스에 체크해 주세요.');
		}
		else{
			document.pressed=this.value;
		}
    });
});

	function fn_chk_confirm()
	{
		if(document.getElementById("chk_confirm").checked == false){
			alert('안내 및 규칙을 읽고\n\n체크박스에 체크해 주세요.');
			document.getElementById("chk_confirm").focus();
        	return false;
		}
		else{
			document.pressed=this.value;
			//document.fitem.submit(this.value);
			//document.fitem.submit();
			document.fitem.submit();
		}
        
		return true;
	}

	function copyText(copy_val) {
		if(copy_val == 'myID'){
			var copyText  = document.getElementById('myID');
			copyText.select();
			copyText.setSelectionRange(0, 99999);
			document.execCommand("Copy");
			alert('계정 ID가 복사 되었습니다.');
		}else{
			var copyText  = document.getElementById('myPW');
			copyText.select();
			copyText.setSelectionRange(0, 99999);
			document.execCommand("Copy");
			alert('계정 PW가 복사 되었습니다.');
		}
	}


</script>	<script>
	var save_before = '';
	var save_html = document.getElementById('it_vc_w').innerHTML;

	function fviewcomment_submit(f)	{
		var pattern = /(^\s*)|(\s*$)/g; // \s 공백 문자
		var subject = "";
		var content = "";
		$.ajax({
			url: g5_bbs_url+"/ajax.filter.php",
			type: "POST",
			data: {
				"subject": "",
				"content": f.wr_content.value
			},
			dataType: "json",
			async: false,
			cache: false,
			success: function(data, textStatus) {
				subject = data.subject;
				content = data.content;
			}
		});

		if (content) {
			alert("내용에 금지단어('"+content+"')가 포함되어있습니다");
			f.wr_content.focus();
			return false;
		}

		// 양쪽 공백 없애기
		var pattern = /(^\s*)|(\s*$)/g; // \s 공백 문자
		document.getElementById('wr_content').value = document.getElementById('wr_content').value.replace(pattern, "");
		if (!document.getElementById('wr_content').value) {
			alert("댓글을 입력하여 주십시오.");
			f.wr_content.focus();
			return false;
		}

		if (typeof(f.wr_name) != 'undefined') {
			f.wr_name.value = f.wr_name.value.replace(pattern, "");
			if (f.wr_name.value == '') {
				alert('이름이 입력되지 않았습니다.');
				f.wr_name.focus();
				return false;
			}
		}

		if (typeof(f.wr_password) != 'undefined') {
			f.wr_password.value = f.wr_password.value.replace(pattern, "");
			if (f.wr_password.value == '') {
				alert('비밀번호가 입력되지 않았습니다.');
				f.wr_password.focus();
				return false;
			}
		}

		set_comment_token(f);

		document.getElementById("btn_submit").disabled = "disabled";

		return true;
	}

	function comment_box(comment_id, work) {
		var el_id;
		// 댓글 아이디가 넘어오면 답변, 수정
		if (comment_id) {
			if (work == 'c')
				el_id = 'reply_' + comment_id;
			else
				el_id = 'edit_' + comment_id;
		}
		else
			el_id = 'it_vc_w';

		if (save_before != el_id) {
			if (save_before) {
				document.getElementById(save_before).style.display = 'none';
				document.getElementById(save_before).innerHTML = '';
			}

			document.getElementById(el_id).style.display = '';
			document.getElementById(el_id).innerHTML = save_html;
			// 댓글 수정
			if (work == 'cu') {
				document.getElementById('wr_content').value = document.getElementById('save_comment_' + comment_id).value;
				if (document.getElementById('secret_comment_'+comment_id).value)
					document.getElementById('wr_secret').checked = true;
				else
					document.getElementById('wr_secret').checked = false;
			}

			document.getElementById('comment_id').value = comment_id;
			document.getElementById('w').value = work;

			// 페이지
			if (comment_id) {
				document.getElementById('comment_page').value = document.getElementById('comment_page_'+comment_id).value;
				document.getElementById('comment_url').value = document.getElementById('comment_url_'+comment_id).value;
			} else {
				document.getElementById('comment_page').value = '';
				document.getElementById('comment_url').value = './itemcomment.php?it_id=1656867366&ca_id=10&crows=20';
			}

			save_before = el_id;
		}
	}

	comment_box('', 'c'); // 댓글 입력폼이 보이도록 처리하기위해서 추가 (root님)

	$(function() {
		$("textarea#wr_content[maxlength]").live("keyup change", function() {
			var str = $(this).val()
			var mx = parseInt($(this).attr("maxlength"))
			if (str.length > mx) {
				$(this).val(str.substr(0, mx));
				return false;
			}
		});
			});
	</script>
<script data-ad-client="ca-pub-8150600701657072" async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-163597728-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-163597728-1');
</script>

<!-- Global site tag (gtag.js) - Google Ads: 914988072 --> <script async src="https://www.googletagmanager.com/gtag/js?id=AW-914988072"></script> <script> window.dataLayer = window.dataLayer || []; function gtag(){dataLayer.push(arguments);} gtag('js', new Date()); gtag('config', 'AW-914988072'); </script><script src="https://buts.co.kr/js/sns.js"></script>

		</div><!-- .width-container -->
	</div><!-- .body -->
<!--
	<div class="side">
		<a href="https://buts.co.kr/bbs/guide_buts.php">
			<img src="https://buts.co.kr/thema/Buts/colorset/Basic/img/btn-quick-guid.png" srcset="https://buts.co.kr/thema/Buts/colorset/Basic/img/2x/btn-quick-guid.png 2x" alt="" />
			<span class="side-text">처음 오신분!</span>
		</a>		
		<a onclick="chatChannel();" href="javascript:;">
			<img src="https://buts.co.kr/thema/Buts/colorset/Basic/img/btn-quick-talk.png" srcset="https://buts.co.kr/thema/Buts/colorset/Basic/img/2x/btn-quick-talk.png 2x" alt="" />
			<span class="side-text">질문 주세요!</span>
		</a>
		<script type="text/javascript">
		// input your appkey
		Kakao.init('c089c8172def97eb00c07217cae17495')
		function chatChannel() {
			Kakao.Channel.chat({
			channelPublicId: '_xnSxgxdxb',
			})
		}
		</script>
	</div>
-->
	
