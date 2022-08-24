<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

${msg }


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
<link rel="stylesheet" href="/css/partyAdmin/default_shop.css">
<link rel="stylesheet" href="/css/partyAdmin/apms.css">

<link rel="stylesheet" href="/css/partyAdmin/bootstrap.min.css" type="text/css" class="thema-mode">
<link rel="stylesheet" href="/css/member/magnific-popup.css" type="text/css">
<link rel="stylesheet" href="/css/partyAdmin/buts.css" type="text/css" >
<link rel="stylesheet" href="/css/partyAdmin/style.css" type="text/css" >
<link rel="stylesheet" href="/css/partyAdmin/widget.css">
<link rel="stylesheet" href="/css/partyAdmin/basic.css">
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
<script src="/js/jquery-1.11.3.min.js"></script>
<script src="/js/jquery-migrate-1.2.1.min.js"></script>
<script src="https://buts.co.kr/lang/korean/lang.js?ver=180820"></script>
<script src="/js/common.js"></script>
<script src="/js/wrest.js"></script>
<script src="/js/placeholders.min.js"></script>
<script src="/js/apms.js"></script>
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
<form name="forderform" id="forderform" method="post" action="partyMemberInsertProc" autocomplete="off" role="form" class="form-horizontal">

<div class="title-wrap border mg-top-minus">
	<div class="title">진행/결제</div>
</div>

<div class="h3">진행 정보</div>

<div class="payment-name item-name mobile-block">
	<span class="brand"></span>
	<span class="name">${party.party_subservice }</span>
	<span class="comment">${party.party_title }</span>
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
					<input type="hidden" name="it_id[0]"    value="">
					<input type="hidden" name="it_name[0]"  value="${party.party_title }">
					<input type="hidden" name="it_price[0]" value="${myDay.pay }">
					<input type="hidden" name="cp_id[0]" value="">
					<input type="hidden" name="cp_price[0]" value="${mayDay.plus }">
					
					<input type="hidden" name="id" value="${member.id }">
					<input type="hidden" name="nick" value="${member.nick }">
					<input type="hidden" name="party_num" value="${party.party_num }">
					<input type="hidden" name="mycharge" value="${myDay.pay }">
					<input type="hidden" name="mystartday" value="">
					
					<div class="item-name">
						<span class="brand"><img src=${party.logo } alt="" /></span> 
						<span class="name">${party.party_subservice }</span>
						<span class="comment">${party.party_title }</span>
					</div>
				</td>
				<td><strong>${myDay.diff}</strong>일</td>
				<td><strong>${myDay.pay}</strong>원</td> 
				<td><strong>${myDay.plus}</strong>원</td>
				<td><span class="Rajdhani">${(myDay.pay + myDay.plus)}</span>원</td>  
				
			</tr>
		</tbody>
	</table>
</div>

	<input type="hidden" name="od_price"    value="${myDay.pay }">
	<input type="hidden" name="org_od_price"    value="${myDay.diff + myDay.plus}">
	<input type="hidden" name="od_send_cost" value="0">
	<input type="hidden" name="od_send_cost2" value="0">
	<input type="hidden" name="item_coupon" value="0">
	<input type="hidden" name="od_coupon" value="0">
	<input type="hidden" name="od_send_coupon" value="0">


<input type="hidden" name="good_mny" value="${myDay.diff + myDay.plus}"> <!-- 영카트 로직을 위한 값 -->

<input type="hidden" id="PayMethod" name="PayMethod" value="">  <!-- 결제수단 // -->
<input type="hidden" id="MID" name="MID" value="pgbuts001m">  <!-- 가맹점 아이디 // -->
<input type="hidden" id="MerchantKey" name="MerchantKey" value="IElSrkcNVP9j2Ox4/bX3BKWRRNtTILvIYeM88TB8jTYY8kqmcnvOWwfVlFFfyVa7gijbxtN1EaSnXOmP4suRdA==">
<input type="hidden" id="GoodsName" name="GoodsName" value="${party.party_title }">  <!-- 상품명 // -->
<input type="hidden" id="Amt" name="Amt" value="${myDay.pay + myDay.plus}">  <!-- 상품금액 // -->
<input type="hidden" id="BuyerName" name="BuyerName" value="${member.name }">  <!-- 구매자명 // -->
<input type="hidden" id="BuyerTel" name="BuyerTel" value="${member.tel }">  <!-- 구매자 연락처 // -->
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
					<div class="right">${member.id }</div>
				</li>
				<li>
					<div class="subject">ㆍ 이름</div>
					<div class="right fill">
						<input type="text" name="name" value="${member.name }" id="od_name" required maxlength="20" style="text-align:right;">
					</div>
				</li>
				<input type="hidden" name="od_hp" value="${member.tel }">
				<input type="hidden" name="od_b_name" value="${member.name }">
				<input type="hidden" name="od_b_tel" value="">
				<input type="hidden" name="od_b_hp" value="${member.tel }">
				<input type="hidden" name="od_b_zip" value="">
				<input type="hidden" name="od_b_addr1" value="">
				<input type="hidden" name="od_b_addr2" value="">
				<input type="hidden" name="od_b_addr3" value="">
				<input type="hidden" name="od_b_addr_jibeon" value="">
				<input type="hidden" name="od_email" value="">
								
			</ul>
		</div>
	</div>



