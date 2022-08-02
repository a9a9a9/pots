<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- <link rel="stylesheet" type="text/css" href="/css/partyMyInfo.css">
-->
 <link rel="stylesheet" href="/css/partyMyInfo.css">
<meta charset="UTF-8">
<title>Buts</title>
</head>
<body>
<form class="form" role="form" name="fregister" id="fregister" action="https://buts.co.kr/shop/partner/register.update.php" onsubmit="return fregister_submit(this);" method="POST" enctype="multipart/form-data" autocomplete="off">
<div class="dialog" style="border-top: 2px solid #7e69fe">
	<div class="dialog-title"><span class="text-purple">파트너</span> 수정</div>
	<div class="dialog-body" style="padding-top: 30px; border-top: 1px solid #333">
					<input type="hidden" name="pt_partner" value="1">
			<input type="hidden" name="pt_marketer" value="0">
				<ul class="dialog-form">
			<li>
				<span class="subject">ㆍ 모집유형</span>
				<select name="pt_type" id="pt_type" required="" style="width: 100%; max-width: 232px" disabled="disabled" onchange="fn_type(this.form)" value="2">
					<option value="">파트너 유형을 선택해 주세요.</option>
											<option value="1">전문파티장</option>
																<option value="2" selected="">개인파티장</option>
									</select>
			</li>
			<li>
				<label>* 개인파티장은 수수료가 없습니다.(한달에 한번만 각 서비스 등록가능)</label>				
			</li>
			<li>
				<span class="subject">ㆍ 이름</span>
				<input type="text" name="pt_name" id="pt_name" placeholder="이름" style="width: 100%; max-width: 200px" disabled="disabled" value="" required="">
			</li>
			<li>
				<span class="subject">ㆍ 연락처</span>
				<input type="text" name="pt_hp" id="pt_hp" placeholder="연락처를 입력해 주세요." style="width: 100%; max-width: 200px" disabled="disabled" value="" required="">
			</li>
			<li id="li_saupja">
				<span class="subject">ㆍ 주민번호</span>
				<input type="text" name="pt_company_saupja" id="pt_company_saupja" style="width: 100%; max-width: 200px" placeholder="주민등록 번호입력" value="">
			</li>
						
			<li>
				<span class="subject">ㆍ 출금계좌</span>
				<select name="pt_bank_name" required="" style="width: 100%; max-width: 232px; margin-bottom: 2px;" value="">
					<option value="">은행을 선택해 주세요.</option>
						<option value="국민은행">국민은행</option>
						<option value="기업은행">기업은행</option>
						<option value="농협은행">농협은행</option>
						<option value="신한은행" selected="">신한은행</option>
						<option value="산업은행">산업은행</option>
						<option value="우리은행">우리은행</option>
						<option value="한국씨티은행">한국씨티은행</option>
						<option value="하나은행">하나은행</option>
						<option value="SC제일은행">SC제일은행</option>
						<option value="경남은행">경남은행</option>
						<option value="광주은행">광주은행</option>
						<option value="대구은행">대구은행</option>
						<option value="도이치은행">도이치은행</option>
						<option value="뱅크오브아메리카">뱅크오브아메리카</option>
						<option value="부산은행">부산은행</option>
						<option value="산림조합중앙회">산림조합중앙회</option>
						<option value="저축은행">저축은행</option>
						<option value="새마을금고중앙회">새마을금고중앙회</option>
						<option value="수협은행">수협은행</option>
						<option value="신협중앙회">신협중앙회</option>
						<option value="우체국">우체국</option>
						<option value="전북은행">전북은행</option>
						<option value="제주은행">제주은행</option>
						<option value="중국건설은행">중국건설은행</option>
						<option value="BNP파리바은행">BNP파리바은행</option>
						<option value="HSBC은행">HSBC은행</option>
						<option value="JP모간체이스은행">JP모간체이스은행</option>
						<option value="카카오뱅크">카카오뱅크</option>
						<option value="케이뱅크">케이뱅크</option>		
						<option value="토스뱅크">토스뱅크</option>				
						<option value="교보증권">교보증권</option>
						<option value="대신증권">대신증권</option>
						<option value="DB금융투자">DB금융투자</option>
						<option value="메이츠종합금융증권">메이츠종합금융증권</option>
						<option value="미래에센대우">미래에센대우</option>
						<option value="부국증권">부국증권</option>
						<option value="삼성증권">삼성증권</option>
						<option value="신영증권">신영증권</option>
						<option value="신한금융투자">신한금융투자</option>
						<option value="에스케이증권">에스케이증권</option>
						<option value="현대차증권">현대차증권</option>
						<option value="유안타증권">유안타증권</option>
						<option value="유진투자증권">유진투자증권</option>
						<option value="이베스트투자증권">이베스트투자증권</option>
						<option value="케이프투자증권">케이프투자증권</option>
						<option value="키움증권">키움증권</option>
						<option value="한국포스증권">한국포스증권</option>
						<option value="하나금융투자">하나금융투자</option>
						<option value="하이투자증권">하이투자증권</option>
						<option value="한국투자증권">한국투자증권</option>
						<option value="한화투자증권">한화투자증권</option>
						<option value="KB증권">KB증권</option>
						<option value="KTB투자증권">KTB투자증권</option>
						<option value="BNK투자증권">BNK투자증권</option>
						<option value="NH투자증권">NH투자증권</option>
				</select>
				<input type="text" name="pt_bank_account" id="pt_bank_account" style="width: 100%; max-width: 200px;" required="" placeholder="계좌번호를 입력해 주세요." value="">
			</li>
		</ul>
		<div class="dialog-caution">
			<ul>
				<li>파티(상품)관리 권한 및 관리 책임은 판매자에게 있습니다.</li>
				<br>
				<li>판매자 귀책사유로 분쟁이 발생된 경우 해결해야 할 책임이 있으며,<br>분쟁이 지속 되는 경우 벗츠정책에 따라 진행됩니다.</li>
				<br>
				<li>판매자는 파티모집 후 약속된 기간동안 파티를 유지 및 관리를 진행할 의무가 있으며,<br>해당 의무를 다하지 못함으로서써 발생된 이슈 및 분쟁에 대해서 해결 해야할 책임이 있습니다.</li>
				<br>
				<li>개인 파티장은 모집 시 판매 수수료가 없습니다.<br>(개인파티장은 한달에 한 서비스에 한번만 파티를 등록할수 있습니다.)<br></li>
				<br>
				<li>전문 파티장은 파티원 모집 시 10%의 판매 수수료가 발생되며, 출금시 차감되어 출금됩니다.<br>(수수료 10%에 대해서는 세금계산서가 발행 됩니다.)<br></li>
				<br>
				<li>출금 신청 시 입력 된 계좌로 출금되며, ‘벗츠’에서 인증 된 실명과 다를 경우 출금이 안됩니다.</li>
				<br>
				<li>벗츠는 통신판매 중개자이며, 통신판매 당사자가 아닙니다.</li>
			</ul>
		</div>
		<div class="input-check" style="margin-top: 10px">
			<input type="checkbox" name="agree" value="1" id="agree11">
			<label for="agree11">서비스 제공자의 가입약관과 상기 정보제공에 동의합니다.</label>
		</div>
	</div>
	<div class="dialog-buttons">
		<button type="submit" class="button small button-purple"> 정보수정</button>
	</div>
</div>
</form>
</body>
</html>