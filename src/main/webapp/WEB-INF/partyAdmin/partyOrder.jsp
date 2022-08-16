<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<link rel="favicon" href="/favicon.ico">
<!--<link rel="favicon" href="https://buts.co.kr/img/buts/favicon.ico">-->
<meta http-equiv="imagetoolbar" content="no">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta name="title" content="주문서 작성 > Buts" />
<meta name="publisher" content="Buts" />
<meta name="author" content="Buts" />
<meta name="robots" content="index,follow" />
<meta name="keywords" content="Buts" />
<meta name="description" content="주문서 작성 > Buts" />
<meta name="twitter:card" content="summary_large_image" />
<meta property="og:title" content="주문서 작성 > Buts" />
<meta property="og:site_name" content="Buts" />
<meta property="og:author" content="Buts" />
<meta property="og:type" content="" />
<meta property="og:image" content="https://buts.co.kr/thema/Buts/colorset/Basic/img/og_image.jpg" />
<meta property="og:description" content="주문서 작성 > Buts" />
<meta property="og:url" content="https://buts.co.kr/shop/orderform.php?sw_direct=1" />
<link rel="canonical" href="https://buts.co.kr/shop/orderform.php?sw_direct=1" />
<title>주문서 작성 > Buts</title>
<link rel="stylesheet" href="https://buts.co.kr/css/default_shop.css?ver=180820">
<link rel="stylesheet" href="https://buts.co.kr/css/apms.css?ver=180820">

<link rel="stylesheet" href="https://buts.co.kr/thema/Buts/assets/bs3/css/bootstrap.min.css" type="text/css" class="thema-mode">
<link rel="stylesheet" href="https://buts.co.kr/thema/Buts/assets/css/magnific-popup.css" type="text/css">
<link rel="stylesheet" href="//buts.co.kr/thema/Buts/colorset/Basic/buts.css?time=1660626747" type="text/css" >
<link rel="stylesheet" href="https://buts.co.kr/skin/apms/order/basic/style.css" type="text/css" >
<link rel="stylesheet" href="https://buts.co.kr/thema/Buts/widget/basic-sidebar/widget.css?ver=180820">
<link rel="stylesheet" href="https://buts.co.kr/css/level/basic.css?ver=180820">
<!--[if lte IE 8]>
<script src="https://buts.co.kr/js/html5.js"></script>
<![endif]-->
<script>
// 자바스크립트에서 사용하는 전역변수 선언
var g5_url       = "https://buts.co.kr";
var g5_bbs_url   = "https://buts.co.kr/bbs";
var g5_is_member = "1";
var g5_is_admin  = "";
var g5_is_mobile = "";
var g5_bo_table  = "";
var g5_sca       = "";
var g5_pim       = "";
var g5_editor    = "";
var g5_responsive    = "1";
var g5_cookie_domain = "";
var g5_purl = "https://buts.co.kr/shop/orderform.php?sw_direct=1";
</script>
<script src="https://buts.co.kr/js/jquery-1.11.3.min.js"></script>
<script src="https://buts.co.kr/js/jquery-migrate-1.2.1.min.js"></script>
<script src="https://buts.co.kr/lang/korean/lang.js?ver=180820"></script>
<script src="https://buts.co.kr/js/common.js?ver=180820"></script>
<script src="https://buts.co.kr/js/wrest.js?ver=180820"></script>
<script src="https://buts.co.kr/js/placeholders.min.js"></script>
<script src="https://buts.co.kr/js/apms.js?ver=180820"></script>
<link rel="stylesheet" href="https://buts.co.kr/js/font-awesome/css/font-awesome.min.css">
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="https://buts.co.kr/js/shop.order.js"></script>
<script src="https://buts.co.kr/plugin/apms/js/jquery.mobile.swipe.min.js"></script>
</head>
<body class="responsive is-pc">
	<h1 style="display:inline-block !important;position:absolute;top:0;left:0;margin:0 !important;padding:0 !important;font-size:0;line-height:0;border:0 !important;overflow:hidden !important">
	주문서 작성 > Buts	</h1>
<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
<script src="https://buts.co.kr/js/kakaolink.js"></script>
<script>Kakao.init("2cb912e1f64b0e57fd1bbcc9af1e964c");</script>
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

<div class="wrap wrapper  ko">

		<!-- topper -->
		<div class="topper">
			<div class="width-container">
			<div class="topper-menu">
				<a href="https://butt.kr" class="v-bar">커뮤니티</a>
				<a href="https://buts.co.kr/bbs/board.php?bo_table=event" class="v-bar">이벤트</a>
				<a href="https://buts.co.kr/bbs/board.php?bo_table=notice">공지사항</a>
			</div>
			</div>
		</div>

		<!-- header -->
		<%@include file="../common/header.jsp" %>

		<div class="body">
			<div class="width-container">
        	
		
