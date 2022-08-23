<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<link rel="favicon" href="/favicon.ico">
<!--<link rel="favicon" href="https://buts.co.kr/img/buts/favicon.ico">-->
<meta http-equiv="imagetoolbar" content="no">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta name="title" content="파트너 신청 > Buts" />
<meta name="publisher" content="Buts" />
<meta name="author" content="Buts" />
<meta name="robots" content="index,follow" />
<meta name="keywords" content="Buts" />
<meta name="description" content="파트너 신청 > Buts" />
<meta name="twitter:card" content="summary_large_image" />
<meta property="og:title" content="파트너 신청 > Buts" />
<meta property="og:site_name" content="Buts" />
<meta property="og:author" content="Buts" />
<meta property="og:type" content="" />
<meta property="og:image" content="https://buts.co.kr/thema/Buts/colorset/Basic/img/og_image.jpg" />
<meta property="og:description" content="파트너 신청 > Buts" />
<meta property="og:url" content="https://buts.co.kr/shop/partner/register.php" />
<link rel="canonical" href="https://buts.co.kr/shop/partner/register.php" />
<title>파트너 신청 > Buts</title>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet"> 
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:400,300,600,400italic,700,800" type="text/css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway:300,200,100" type="text/css">

<link rel="stylesheet" href="/css/partyAdmin/admin.sub.css">
<link rel="stylesheet" href="/css/partyAdmin/apms.css">
<link rel="stylesheet" href="/css/partyAdmin/basic.css">
<link rel="stylesheet" href="/css/partyAdmin/bootstrap.min.css">
<link rel="stylesheet" href="/css/partyAdmin/partner.css">

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
var g5_purl = "https://buts.co.kr/shop/partner/register.php";
</script>
<script src="/js/partnerregister.js"></script>
<script src="/js/bootstrap.min.js"></script>
</head>
<body class="responsive is-pc">
	<h1 style="display:inline-block !important;position:absolute;top:0;left:0;margin:0 !important;padding:0 !important;font-size:0;line-height:0;border:0 !important;overflow:hidden !important">
	파트너 신청 > Buts	</h1>