<div class="form-half">
	<div class="h3">결제 정보</div>
	<div class="form-list border">
		<ul>
		<li>
			<div class="subject">ㆍ 서비스 금액</div>
			<div class="right">${myDay.pay}</div>
		</li>
		<li>
			<div class="subject">ㆍ 수수료(10%)</div>
			<div class="right">${myDay.plus }원</div>
		</li>
		<li>
			<div class="subject">ㆍ 합계</div>
			<div class="right">${myDay.pay + myDay.plus}</div>
		</li>
		<li>
			<div class="subject">ㆍ 사용 포인트</div>
			<div class="right fill">
				보유 포인트
				<span class="text-purple">${member.point }P</span>
				<input type="hidden" name="max_temp_point" value="${member.point }">
				<input type="text" name="use_point" id="od_temp_point" onBlur="onlyNumber(this);" class="point" value="0" >
				<input type="button" id="point_s" value="전액사용" onclick="change_view('1');" class="all button mini button-purple">
				<input type="button" id="point_c" value="취소" onclick="change_view('2');" style="display:none;" class="all button mini button-purple">
				<input type="radio" id="od_settle_point" name="od_settle_case" value="포인트" style="display:none;" >
			</div>
		</li>
		<li>
	</li>
		<li id="settle_bank" >
			<div class="subject">ㆍ 결제방법</div>
			<div class="right">
				<span class="input-check input-radio">
					<input type="radio" id="od_settle_bank" name="od_settle_case" value="무통장"  />
					<label for="od_settle_bank" onclick="$('.account').show();setTimeout(function(){$('#od_deposit_name').val('${member.name}')}, 10);">계좌이체</label>
				</span>
			</div>
			<div class="account text-right" style="display: none">
				<select name="od_bank_account" id="od_bank_account">
					<option value="하나은행 165-910009-55405 김시진" selected="selected">하나은행 165-910009-55405 김시진</option>
				</select>
				<input type="text" name="od_deposit_name" id="od_deposit_name" placeholder="입금자명" size="10" maxlength="20" value="${member.name }" />	
					</br>*계좌이체 시 입금자 명과 동일해야 합니다.
			</div>
		</li>
		<li class="total">
			<div class="subject text-purple">총 결제금액</div>
			<div class="right">
			<span id="od_last_price" class="Rajdhani text-purple" >
				 ${(myDay.pay + myDay.plus)}
			</span>
			<input type="hidden" id="use_account" name="use_account" value=""/>
			<span class="won">원</span>
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
		var tot_price = ${myDay.pay + myDay.plus};
		var mb_point = ${member.point};
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
		var tot_price = ${myDay.pay + myDay.plus};

		if(str_val.replace(/[0-9]/g, "").length > 0) {
			alert("수량은 숫자로 입력해 주십시오.");
			document.getElementById("od_temp_point").value = '0';
			return false;		
		}
		else if (parseInt(str_val) > ${member.point}) {
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
			$('input[name=use_account]').attr('value', number_format(od_last_price));
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

function calculate_temp_point() {
    var sell_price = parseInt($("input[name=od_price]").val());
    var mb_point = parseInt(${member.point});
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

	var form_action_url = "http://localhost/";

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

				if (temp_point > ${member.point}) {
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
                f.action = '/partyMemberInsertProc';
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

		<!-- footer -->
		<%@include file="../common/footer.jsp" %>
		
	
</div> <!-- .wrapper -->

</body>
</html>