<script type="text/javascript" src="https://pg.innopay.co.kr/ipay/js/innopay-2.0.js" charset="utf-8"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/crypto-js/3.1.2/rollups/aes.js"></script>
<style type="text/css">
.dimm{position:absolute;left:0;top:0;z-index:99999999;background-color:#000;display:none;opacity: 0.3;}
.dimm .loading {position:absolute;top:50%; left:50%;margin-left:-50px;margin-top:-21px;}
</style>


</script>
<form name="forderform" id="forderform" method="post" action="https://buts.co.kr/shop/orderformupdate.php" autocomplete="off" role="form" class="form-horizontal">

<div class="title-wrap border mg-top-minus">
	<div class="title">진행/결제</div>
</div>

<div class="h3">진행 정보</div>

<div class="payment-name item-name mobile-block">
	<span class="brand"></span>
	<span class="name">신용1등급 / 3개월 / 일130원</span>
	<span class="comment">WAVVE 프리미엄</span>
</div>

<div class="table-list table-list-payment">
	<table>
		<thead>
		<tr>
			<th class="pc-block">서비스명</th>
			<th>참여일</th>
			<th>판매가</th>
			<th>수수료</th>
			<th>합계</th>
		</tr>
		</thead>
		<tbody>
				<tr>
			<td class="pc-block">
				<input type="hidden" name="it_id[0]"    value="1660578833">
				<input type="hidden" name="it_name[0]"  value="신용1등급 / 3개월 / 일130원">
				<input type="hidden" name="it_price[0]" value="11960">
				<input type="hidden" name="cp_id[0]" value="">
				<input type="hidden" name="cp_price[0]" value="0">
																<div class="item-name">
					<span class="brand"><img src="https://buts.co.kr/thema/Buts/colorset/category/1040.jpg" alt="" /></span>
					
					<c:if test="${1010 eq party.party_subservice}">	
						<span class="name">넷플릭스 프리미엄</span>
					</c:if>
					<c:if test="${1020 eq party.party_subservice}">	
						<span class="name">디즈니 프리미엄</span>
					</c:if>
					<c:if test="${1030 eq party.party_subservice}">	
						<span class="name">왓챠 프리미엄</span>
					</c:if>
					<c:if test="${1040 eq party.party_subservice}">	
						<span class="name">유튜브 프리미엄</span>
					</c:if>
					<c:if test="${1050 eq party.party_subservice}">	
						<span class="name">티빙 프리미엄</span>
					</c:if>
					
					<span class="comment">3개월 / 일130원</span>
				</div>
			</td>
			<td><strong>92</strong>일</td>
			<td><strong>11,960</strong>원</td>
			<td><strong>1,196</strong>원</td>
			<td><span class="Rajdhani">13,156</span>원</td>
		</tr>
						</tbody>
	</table>
</div>




<!-- <div class="table-responsive order-item">
	<table id="sod_list" class="div-table table bg-white bsk-tbl">
	<tbody>
	<tr class="tr-head border-color" style="background-color: #0a89ff; border-color:#0a89ff; ">
		<th scope="col"><span style="color:#fff;">서비스명</span></th>
		<th scope="col"><span style="color:#fff;">사용일</span></th>
		<th scope="col"><span style="color:#fff;">판매가</span></th>
		<th scope="col"><span style="color:#fff;">수수료 10%</span></th>
		<th scope="col"><span class="last" style="color:#fff;">소계</span></th>
	</tr>
			<tr class="tr-line" style="background-color: #2f2f2f;">
			<td>
				<input type="hidden" name="it_id[0]"    value="1660578833">
				<input type="hidden" name="it_name[0]"  value="신용1등급 / 3개월 / 일130원">
				<input type="hidden" name="it_price[0]" value="11960">
				<input type="hidden" name="cp_id[0]" value="">
				<input type="hidden" name="cp_price[0]" value="0">
								<b>신용1등급 / 3개월 / 일130원</b>
									<div class="well well-sm"><ul style="line-height:20px;">
<li>신용1등급 / 3개월 / 일130원 1개 (+0원)</li>
</ul></div>
							</td>
			<td class="text-center" style="color:#fff;">92</td>
			<td class="text-center" style="color:#fff;">11,960</td>
			<td class="text-center" style="color:#fff;">1,196</td>
			<td class="text-center" style="color:#fff;"><b>13,156</b></td>
		</tr>
			</tbody>
	</table>
</div> -->
	<input type="hidden" name="od_price"    value="11960">
	<input type="hidden" name="org_od_price"    value="11960">
	<input type="hidden" name="od_send_cost" value="0">
	<input type="hidden" name="od_send_cost2" value="0">
	<input type="hidden" name="item_coupon" value="0">
	<input type="hidden" name="od_coupon" value="0">
	<input type="hidden" name="od_send_coupon" value="0">


<input type="hidden" name="good_mny" value="13156"> <!-- 영카트 로직을 위한 값 -->

<input type="hidden" id="PayMethod" name="PayMethod" value="">  <!-- 결제수단 // -->
<input type="hidden" id="MID" name="MID" value="pgbuts001m">  <!-- 가맹점 아이디 // -->
<input type="hidden" id="MerchantKey" name="MerchantKey" value="IElSrkcNVP9j2Ox4/bX3BKWRRNtTILvIYeM88TB8jTYY8kqmcnvOWwfVlFFfyVa7gijbxtN1EaSnXOmP4suRdA==">
<input type="hidden" id="GoodsName" name="GoodsName" value="신용1등급3개월일130원">  <!-- 상품명 // -->
<input type="hidden" id="Amt" name="Amt" value="13156">  <!-- 상품금액 // -->
<input type="hidden" id="BuyerName" name="BuyerName" value="">  <!-- 구매자명 // -->
<input type="hidden" id="BuyerTel" name="BuyerTel" value="">  <!-- 구매자 연락처 // -->
<input type="hidden" id="BuyerEmail" name="BuyerEmail" value="">  <!-- 구매자 이메일 주소 // -->
<input type="hidden" id="ResultYN"  name="ResultYN"  value="N">  <!-- 결제결과창 유무 // -->
<input type="hidden" id="ReturnURL" name="ReturnURL" value="">  <!-- 결제결과전송 URL -->
<input type="hidden" id="Moid" name="Moid" value="2022081614122765">  <!-- 가맹점 주문번호 // -->
<input type="hidden" id="GoodsCnt" name="GoodsCnt" value="1">  <!-- 상품개수 // -->
<input type="hidden" id="MallReserved" name="MallReserved" value="tmp_cart_id%3D2022081614073500">
<input type="hidden" id="OfferingPeriod" name="OfferingPeriod" value="">  <!-- 제공기간 // -->

<input type="hidden" id="DutyFreeAmt" name="DutyFreeAmt" value=""> <!-- 면세금액 // -->
<input type="hidden" id="MallIP" name="MallIP" value="172.31.2.20"/> <!-- 가맹점서버 IP 가맹점에서 설정-->
<input type="hidden" id="UserIP" name="UserIP" value="172.31.40.144"> <!-- 구매자 IP 가맹점에서 설정-->
<input type="hidden" id="mallUserID" name="mallUserID" value="">  <!-- 가맹점 고객ID // -->
<input type="hidden" id="User_ID" name="User_ID" value="">  <!-- Innopay에 등록된 영업사원ID // -->
<input type="hidden" id="Currency" name="Currency" value="">  <!-- 통화코드가 원화가 아닌 경우만 사용(KRW/USD) // -->
<input type="hidden" id="VbankExpDate" name="VbankExpDate" value="20220819"> <!-- 입금예정일(가상계좌) // -->

<!--------------------------->
<!-- ::: hidden 데이타 필수 -->
<!--------------------------->
<input type="hidden" name="INO_res_cd" id="INO_res_cd">
<input type="hidden" name="INO_Amt" id="INO_Amt">
<input type="hidden" name="INO_tid" id="INO_tid">
<input type="hidden" name="INO_AuthCode" id="INO_AuthCode">
<input type="hidden" name="INO_AuthDate" id="INO_AuthDate">
<input type="hidden" name="INO_fn_cd" id="INO_fn_cd">
<input type="hidden" name="INO_fn_name" id="INO_fn_name">
<input type="hidden" name="INO_VbankExpDate" id="INO_VbankExpDate">
<input type="hidden" name="INO_VbankName" id="INO_VbankName">
<input type="hidden" name="INO_VbankNum" id="INO_VbankNum">
<input type="hidden" name="INO_VBankAccountName" id="INO_VBankAccountName">
<input type="hidden" name="INO_BankName" id="INO_BankName">
<input type="hidden" name="INO_BankCd" id="INO_BankCd">
<input type="hidden" name="INO_EncryptData" id="INO_EncryptData">

	<div class="form-half left">
		<div class="h3">결제자 정보</div>
		<div class="form-list border">
			<ul>
				<li>
					<div class="subject">ㆍ 아이디</div>
					<div class="right">lhg1042</div>
				</li>
				<li>
					<div class="subject">ㆍ 이름</div>
					<div class="right fill">
						<input type="text" name="od_name" value="이혜규" id="od_name" required maxlength="20" style="text-align:right;">
					</div>
				</li>
				<!-- <li>
					<div class="subject">ㆍ 연락처</div>
					<div class="right">010-9256-1042</div>
					<div class="lightgrey contact">벗츠 결제정보 및 이용정보 안내에 필요한 내용이며, 참여하신 파티장 및 파티원들에게 연락처 정보를 무단 제공 및 노출 시키지 않습니다.</div>
				</li> 
									<input type="hidden" name="od_email" value="">
				-->
				<input type="hidden" name="od_hp" value="010-9256-1042">
				<input type="hidden" name="od_b_name" value="이혜규">
				<input type="hidden" name="od_b_tel" value="">
				<input type="hidden" name="od_b_hp" value="010-9256-1042">
				<input type="hidden" name="od_b_zip" value="">
				<input type="hidden" name="od_b_addr1" value="">
				<input type="hidden" name="od_b_addr2" value="">
				<input type="hidden" name="od_b_addr3" value="">
				<input type="hidden" name="od_b_addr_jibeon" value="">
				
									<input type="hidden" name="od_email" value="">
								
				<!-- <li>
                  <div class="subject">ㆍ 이메일(아이디)</div>
                  <div class="right fill">
                    <input type="text" class="email" placeholder="참여가능(등록가능) 한 이메일이나 아이디를 입력해 주세요" />
                  </div>
                </li>
				<li>
					<div class="subject w100">ㆍ 참여하는 파티장, 파티원에게 한 마디!</div>
					<input type="text" class="comment" placeholder="예) 사용기간까지 좋은 굿 파티로 진행해 봐요~" />
				</li> -->
			</ul>
		</div>
	</div>
		
	<!-- <section id="sod_frm_orderer" style="margin-bottom:0px;">
		<div class="panel-default">
			<div class="panel-heading" style="background-color: #0a89ff; border-color:#0a89ff; color:#fff;"><strong><i class="fa fa-user fa-lg"></i> 결제하시는 분</strong></div>
			<div class="panel-body" style="background-color: #2f2f2f;">
				<div class="form-group">
					<label class="col-sm-2 control-label" style="color:#fff; text-align: left;"><b>아이디</b></label>
					<label class="col-sm-3 control-label" style="text-align:left; color:#fff;">
						<b>lhg1042</b>
					</label>
				</div>
				<div class="form-group has-feedback">
					<label class="col-sm-2 control-label" for="od_name" style="color:#fff; text-align: left;"><b>이름</b><strong class="sound_only">필수</strong></label>
					<div class="col-sm-3">
						<input type="text" name="od_name" value="이혜규" id="od_name" required class="form-control input-sm" maxlength="20">
						<span class="fa fa-check form-control-feedback"></span>
					</div>
				</div>
									<input type="hidden" name="od_email" value="">
								<input type="hidden" name="od_hp" value="010-9256-1042">
				<input type="hidden" name="od_b_name" value="이혜규">
				<input type="hidden" name="od_b_tel" value="">
				<input type="hidden" name="od_b_hp" value="010-9256-1042">
				<input type="hidden" name="od_b_zip" value="">
				<input type="hidden" name="od_b_addr1" value="">
				<input type="hidden" name="od_b_addr2" value="">
				<input type="hidden" name="od_b_addr3" value="">
				<input type="hidden" name="od_b_addr_jibeon" value="">

			</div>
		</div>
	</section> -->



<div class="form-half">
	<div class="h3">결제 정보</div>
	<div class="form-list border">
		<ul>
		<li>
			<div class="subject">ㆍ 서비스 금액</div>
			<div class="right">11,960원</div>
		</li>
		<li>
			<div class="subject">ㆍ 수수료(10%)</div>
			<div class="right">1,196원</div>
		</li>
		<li>
			<div class="subject">ㆍ 합계</div>
			<div class="right">13,156원</div>
		</li>
		<li>
			<div class="subject">ㆍ 사용 포인트</div>
			<div class="right fill">
				보유 포인트
				<span class="text-purple">1,088P</span>
				<input type="hidden" name="max_temp_point" value="1088">
				<input type="text" name="od_temp_point" id="od_temp_point" onBlur="onlyNumber(this);" class="point" value="0" >
				<input type="button" id="point_s" value="전액사용" onclick="change_view('1');" class="all button mini button-purple">
				<input type="button" id="point_c" value="취소" onclick="change_view('2');" style="display:none;" class="all button mini button-purple">
				<input type="radio" id="od_settle_point" name="od_settle_case" value="포인트" style="display:none;" >
			</div>
		</li>
		<li>
			<div class="subject">ㆍ 쿠폰 적용</div>
			<div class="right fill">
			<select name="" id="">
				<option value="">사용 가능한 쿠폰을 선택 해 주세요</option>
			</select>
			</div>
				</li>
		<li id="settle_bank" >
			<div class="subject">ㆍ 결제방법</div>
			<div class="right">
				<span class="input-check input-radio">
					<input type="radio" id="od_settle_bank" name="od_settle_case" value="무통장"  />
					<label for="od_settle_bank" onclick="$('.account').show();setTimeout(function(){$('#od_deposit_name').val('이혜규')}, 10);">계좌이체</label>
				</span>
									<span class="input-check input-radio">
					<input type="radio" id="od_settle_card" name="od_settle_case" value="신용카드" />
					<label for="od_settle_card" onclick="$('.account').hide();change_view('3');">신용카드</label>
				</span>
			</div>
			<div class="account text-right" style="display: none">
				<select name="od_bank_account" id="od_bank_account">
					<option value="하나은행 165-910009-55405 김시진" selected="selected">하나은행 165-910009-55405 김시진</option>
				</select>
				<input type="text" name="od_deposit_name" id="od_deposit_name" placeholder="입금자명" size="10" maxlength="20" value="이혜규" />	
					</br>*계좌이체 시 입금자 명과 동일해야 합니다.
			</div>
		</li>
		<li class="total">
			<div class="subject text-purple">총 결제금액</div>
			<div class="right">
			<span id="od_last_price" class="Rajdhani text-purple">13,156</span><span class="won">원</span>
			</div>
		</li>
		</ul>
	</div>
</div>

<div class="caution">
	<strong>유의사항</strong>
	<ul>
		<li>‘벗츠’는 사용자간의 컨텐츠 비용을 나눔을 할 수 있도록 지원해 드리고 있으며, 참여하신 서비스의 주체가 아닙니다.</li>
		<li>개별 공급자가 등록한 나눔 내용 및 거래에 대한 책임은 공급자가 부담하며, 이에 따라서 공급자가 진행하는 서비스에 대해서 ‘벗츠’는 어떠한 책임과 의무를 지지 않습니다.</li>
		<li>파티장 연락두절 및 이용불가능한 상태 방치 등에 의한 환불인 경우 벗츠에서 남은 기간에 대한 환불을 보장하며, 포인트로 환불 진행됩니다. (단 참여 후 3일이 경과되지 않았을 경우 지불했던 수단으로 100% 환불)</li>
	</ul>
	<p>※ 서비스 참여 중에 판매자의 실수를 비롯 하여 네트워크, 서비스 제공업체, 다른 파티원 등의 문제로 의도치 않는 문제가 발생 할 수 있습니다. 문제 발생 시 상호간 매너있는 대화 부탁드리며, 부적절한 언어 선택 시 이용제한 등의 조치가 진행 될 수 있습니다.</p>
</div>

<script>
	function change_view(check_val)
	{
		var tot_price = '13156';
		var mb_point = '1088';
		if(check_val == '1')
		{
							
				document.getElementById("od_temp_point").value = mb_point;
				var od_last_price = parseInt(tot_price) - parseInt(mb_point);
				document.getElementById("od_last_price").innerHTML = number_format(od_last_price);	
						document.getElementById("point_s").style.display = "none";	
			document.getElementById("point_c").style.display = "";	
			document.getElementById("od_temp_point").focus();

			document.getElementById("od_settle_point").checked = true;		
			document.getElementById("od_temp_point").readOnly = true;			
			// document.getElementById("oder_type").style.display = "none";
			document.getElementById("show_req_btn").style.display = "none";
			document.getElementById("show_pay_btn").style.display = "";
		}
		else if(check_val == '2'){
			document.getElementById("point_s").style.display = "";	
			document.getElementById("point_c").style.display = "none";	
			document.getElementById("od_last_price").innerHTML = number_format(tot_price);

			document.getElementById("od_temp_point").value = "0";
			document.getElementById("od_settle_point").checked = false;	
			document.getElementById("od_temp_point").readOnly = false;	
			document.getElementById("settle_bank").style.display = "";	
			document.getElementById("show_req_btn").style.display = "";
			document.getElementById("show_pay_btn").style.display = "none";	
		}else{
			document.getElementById("show_req_btn").style.display = "";
			document.getElementById("show_pay_btn").style.display = "none";	
		}
	}

	function onlyNumber(obj)
	{
		var str_val = obj.value;
		var tot_price = '13156';

		if(str_val.replace(/[0-9]/g, "").length > 0) {
			alert("수량은 숫자로 입력해 주십시오.");
			document.getElementById("od_temp_point").value = '0';
			return false;		
		}
		else if (parseInt(str_val) > 1088) {
			alert("회원님의 포인트보다 많이 결제할 수 없습니다.");
			document.getElementById("point_s").style.display = "";	
			document.getElementById("point_c").style.display = "none";	
			document.getElementById("od_temp_point").value = '0';
			document.getElementById("od_temp_point").readOnly = false;	
			document.getElementById("od_last_price").innerHTML = '13,156';	
			document.getElementById("settle_bank").style.display = "";	
			return false;
		}
		else if (parseInt(str_val) > parseInt(tot_price)) {
			alert("서비스 금액 보다 많이 포인트결제할 수 없습니다.");
			document.getElementById("od_temp_point").value = '0';
			return false;
		}
		else{
			var od_last_price = parseInt(tot_price) - parseInt(str_val);
			document.getElementById("od_last_price").innerHTML = number_format(od_last_price);	
		}	
	}

</script>

<div id="display_pay_button" class="btn_confirm button-align center">
    <input type="submit" value="주문하기" onclick="return forderform_check(this.form);" class="btn_pay btn_submit button large button-purple" style="border:0px;">
    <a href="javascript:history.go(-1);" class="button large">취소</a>
</div>
<div id="display_pay_process" style="display:none">
    <img src="https://buts.co.kr/shop/img/loading.gif" alt="">
    <span>주문완료 중입니다. 잠시만 기다려 주십시오.</span>
</div>
</form>
<br>


<!-- Modal -->
<div class="modal fade" id="couponModal" tabindex="-1" role="dialog" aria-labelledby="couponModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-body">
		<div id="couponBox"></div>
	  </div>
    </div>
  </div>
</div>
<!-- 
 -->

<script>
var zipcode = "";

$(function() {
	// BS3
	$("#display_pay_button input").removeClass("btn_submit");
	$("#display_pay_button input").addClass("btn btn-color btn-lg");
	$("#display_pay_button a").removeClass("btn01");
	$("#display_pay_button a").removeClass("btn_cancel");
	$("#display_pay_button a").addClass("btn btn-black btn-lg");

	var $cp_btn_el;
    var $cp_row_el;

    $(".cp_btn").click(function() {
        $cp_btn_el = $(this);
        $cp_row_el = $(this).closest("tr");
        //$("#cp_frm").remove();
		$('#couponModal').modal('show');
        var it_id = $cp_btn_el.closest("tr").find("input[name^=it_id]").val();

        $.post(
            "./orderitemcoupon.php",
            { it_id: it_id,  sw_direct: "1" },
            function(data) {
                //$cp_btn_el.after(data);
				$("#couponBox").html(data);
            }
        );
    });

    $(document).on("click", ".cp_apply", function() {
		var $el = $(this).closest("tr");
        var cp_id = $el.find("input[name='f_cp_id[]']").val();
        var price = $el.find("input[name='f_cp_prc[]']").val();
        var subj = $el.find("input[name='f_cp_subj[]']").val();
        var sell_price;

        if(parseInt(price) == 0) {
            if(!confirm(subj+"쿠폰의 할인 금액은 "+price+"원입니다.\n쿠폰을 적용하시겠습니까?")) {
                return false;
            }
        }

        // 이미 사용한 쿠폰이 있는지
        var cp_dup = false;
        var cp_dup_idx;
        var $cp_dup_el;
        $("input[name^=cp_id]").each(function(index) {
            var id = $(this).val();

            if(id == cp_id) {
                cp_dup_idx = index;
                cp_dup = true;
                $cp_dup_el = $(this).closest("tr");;

                return false;
            }
        });

        if(cp_dup) {
            var it_name = $("input[name='it_name["+cp_dup_idx+"]']").val();
            if(!confirm(subj+ "쿠폰은 "+it_name+"에 사용되었습니다.\n"+it_name+"의 쿠폰을 취소한 후 적용하시겠습니까?")) {
                return false;
            } else {
                coupon_cancel($cp_dup_el);
                //$("#cp_frm").remove();
                $cp_dup_el.find(".cp_btn").text("적용").focus();
                $cp_dup_el.find(".cp_cancel").remove();
            }
        }

        var $s_el = $cp_row_el.find(".total_price");;
        sell_price = parseInt($cp_row_el.find("input[name^=it_price]").val());
        sell_price = sell_price - parseInt(price);
        if(sell_price < 0) {
            alert("쿠폰할인금액이 주문금액보다 크므로 쿠폰을 적용할 수 없습니다.");
            return false;
        }
        $s_el.text(number_format(String(sell_price)));
        $cp_row_el.find("input[name^=cp_id]").val(cp_id);
        $cp_row_el.find("input[name^=cp_price]").val(price);

        calculate_total_price();
        //$("#cp_frm").remove();
		$('#couponModal').modal('hide');
        $cp_btn_el.text("변경").focus();
        if(!$cp_row_el.find(".cp_cancel").size())
            $cp_btn_el.after("<button type=\"button\" class=\"cp_cancel btn btn-black btn-xs\">취소1</button>");
    });

    $(document).on("click", "#cp_close", function() {
		$('#couponModal').modal('hide');
		//$("#cp_frm").remove();
        $cp_btn_el.focus();
    });

    $(document).on("click", ".cp_cancel", function() {
		coupon_cancel($(this).closest("tr"));
        calculate_total_price();
        //$("#cp_frm").remove();
        $(this).closest("tr").find(".cp_btn").text("적용").focus();
        $(this).remove();
    });

    $("#od_coupon_btn").click(function() {
        //$("#od_coupon_frm").remove();
		$('#couponModal').modal('show');
        var $this = $(this);
        var price = parseInt($("input[name=org_od_price]").val()) - parseInt($("input[name=item_coupon]").val());
        if(price <= 0) {
            alert('금액이 0원이므로 쿠폰을 사용할 수 없습니다.');
            return false;
        }
        $.post(
            "./ordercoupon.php",
            { price: price },
            function(data) {
                //$this.after(data);
				$("#couponBox").html(data);
            }
        );
    });

    $(document).on("click", ".od_cp_apply", function() {
		var $el = $(this).closest("tr");
        var cp_id = $el.find("input[name='o_cp_id[]']").val();
        var price = parseInt($el.find("input[name='o_cp_prc[]']").val());
        var subj = $el.find("input[name='o_cp_subj[]']").val();
        var send_cost = $("input[name=od_send_cost]").val();
        var item_coupon = parseInt($("input[name=item_coupon]").val());
        var od_price = parseInt($("input[name=org_od_price]").val()) - item_coupon;

        if(price == 0) {
            if(!confirm(subj+"쿠폰의 할인 금액은 "+price+"원입니다.\n쿠폰을 적용하시겠습니까?")) {
                return false;
            }
        }

        if(od_price - price <= 0) {
            alert("쿠폰할인금액이 주문금액보다 크므로 쿠폰을 적용할 수 없습니다.");
            return false;
        }

        $("input[name=sc_cp_id]").val("");
        $("#sc_coupon_btn").text("쿠폰적용");
        $("#sc_coupon_cancel").remove();

        $("input[name=od_price]").val(od_price - price);
        $("input[name=od_cp_id]").val(cp_id);
        $("input[name=od_coupon]").val(price);
        $("input[name=od_send_coupon]").val(0);
        $("#od_cp_price").text(number_format(String(price)));
        $("#sc_cp_price").text(0);
        calculate_order_price();
        //$("#od_coupon_frm").remove();
		$('#couponModal').modal('hide');
        $("#od_coupon_btn").text("쿠폰변경").focus();
        if(!$("#od_coupon_cancel").size())
            $("#od_coupon_btn").after("<button type=\"button\" id=\"od_coupon_cancel\" class=\"btn btn-black btn-sm\">쿠폰취소</button>");
    });

    $(document).on("click", "#od_coupon_close", function() {
		//$("#od_coupon_frm").remove();
		$('#couponModal').modal('hide');
        $("#od_coupon_btn").focus();
    });

    $(document).on("click", "#od_coupon_cancel", function() {
		var org_price = $("input[name=org_od_price]").val();
        var item_coupon = parseInt($("input[name=item_coupon]").val());
        $("input[name=od_price]").val(org_price - item_coupon);
        $("input[name=sc_cp_id]").val("");
        $("input[name=od_coupon]").val(0);
        $("input[name=od_send_coupon]").val(0);
        $("#od_cp_price").text(0);
        $("#sc_cp_price").text(0);
        calculate_order_price();
        //$("#od_coupon_frm").remove();
        $("#od_coupon_btn").text("쿠폰적용").focus();
        $(this).remove();
        $("#sc_coupon_btn").text("쿠폰적용");
        $("#sc_coupon_cancel").remove();
    });

    $("#sc_coupon_btn").click(function() {
        //$("#sc_coupon_frm").remove();
		$('#couponModal').modal('show');
        var $this = $(this);
        var price = parseInt($("input[name=od_price]").val());
        var send_cost = parseInt($("input[name=od_send_cost]").val());
        $.post(
            "./ordersendcostcoupon.php",
            { price: price, send_cost: send_cost },
            function(data) {
                //$this.after(data);
				$("#couponBox").html(data);
            }
        );
    });

    $(document).on("click", ".sc_cp_apply", function() {
		var $el = $(this).closest("tr");
        var cp_id = $el.find("input[name='s_cp_id[]']").val();
        var price = parseInt($el.find("input[name='s_cp_prc[]']").val());
        var subj = $el.find("input[name='s_cp_subj[]']").val();
        var send_cost = parseInt($("input[name=od_send_cost]").val());

        if(parseInt(price) == 0) {
            if(!confirm(subj+"쿠폰의 할인 금액은 "+price+"원입니다.\n쿠폰을 적용하시겠습니까?")) {
                return false;
            }
        }

        $("input[name=sc_cp_id]").val(cp_id);
        $("input[name=od_send_coupon]").val(price);
        $("#sc_cp_price").text(number_format(String(price)));
        calculate_order_price();
        //$("#sc_coupon_frm").remove();
		$('#couponModal').modal('hide');
        $("#sc_coupon_btn").text("쿠폰변경").focus();
        if(!$("#sc_coupon_cancel").size())
            $("#sc_coupon_btn").after("<button type=\"button\" id=\"sc_coupon_cancel\" class=\"btn btn-black btn-sm\">쿠폰취소</button>");
    });

    $(document).on("click", "#sc_coupon_close", function() {
		//$("#sc_coupon_frm").remove();
		$('#couponModal').modal('hide');
        $("#sc_coupon_btn").focus();
    });

    $(document).on("click", "#sc_coupon_cancel", function() {
		$("input[name=od_send_coupon]").val(0);
        $("#sc_cp_price").text(0);
        calculate_order_price();
        //$("#sc_coupon_frm").remove();
        $("#sc_coupon_btn").text("쿠폰적용").focus();
        $(this).remove();
    });

    $("#od_b_addr2").focus(function() {
        var zip = $("#od_b_zip").val().replace(/[^0-9]/g, "");
        if(zip == "")
            return false;

        var code = String(zip);

        if(zipcode == code)
            return false;

        zipcode = code;

        calculate_sendcost(code);
    });

    // 배송지선택
    $("input[name=ad_sel_addr]").on("click", function() {
        var addr = $(this).val().split(String.fromCharCode(30));

        if (addr[0] == "same") {
            gumae2baesong();
        } else {
            if(addr[0] == "new") {
                for(i=0; i<10; i++) {
                    addr[i] = "";
                }
            }

            var f = document.forderform;
            f.od_b_name.value        = addr[0];
            f.od_b_tel.value         = addr[1];
            f.od_b_hp.value          = addr[2];
            f.od_b_zip.value         = addr[3] + addr[4];
            f.od_b_addr1.value       = addr[5];
            f.od_b_addr2.value       = addr[6];
            f.od_b_addr3.value       = addr[7];
            f.od_b_addr_jibeon.value = addr[8];
            f.ad_subject.value       = addr[9];

            var zip1 = addr[3].replace(/[^0-9]/g, "");
            var zip2 = addr[4].replace(/[^0-9]/g, "");

            var code = String(zip1) + String(zip2);

            if(zipcode != code) {
                calculate_sendcost(code);
            }
        }
    });

    // 배송지목록
    $("#order_address").on("click", function() {
        var url = this.href;
        window.open(url, "win_address", "left=100,top=100,width=800,height=600,scrollbars=1");
        return false;
    });
});

function coupon_cancel($el) {
    var $dup_sell_el = $el.find(".total_price");
    var $dup_price_el = $el.find("input[name^=cp_price]");
    var org_sell_price = $el.find("input[name^=it_price]").val();

    $dup_sell_el.text(number_format(String(org_sell_price)));
    $dup_price_el.val(0);
    $el.find("input[name^=cp_id]").val("");
}

function calculate_total_price() {
    var $it_prc = $("input[name^=it_price]");
    var $cp_prc = $("input[name^=cp_price]");
    var tot_sell_price = sell_price = tot_cp_price = 0;
    var it_price, cp_price, it_notax;
    var tot_mny = comm_tax_mny = comm_vat_mny = comm_free_mny = tax_mny = vat_mny = 0;
    var send_cost = parseInt($("input[name=od_send_cost]").val());

    $it_prc.each(function(index) {
        it_price = parseInt($(this).val());
        cp_price = parseInt($cp_prc.eq(index).val());
        sell_price += it_price;
        tot_cp_price += cp_price;
    });

    tot_sell_price = sell_price - tot_cp_price + send_cost;

    $("#ct_tot_coupon").text(number_format(String(tot_cp_price))+" 원");
    $("#ct_tot_price").text(number_format(String(tot_sell_price))+" 원");

    $("input[name=good_mny]").val(tot_sell_price);
    $("input[name=od_price]").val(sell_price - tot_cp_price);
    $("input[name=item_coupon]").val(tot_cp_price);
    $("input[name=od_coupon]").val(0);
    $("input[name=od_send_coupon]").val(0);
            $("input[name=od_temp_point]").val(0);
        calculate_temp_point();
        calculate_order_price();
}

function calculate_order_price() {
    var sell_price = parseInt($("input[name=od_price]").val());
    var send_cost = parseInt($("input[name=od_send_cost]").val());
    var send_cost2 = parseInt($("input[name=od_send_cost2]").val());
    var send_coupon = parseInt($("input[name=od_send_coupon]").val());
    var tot_price = sell_price + send_cost + send_cost2 - send_coupon;

    $("input[name=good_mny]").val(tot_price);
    $("#od_tot_price").text(number_format(String(tot_price)));
        calculate_temp_point();
    }

function calculate_temp_point() {
    var sell_price = parseInt($("input[name=od_price]").val());
    var mb_point = parseInt(1088);
    var max_point = parseInt(999999);
    var point_unit = parseInt(1);
    var temp_point = max_point;

    if(temp_point > sell_price)
        temp_point = sell_price;

    if(temp_point > mb_point)
        temp_point = mb_point;

    temp_point = parseInt(temp_point / point_unit) * point_unit;

    $("#use_max_point").text("최대 "+number_format(String(temp_point))+"점");
    $("input[name=max_temp_point]").val(temp_point);
}

function calculate_sendcost(code) {
    $.post(
        "./ordersendcost.php",
        { zipcode: code },
        function(data) {
            $("input[name=od_send_cost2]").val(data);
            $("#od_send_cost2").text(number_format(String(data)));

            zipcode = code;

            calculate_order_price();
        }
    );
}

function calculate_tax() {
    var $it_prc = $("input[name^=it_price]");
    var $cp_prc = $("input[name^=cp_price]");
    var sell_price = tot_cp_price = 0;
    var it_price, cp_price, it_notax;
    var tot_mny = comm_free_mny = tax_mny = vat_mny = 0;
    var send_cost = parseInt($("input[name=od_send_cost]").val());
    var send_cost2 = parseInt($("input[name=od_send_cost2]").val());
    var od_coupon = parseInt($("input[name=od_coupon]").val());
    var send_coupon = parseInt($("input[name=od_send_coupon]").val());
    var temp_point = 0;

    $it_prc.each(function(index) {
        it_price = parseInt($(this).val());
        cp_price = parseInt($cp_prc.eq(index).val());
        sell_price += it_price;
        tot_cp_price += cp_price;
        it_notax = $("input[name^=it_notax]").eq(index).val();
        if(it_notax == "1") {
            comm_free_mny += (it_price - cp_price);
        } else {
            tot_mny += (it_price - cp_price);
        }
    });

    if($("input[name=od_temp_point]").size())
        temp_point = parseInt($("input[name=od_temp_point]").val());

    tot_mny += (send_cost + send_cost2 - od_coupon - send_coupon - temp_point);
    if(tot_mny < 0) {
        comm_free_mny = comm_free_mny + tot_mny;
        tot_mny = 0;
    }

    tax_mny = Math.round(tot_mny / 1.1);
    vat_mny = tot_mny - tax_mny;
    $("input[name=comm_tax_mny]").val(tax_mny);
    $("input[name=comm_vat_mny]").val(vat_mny);
    $("input[name=comm_free_mny]").val(comm_free_mny);
}

// 구매자 정보와 동일합니다.
function gumae2baesong() {
    var f = document.forderform;

    f.od_b_name.value = f.od_name.value;
    f.od_b_tel.value  = f.od_tel.value;
    f.od_b_hp.value   = f.od_hp.value;
    f.od_b_zip.value  = f.od_zip.value;
    f.od_b_addr1.value = f.od_addr1.value;
    f.od_b_addr2.value = f.od_addr2.value;
    f.od_b_addr3.value = f.od_addr3.value;
    f.od_b_addr_jibeon.value = f.od_addr_jibeon.value;

    calculate_sendcost(String(f.od_b_zip.value));
}
</script><script>

	var form_action_url = "https://buts.co.kr/shop/orderformupdate.php";

	$(function() {
		$("#od_settle_bank").on("click", function() {
			$("[name=od_deposit_name]").val( $("[name=od_name]").val() );
			$("#settle_bank").show();
						$("#sod_frm_pt").show();
					});

		$("#od_settle_point").on("click", function() {
			$("#settle_bank").hide();
			$("#sod_frm_pt").hide();
		});

		$("#od_settle_iche,#od_settle_vbank,#od_settle_hp,#od_settle_easy_pay,#od_settle_kakaopay").bind("click", function() {
			$("#settle_bank").hide();
						$("#sod_frm_pt").show();
					});
	});

	function forderform_check(f) {

		
		// 재고체크
		var stock_msg = order_stock_check();
		if(stock_msg != "") {
			alert(stock_msg);
			return false;
		}

		errmsg = "";
		errfld = "";
		var deffld = "";

		check_field(f.od_name, "주문하시는 분 이름을 입력하십시오.");
		
				var od_settle_bank = document.getElementById("od_settle_bank");
		if (od_settle_bank) {
			if (od_settle_bank.checked) {
				check_field(f.od_bank_account, "계좌번호를 선택하세요.");
				check_field(f.od_deposit_name, "입금자명을 입력하세요.");
			}
		}

		// 배송비를 받지 않거나 더 받는 경우 아래식에 + 또는 - 로 대입
		f.od_send_cost.value = parseInt(f.od_send_cost.value);

		if (errmsg) {
			alert(errmsg);
			errfld.focus();
			return false;
		}

		var settle_case = document.getElementsByName("od_settle_case");
		var settle_check = false;
		var settle_method = "";
		for (i=0; i<settle_case.length; i++) {
			if (settle_case[i].checked) {
				settle_check = true;
				settle_method = settle_case[i].value;
				break;
			}
		}
		if (!settle_check) {
			alert("결제방식을 선택하십시오.");
			return false;
		}

		var od_price = parseInt(f.od_price.value);
		var send_cost = parseInt(f.od_send_cost.value);
		var send_cost2 = parseInt(f.od_send_cost2.value);
		var send_coupon = parseInt(f.od_send_coupon.value);

		var max_point = 0;
		if (typeof(f.max_temp_point) != "undefined")
			max_point  = parseInt(f.max_temp_point.value);

		var temp_point = 0;
		if (typeof(f.od_temp_point) != "undefined") {
			if (f.od_temp_point.value) {
				var point_unit = parseInt(1);
				temp_point = parseInt(f.od_temp_point.value);

				if (temp_point > 1088) {
					alert("회원님의 포인트보다 많이 결제할 수 없습니다.");
					f.od_temp_point.select();
					return false;
				}

				if (settle_method == "포인트") {
					;
				} else {
					if (temp_point < 0) {
						alert("포인트를 0 이상 입력하세요.");
						f.od_temp_point.select();
						return false;
					}

					if (temp_point > (od_price + Math.round(od_price/10))) {
						alert("서비스 금액 보다 많이 포인트결제할 수 없습니다.");
						f.od_temp_point.select();
						return false;
					}

					if (temp_point > max_point) {
						alert(max_point + "점 이상 결제할 수 없습니다.");
						f.od_temp_point.select();
						return false;
					}

					if (parseInt(parseInt(temp_point / point_unit) * point_unit) != temp_point) {
						alert("포인트를 "+String(point_unit)+"점 단위로 입력하세요.");
						f.od_temp_point.select();
						return false;
					}
				}

				// pg 결제 금액에서 포인트 금액 차감
				if(settle_method != "무통장" && settle_method != "포인트") {
					f.good_mny.value = od_price + Math.round(od_price/10) + send_cost + send_cost2 - send_coupon - temp_point;
				}
			}
		}

		if (document.getElementById("od_settle_point")) {
			if (document.getElementById("od_settle_point").checked) {
				var tmp_point = parseInt(f.od_temp_point.value);

				if (tmp_point > 0) {
					;
				} else {
					alert("포인트를 입력해 주세요.");
					f.od_temp_point.select();
					return false;
				}

				var tot_point = od_price + Math.round(od_price/10)  +  send_cost + send_cost2 - send_coupon;

				if (tot_point != tmp_point) {
					alert("결제하실 금액과 포인트가 일치하지 않습니다.2");
					f.od_temp_point.select();
					return false;
				}
			}

		}

		var tot_price = od_price + Math.round(od_price/10) + send_cost + send_cost2 - send_coupon - temp_point;

		if (document.getElementById("od_settle_iche")) {
			if (document.getElementById("od_settle_iche").checked) {
				if (tot_price < 150) {
					alert("계좌이체는 150원 이상 결제가 가능합니다.");
					return false;
				}
			}
		}

		if (document.getElementById("od_settle_card")) {
			if (document.getElementById("od_settle_card").checked) {
				if (tot_price < 1000) {
					alert("신용카드는 1000원 이상 결제가 가능합니다.");
					return false;
				}
			}
		}

		if (document.getElementById("od_settle_hp")) {
			if (document.getElementById("od_settle_hp").checked) {
				if (tot_price < 350) {
					alert("휴대폰은 350원 이상 결제가 가능합니다.");
					return false;
				}
			}
		}

		
		
		// 카카오페이 지불
		if(settle_method == "KAKAOPAY") {
						getTxnId(f);
			return false;
		}

		// pay_method 설정
		
		// 결제정보설정
						
        
            switch(settle_method)
            {
                case '신용카드':
                    f.PayMethod.value = 'CARD';
                    break;
                case '계좌이체':
                    f.PayMethod.value = 'BANK';
                    break;
                case '가상계좌':
                    f.PayMethod.value = 'VBANK';
                    break;
                default:
                    f.PayMethod.value = settle_method;
                    break;
            }

            // 결제정보설정
            f.Amt.value = f.good_mny.value;
            f.BuyerName.value = f.od_name.value;
            f.BuyerEmail.value = f.od_email.value;
            f.BuyerTel.value = f.od_hp.value;

            if(settle_method != '무통장' && settle_method != '포인트') {

                var order_data = $(f).serialize();
                var save_result = "";
                $.ajax({
                    type: "POST",
                    data: order_data,
                    url: g5_url+'/shop/ajax.orderdatasave.php',
                    cache: false,
                    async: false,
                    success: function(data) {
                        save_result = data;
                    }
                });

                if(save_result) {
                    alert(save_result);
                    return false;
                }

                inno_pay(f);
                return false;
            } else {
                f.action = 'https://buts.co.kr/shop/orderformupdate.php';
                f.target = '_self';
                return true;
            }

        	}


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
	
		<!-- footer -->
		<%@include file="../common/footer.jsp" %>
		
	
</div> <!-- .wrapper -->

<!-- .wrapper -->
<div class="at-go" style="position: fixed; bottom: 20px; right: 20px; width: 40px; height: 40px;">
	<div class="side">
		<a href="https://buts.co.kr/bbs/guide_buts.php"><img src="https://buts.co.kr/thema/Buts/colorset/Basic/img/side_img01.png" alt="" /></a>		
		<a onclick="chatChannel();" href="javascript:;"><img src="https://buts.co.kr/thema/Buts/colorset/Basic/img/side_img02.png" alt="" /></a>
	</div>
</div>

<!--[if lt IE 9]>
<script type="text/javascript" src="https://buts.co.kr/thema/Buts/assets/js/respond.js"></script>
<![endif]-->

<!-- JavaScript -->
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

<script>
var sidebar_url = "https://buts.co.kr/thema/Buts/widget/basic-sidebar";
var sidebar_time = "30";
</script>
<script src="https://buts.co.kr/thema/Buts/widget/basic-sidebar/sidebar.js"></script>

<!-- sidebar Box -->
<aside id="sidebar-box" class="ko">

	<!-- Head Line -->
	<div class="sidebar-head bg-blue"></div>

	<!-- sidebar Wing -->
	<div class="sidebar-wing">
		<!-- sidebar Wing Close -->
		<div class="sidebar-wing-close sidebar-close en" title="닫기">
			<i class="fa fa-times"style="color:black;"></i>
		</div>
	</div>

	<!-- sidebar Content -->
	<div id="sidebar-content" class="sidebar-content">

		<div class="h30"></div>

		<!-- Common -->
		<div class="sidebar-common">

			<!-- Login -->
			<div class="btn-group btn-group-justified" role="group">
									<a href="#" onclick="sidebar_open('sidebar-user'); return false;" class="btn btn-blue btn-sm">내정보</a>
																<a href="https://buts.co.kr/shop/myshop.php" class="btn btn-blue btn-sm">파티관리</a>
										<a href="https://buts.co.kr/bbs/logout.php" class="btn btn-blue btn-sm">로그아웃</a>
							</div>

			<div class="h15"></div>

		</div>

		<!-- Menu -->
		<div id="sidebar-menu" class="sidebar-item">
			
<!-- Categroy -->
<div class="div-title-underline-thin en">
	<b>MENU</b>
</div>

<div class="sidebar-icon-tbl">
	<div class="sidebar-icon-cell">
		<a href="https://buts.co.kr">
			<i class="fa fa-home circle light-circle normal"></i>
			<span>홈으로</span>
		</a>
	</div>
	<!--
	<div class="sidebar-icon-cell">
		<a href="https://buts.co.kr/bbs/board.php?bo_table=event">
			<i class="fa fa-gift circle light-circle normal"></i>
			<span>이벤트</span>
		</a>
	</div>
	<div class="sidebar-icon-cell">
		<a href="https://buts.co.kr/bbs/board.php?bo_table=chulsuk">
			<i class="fa fa-calendar-check-o circle light-circle normal"></i>
			<span>출석부</span>
		</a>
	</div>
	<div class="sidebar-icon-cell">
		<a href="https://buts.co.kr/bbs/qalist.php">
			<i class="fa fa-commenting circle light-circle normal"></i>
			<span>1:1 문의</span>
		</a>
	</div>
	-->
</div>

<div class="sidebar-menu panel-group" id="sidebar_menu" role="tablist" aria-multiselectable="true">
						<div class="panel">
				<div class="ca-head" role="tab" id="sidebar_menu_c1">
					<a href="#sidebar_menu_s1" data-toggle="collapse" data-parent="#sidebar_menu" aria-expanded="true" aria-controls="sidebar_menu_s1" class="is-sub">
						<span class="ca-href pull-right" onclick="sidebar_href('https://buts.co.kr/shop/list.php?ca_id=10');">&nbsp;</span>
						영상						<i class="fa fa-bolt crimson"></i>					</a>
				</div>
				<div id="sidebar_menu_s1" class="panel-collapse collapse" role="tabpanel" aria-labelledby="sidebar_menu_c1">
					<ul class="ca-sub">
																	<li>
							<a href="https://buts.co.kr/shop/list.php?ca_id=1010">
								#넷플릭스															</a>
						</li>
																	<li>
							<a href="https://buts.co.kr/shop/list.php?ca_id=1080">
								#디즈니								<i class="fa fa-bolt crimson"></i>							</a>
						</li>
																	<li>
							<a href="https://buts.co.kr/shop/list.php?ca_id=1020">
								#왓챠								<i class="fa fa-bolt crimson"></i>							</a>
						</li>
																	<li>
							<a href="https://buts.co.kr/shop/list.php?ca_id=1030">
								#유튜브															</a>
						</li>
																	<li>
							<a href="https://buts.co.kr/shop/list.php?ca_id=1040">
								#웨이브								<i class="fa fa-bolt crimson"></i>							</a>
						</li>
																	<li>
							<a href="https://buts.co.kr/shop/list.php?ca_id=1050">
								#티빙								<i class="fa fa-bolt crimson"></i>							</a>
						</li>
																	<li>
							<a href="https://buts.co.kr/shop/list.php?ca_id=1090">
								#라프텔															</a>
						</li>
																	<li>
							<a href="https://buts.co.kr/shop/list.php?ca_id=10a0">
								#AppleOne															</a>
						</li>
																	<li>
							<a href="https://buts.co.kr/shop/list.php?ca_id=1070">
								#프라임비디오															</a>
						</li>
																	<li>
							<a href="https://buts.co.kr/shop/list.php?ca_id=10b0">
								#테니스TV															</a>
						</li>
																	<li>
							<a href="https://buts.co.kr/shop/list.php?ca_id=1060">
								기타(영상)															</a>
						</li>
										</ul>
				</div>
			</div>
								<div class="panel">
				<div class="ca-head" role="tab" id="sidebar_menu_c2">
					<a href="#sidebar_menu_s2" data-toggle="collapse" data-parent="#sidebar_menu" aria-expanded="true" aria-controls="sidebar_menu_s2" class="is-sub">
						<span class="ca-href pull-right" onclick="sidebar_href('https://buts.co.kr/shop/list.php?ca_id=20');">&nbsp;</span>
						도서/음악						<i class="fa fa-bolt crimson"></i>					</a>
				</div>
				<div id="sidebar_menu_s2" class="panel-collapse collapse" role="tabpanel" aria-labelledby="sidebar_menu_c2">
					<ul class="ca-sub">
																	<li>
							<a href="https://buts.co.kr/shop/list.php?ca_id=2010">
								#리디북스															</a>
						</li>
																	<li>
							<a href="https://buts.co.kr/shop/list.php?ca_id=2020">
								#밀리의서재								<i class="fa fa-bolt crimson"></i>							</a>
						</li>
																	<li>
							<a href="https://buts.co.kr/shop/list.php?ca_id=2030">
								#YES24															</a>
						</li>
																	<li>
							<a href="https://buts.co.kr/shop/list.php?ca_id=2080">
								#윌라															</a>
						</li>
																	<li>
							<a href="https://buts.co.kr/shop/list.php?ca_id=2040">
								#스포티파이															</a>
						</li>
																	<li>
							<a href="https://buts.co.kr/shop/list.php?ca_id=2060">
								#애플뮤직															</a>
						</li>
																	<li>
							<a href="https://buts.co.kr/shop/list.php?ca_id=2090">
								#케이크															</a>
						</li>
																	<li>
							<a href="https://buts.co.kr/shop/list.php?ca_id=2050">
								기타(도서/음악)															</a>
						</li>
										</ul>
				</div>
			</div>
								<div class="panel">
				<div class="ca-head" role="tab" id="sidebar_menu_c3">
					<a href="#sidebar_menu_s3" data-toggle="collapse" data-parent="#sidebar_menu" aria-expanded="true" aria-controls="sidebar_menu_s3" class="is-sub">
						<span class="ca-href pull-right" onclick="sidebar_href('https://buts.co.kr/shop/list.php?ca_id=30');">&nbsp;</span>
						게임											</a>
				</div>
				<div id="sidebar_menu_s3" class="panel-collapse collapse" role="tabpanel" aria-labelledby="sidebar_menu_c3">
					<ul class="ca-sub">
																	<li>
							<a href="https://buts.co.kr/shop/list.php?ca_id=3010">
								#닌텐도온라인															</a>
						</li>
																	<li>
							<a href="https://buts.co.kr/shop/list.php?ca_id=3030">
								#스팀															</a>
						</li>
																	<li>
							<a href="https://buts.co.kr/shop/list.php?ca_id=3040">
								#PS4/PS5															</a>
						</li>
																	<li>
							<a href="https://buts.co.kr/shop/list.php?ca_id=3050">
								#XBOX															</a>
						</li>
																	<li>
							<a href="https://buts.co.kr/shop/list.php?ca_id=3020">
								기타															</a>
						</li>
										</ul>
				</div>
			</div>
								<div class="panel">
				<div class="ca-head" role="tab" id="sidebar_menu_c4">
					<a href="#sidebar_menu_s4" data-toggle="collapse" data-parent="#sidebar_menu" aria-expanded="true" aria-controls="sidebar_menu_s4" class="is-sub">
						<span class="ca-href pull-right" onclick="sidebar_href('https://buts.co.kr/shop/list.php?ca_id=60');">&nbsp;</span>
						기타											</a>
				</div>
				<div id="sidebar_menu_s4" class="panel-collapse collapse" role="tabpanel" aria-labelledby="sidebar_menu_c4">
					<ul class="ca-sub">
																	<li>
							<a href="https://buts.co.kr/shop/list.php?ca_id=6050">
								#맴버쉽															</a>
						</li>
																	<li>
							<a href="https://buts.co.kr/shop/list.php?ca_id=6010">
								#MS Office															</a>
						</li>
																	<li>
							<a href="https://buts.co.kr/shop/list.php?ca_id=6020">
								#그래픽															</a>
						</li>
																	<li>
							<a href="https://buts.co.kr/shop/list.php?ca_id=6030">
								#운영체제															</a>
						</li>
																	<li>
							<a href="https://buts.co.kr/shop/list.php?ca_id=6060">
								#VPN															</a>
						</li>
																	<li>
							<a href="https://buts.co.kr/shop/list.php?ca_id=6040">
								기타															</a>
						</li>
										</ul>
				</div>
			</div>
			</div>

<div class="h20"></div>

<!-- Stats 
<div class="div-title-underline-thin en">
	<b>STATS</b>
</div>

<ul style="padding:0px 15px; margin:0; list-style:none; color:black;">
	<li><a href="https://buts.co.kr/bbs/current_connect.php">
		<span class="pull-right">7(<b class="orangered">1</b>) 명</span>현재 접속자</a>
	</li>
	<li><span class="pull-right">1 명</span>오늘 방문자</li>
	<li><span class="pull-right">0 명</span>어제 방문자</li>
	<li><span class="pull-right">8,729 명</span>최대 방문자</li>
	<li><span class="pull-right">146,059 명</span>전체 방문자</li>
	<li><span class="pull-right">0 개</span>전체 게시물</li>
	<li><span class="pull-right">0 개</span>전체 댓글수</li>
	<li><span class="pull-right sidebar-tip" data-original-title="<nobr>오늘 44 명 / 어제 159 명</nobr>" data-toggle="tooltip" data-placement="top" data-html="true">98,731 명</span>전체 회원수
	</li>
</ul>
-->
		</div>

		<!-- Search -->
		<div id="sidebar-search" class="sidebar-item">
			
<!-- Search -->
<div class="div-title-underline-thin en">
	<b>SEARCH</b>
</div>
<div class="sidebar-search">
	<form id="ctrlSearch" name="ctrlSearch" method="get" onsubmit="return sidebar_search(this);" role="form" class="form">
		<div class="row">
			<div class="col-xs-6">
				<select name="url" class="form-control input-sm">
					<option value="https://buts.co.kr/bbs/search.php">게시물</option>
											<option value="https://buts.co.kr/shop/search.php">상품</option>
						<option value="https://buts.co.kr/shop/itemuselist.php">후기</option>
						<option value="https://buts.co.kr/shop/itemqalist.php">문의</option>
										<option value="https://buts.co.kr/bbs/tag.php">태그</option>
				</select>
			</div>
			<div class="col-xs-6">
				<select name="sop" id="sop" class="form-control input-sm">
					<option value="or">또는</option>
					<option value="and">그리고</option>
				</select>	
			</div>
		</div>
		<div class="input-group input-group-sm" style="margin-top:8px;">
			<input type="text" name="stx" class="form-control input-sm" value="" placeholder="검색어는 두글자 이상">
			<span class="input-group-btn">
				<button type="submit" class="btn btn-navy btn-sm"><i class="fa fa-search"></i></button>
			</span>
		</div>
	</form>				
</div>
		</div>

		<!-- User -->
		<div id="sidebar-user" class="sidebar-item">
			<div class="sidebar-login">
			<div class="profile">
			<a href="https://buts.co.kr/bbs/myphoto.php" target="_blank" class="win_memo" title="사진등록">
				<div class="photo pull-left">
					<img src="https://buts.co.kr/data/member_image/lh/lhg1042.gif" alt="">				</div>
			</a>
			<h3 style="color:black">ㅇㅆㅇ</h3>
			<div class="clearfix">
				<b>
					<span style="font-size:14px; color:#333333;">포인트</span>			
					<a href="javascrip:;" onclick="win_memo('https://buts.co.kr/bbs/point.php')">
						<span style="color:#68b6ff; margin-left:3px; font-size:13px; font-weight: bold;">	
							1,088P
						</span>
					</a>
					<a href="https://buts.co.kr/shop/order_point_form.php" style="margin-left:10px;">
						<button type="button" style="background-color: #0a89ff; width:51px; height:26px;  border-radius: 2px; border:0px; color:#fff; ">충전</button>
					</a>
				</b>
			</div>
			<div class="clearfix"></div>
		</div>
<!--
		<div class="progress progress-striped sidebar-tip cursor" style="height:10px; margin:10px 0px 0px;" data-original-title="레벨업까지 100점 남았습니다." data-toggle="tooltip" data-html="true">
			<div class="progress-bar progress-bar-blue" style="width: 0%;"></div>
		</div>

		<div class="font-12" style="padding:5px 0px 8px; color:black">
			<span class="pull-right">
				Exp 0 (0%)
			</span>
			레벨 1 
		</div>
	-->
		<div class="btn-group btn-group-justified" role="group" style="margin-top:20px;">
										<a href="https://buts.co.kr/shop/partner/" class="btn btn-blue btn-sm">파티관리</a>
						<a href="https://buts.co.kr/bbs/logout.php" class="btn btn-blue btn-sm">로그아웃</a>
		</div>
		
		<div class="h15"></div>

		<!-- Service -->
		<div class="div-title-underline-thin en">
			<b style="color:black">MY MENU</b>
		</div>

		<ul class="sidebar-list list-links">
						<li>
				<a href="https://buts.co.kr/shop/mypage.php" style="color:black">
					마이페이지
				</a>
			</li>
			<li>
				<a href="https://buts.co.kr/shop/list_my.php?ca_id=10" style="color:black">
					내 파티보기
				</a>
			</li>
			<li>
				<a href="https://buts.co.kr/shop/orderinquiry.php" style="color:black">
					결제내역조회
				</a>
			</li>
			<!--
			<li>
									<a href="https://buts.co.kr/bbs/memo.php" target="_blank" class="win_memo" style="color:black">
									쪽지함
				</a>		
			</li>
			<li>
				<a href="https://buts.co.kr/bbs/mypost.php" target="_blank" class="win_memo" style="color:black">
					내글관리
				</a>
			</li>
			<li>
									<a href="https://buts.co.kr/bbs/response.php" target="_blank" class="win_memo" style="color:black">
									내글반응
				</a>		
			</li>
			<li>
				<a href="https://buts.co.kr/bbs/myphoto.php" target="_blank" class="win_memo" style="color:black">
					사진등록
				</a>
			</li>
				-->
			<li>
				<a href="https://buts.co.kr/bbs/member_confirm.php?url=register_form.php" style="color:black">
					정보수정
				</a>
			</li>
		</ul>

	</div>

<div class="h20"></div>

<!-- Service -->
<div class="div-title-underline-thin en">
	<b style="color:black">SERVICE</b>
</div>

<ul class="sidebar-list list-links">
	<!--<li><a href="https://buts.co.kr/bbs/qalist.php" style="color:black">1:1 문의</a></li>-->
	<li><a href="https://buts.co.kr/bbs/faq.php" style="color:black">자주하시는 질문(FAQ)</a></li>
</ul>
<ul class="sidebar-list list-links">
	<a id="channel-chat-button" href="#" onclick="void chatChannel();">
		<img src="https://buts.co.kr/img/buts/consult_small_yellow_pc.png" />
	</a>
</ul>
<script type="text/javascript">
// input your appkey
Kakao.init('c089c8172def97eb00c07217cae17495')
function chatChannel() {
	Kakao.Channel.chat({
	channelPublicId: '_xnSxgxdxb',
	})
}
</script>

	<!--
<div class="div-title-underline-thin en">
	<b>STATS</b>
</div>

<ul style="padding:0px 15px; margin:0; list-style:none; color:black;">
	<li><a href="https://buts.co.kr/bbs/current_connect.php">
		<span class="pull-right">7(<b class="orangered">1</b>) 명</span>현재 접속자</a>
	</li>
	<li>
		<span class="pull-right">7(<b class="orangered">1</b>) 명</span>현재 접속자
	</li>
	<li><span class="pull-right">1 명</span>오늘 방문자</li>
	<li><span class="pull-right">0 명</span>어제 방문자</li>
	<li><span class="pull-right">8,729 명</span>최대 방문자</li>
	<li><span class="pull-right">146,059 명</span>전체 방문자</li>
	<li><span class="pull-right">0 개</span>전체 게시물</li>
	<li><span class="pull-right">0 개</span>전체 댓글수</li>
	<li><span class="pull-right sidebar-tip" data-original-title="<nobr>오늘 44 명 / 어제 159 명</nobr>" data-toggle="tooltip" data-placement="top" data-html="true">98,731 명</span>전체 회원수
	</li>
</ul>
-->		</div>

		<!-- Response -->
		<div id="sidebar-response" class="sidebar-item">
			<div id="sidebar-response-list"></div>
		</div>

				<!-- Cart -->
		<div id="sidebar-cart" class="sidebar-item">
			<div id="sidebar-cart-list"></div>
		</div>
		
		<div class="h30"></div>
	</div>

</aside>

<div id="sidebar-box-mask" class="sidebar-close"></div>
<!-- Channel Plugin Scripts -->
<script>
  (function() {
    var w = window;
    if (w.ChannelIO) {
      return (window.console.error || window.console.log || function(){})('ChannelIO script included twice.');
    }
    var ch = function() {
      ch.c(arguments);
    };
    ch.q = [];
    ch.c = function(args) {
      ch.q.push(args);
    };
    w.ChannelIO = ch;
    function l() {
      if (w.ChannelIOInitialized) {
        return;
      }
      w.ChannelIOInitialized = true;
      var s = document.createElement('script');
      s.type = 'text/javascript';
      s.async = true;
      s.src = 'https://cdn.channel.io/plugin/ch-plugin-web.js';
      s.charset = 'UTF-8';
      var x = document.getElementsByTagName('script')[0];
      x.parentNode.insertBefore(s, x);
    }
    if (document.readyState === 'complete') {
      l();
    } else if (window.attachEvent) {
      window.attachEvent('onload', l);
    } else {
      window.addEventListener('DOMContentLoaded', l, false);
      window.addEventListener('load', l, false);
    }
  })();
  ChannelIO('boot', {
    "pluginKey": "d3d063c0-7d5d-48f8-8535-0ac91305c985", //please fill with your plugin key
    "memberId": "lhg1042", //fill with user id
    "profile": {
      "name": "이혜규", //fill with user name
      "mobileNumber": "010-9256-1042",
      "email": "lhg1042@nate.com",
      "description": "ㅇㅆㅇ" //fill with user name
    }
  });
</script>
<!-- End Channel Plugin -->


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

</body>
</html>