<style>
body {
	background-color: #efefef;
}
body, select, input, button {
	font-family: 'Noto Sans KR', 'NanumGothic', '나눔고딕', ng, 'Malgun Gothic', Gulim, Dotum, Sans-Serif !important;
}
form {
	width: 100%;
}
input[type='text'] {
	height: 36px;
}
.dialog {
	position: absolute;
	top: 100px;
	left: 50%;
	margin: 0 0 0 -375px;
}
.dialog-caution ul {
	padding-left: 10px; 
	list-style: "- ";
}
@media screen and (max-width: 750px) {
	select, input {
		height: 32px;
		font-size: 12px !important;
	}
	input[type='text'] {
		height: 30px;
	}
	.dialog {
		position: relative;
		top: auto;
		left: auto;
		margin: 0;
		padding-bottom: 50px;
	}
	.dialog-caution ul {
		padding-left: 0px; 
	}
	.input-check input[type='checkbox'] + label {
		font-size: 12px;
	}
}
</style>
<form class="form" name="fregister" id="fregister" action="accountInsertProc" method="post" onsubmit="return fregister_submit(this);">
<div class="dialog" style="border-top: 2px solid #84cdcf">
	<div class="dialog-title"><span class="text-purple">파트너</span> 신청</div>
	<div class="dialog-body" style="padding-top: 30px; border-top: 1px solid #333">
					<input type="hidden" name="pt_partner" value="1">
			<input type="hidden" name="pt_marketer" value="0">
				<ul class="dialog-form">
			<li>
				<span class="subject">ㆍ 모집유형</span>
				<!-- <input type="text" name="pt_type" id="pt_type" style="width: 100%; max-width: 200px" disabled="disabled" value="개인파티장" required /> -->
				<select name="pt_type" id="pt_type" required style="width: 100%; max-width: 232px"  onchange="fn_type(this.form)"  value="">
					<option value="">파트너 유형을 선택해 주세요.</option>
											<option value="1" selected>개인파티장</option>
									</select>						
			</li>
			<li>
				<label>* 개인파티장은 수수료가 없습니다.(한달에 한번만 각 서비스 등록가능)</label>				
			</li>
			<li>
				<input type="hidden" name="id" id="pt_name" placeholder="아이디" style="width: 100%; max-width: 200px" disabled="disabled" value="${member.id }" required />
				<span class="subject">ㆍ 이름</span>
				<input type="text" name="name" id="pt_name" placeholder="이름" style="width: 100%; max-width: 200px" disabled="disabled" value="${member.name }" required />
			</li>
			<li>
				<span class="subject">ㆍ 연락처</span>
				<input type="text" name="tel" id="pt_hp" placeholder="연락처를 입력해 주세요." style="width: 100%; max-width: 200px" disabled="disabled" value="${member.tel }" required>
			</li>
		
			<li id="li_saupja">
				<span class="subject">ㆍ 주민번호</span>
				<input type="text" name="personal_num" id="pt_company_saupja" style="width: 100%; max-width: 200px"  placeholder="주민등록 번호입력" value="">
			</li>
			<li>
				<span class="subject">ㆍ 출금계좌</span>
				<select name="account_name" required style="width: 100%; max-width: 232px; margin-bottom: 2px;"  value="">
					<option value="">은행을 선택해 주세요.</option>
						<option value="국민은행" >국민은행</option>
						<option value="기업은행" >기업은행</option>
						<option value="농협은행" >농협은행</option>
						<option value="신한은행" >신한은행</option>
						<option value="산업은행" >산업은행</option>
						<option value="우리은행" >우리은행</option>
						<option value="한국씨티은행" >한국씨티은행</option>
						<option value="하나은행" >하나은행</option>
						<option value="SC제일은행" >SC제일은행</option>
						<option value="경남은행" >경남은행</option>
						<option value="광주은행" >광주은행</option>
						<option value="대구은행" >대구은행</option>
						<option value="도이치은행" >도이치은행</option>
						<option value="뱅크오브아메리카" >뱅크오브아메리카</option>
						<option value="부산은행" >부산은행</option>
						<option value="산림조합중앙회" >산림조합중앙회</option>
						<option value="저축은행" >저축은행</option>
						<option value="새마을금고중앙회" >새마을금고중앙회</option>
						<option value="수협은행" >수협은행</option>
						<option value="신협중앙회" >신협중앙회</option>
						<option value="우체국" >우체국</option>
						<option value="전북은행" >전북은행</option>
						<option value="제주은행" >제주은행</option>
						<option value="중국건설은행" >중국건설은행</option>
						<option value="BNP파리바은행" >BNP파리바은행</option>
						<option value="HSBC은행" >HSBC은행</option>
						<option value="JP모간체이스은행" >JP모간체이스은행</option>
						<option value="카카오뱅크" >카카오뱅크</option>
						<option value="케이뱅크" >케이뱅크</option>		
						<option value="토스뱅크" >토스뱅크</option>				
						<option value="교보증권" >교보증권</option>
						<option value="대신증권" >대신증권</option>
						<option value="DB금융투자" >DB금융투자</option>
						<option value="메이츠종합금융증권" >메이츠종합금융증권</option>
						<option value="미래에센대우" >미래에센대우</option>
						<option value="부국증권" >부국증권</option>
						<option value="삼성증권" >삼성증권</option>
						<option value="신영증권" >신영증권</option>
						<option value="신한금융투자" >신한금융투자</option>
						<option value="에스케이증권" >에스케이증권</option>
						<option value="현대차증권" >현대차증권</option>
						<option value="유안타증권" >유안타증권</option>
						<option value="유진투자증권" >유진투자증권</option>
						<option value="이베스트투자증권" >이베스트투자증권</option>
						<option value="케이프투자증권" >케이프투자증권</option>
						<option value="키움증권" >키움증권</option>
						<option value="한국포스증권" >한국포스증권</option>
						<option value="하나금융투자" >하나금융투자</option>
						<option value="하이투자증권" >하이투자증권</option>
						<option value="한국투자증권" >한국투자증권</option>
						<option value="한화투자증권" >한화투자증권</option>
						<option value="KB증권" >KB증권</option>
						<option value="KTB투자증권" >KTB투자증권</option>
						<option value="BNK투자증권" >BNK투자증권</option>
						<option value="NH투자증권" >NH투자증권</option>
				</select>
				<input type="text" name="account_num" id="pt_bank_account" style="width: 100%; max-width: 200px;" required placeholder="계좌번호를 입력해 주세요."  value="">
			</li>
		</ul>
		<div class="dialog-caution">
			<ul>
				<li>파티(상품)관리 권한 및 관리 책임은 판매자에게 있습니다.</li>
				<br />
				<li>판매자 귀책사유로 분쟁이 발생된 경우 해결해야 할 책임이 있으며,<br />분쟁이 지속 되는 경우 벗츠정책에 따라 진행됩니다.</li>
				<br />
				<li>판매자는 파티모집 후 약속된 기간동안 파티를 유지 및 관리를 진행할 의무가 있으며,<br />해당 의무를 다하지 못함으로서써 발생된 이슈 및 분쟁에 대해서 해결 해야할 책임이 있습니다.</li>
				<br />
				<li>개인 파티장은 모집 시 판매 수수료가 없습니다.<br />(개인파티장은 한달에 한 서비스에 한번만 파티를 등록할수 있습니다.)<br /></li>
				<br />
				<li>전문 파티장은 파티원 모집 시 10%의 판매 수수료가 발생되며, 출금시 차감되어 출금됩니다.<br />(수수료 10%에 대해서는 세금계산서가 발행 됩니다.)<br /></li>
				<br />
				<li>출금 신청 시 입력 된 계좌로 출금되며, ‘벗츠’에서 인증 된 실명과 다를 경우 출금이 안됩니다.</li>
				<br />
				<li>벗츠는 통신판매 중개자이며, 통신판매 당사자가 아닙니다.</li>
			</ul>
		</div>
		<div class="input-check" style="margin-top: 10px">
			<input type="checkbox" name="agree" value="1" id="agree11">
			<label for="agree11">서비스 제공자의 가입약관과 상기 정보제공에 동의합니다.</label>
		</div>
	</div>
	<div class="dialog-buttons">
		<button type="submit" class="button small button-purple"> 파티장 가입</button>
	</div>
</div>
</form>

<script>
    function fregister_submit(f) {

		if(f.pt_type.value == "1"){
			if(f.pt_company_saupja.value == ""){	
				alert("전문파티장 가입시 주민번호를 입력해야 합니다.");
				f.pt_company_saupja.focus();
				return false;	
			}
		}

        if (!f.agree.checked) {
            alert("파트너가입약관과 정보제공에 동의하셔야 가입하실 수 있습니다.");
            f.agree.focus();
            return false;
        }
				
		/*/이메일
		var regex = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
		if(regex.test(f.pt_email.value) === false) {  
			alert("잘못된 이메일 형식입니다.");  
            f.pt_email.focus();
			return false;  
		}
		*/

		if (confirm("파트너 등록을 신청하시겠습니까?")) {
			f.action = "http://localhost/partyList";
			return true;
		}

		return false;
    }

	
	function fn_type(f)
	{
    	var idx = f.pt_type.value;
		if(idx == "1"){			
			$('#li_saupja').show();
			$('#li_saupja_sub').show();
		}
		else{
			$('#li_saupja').hide();
			$('#li_saupja_sub').hide();
		}
	}
</script>
<!-- JavaScript -->
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
