<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url var="root" value="/" />

<body class="responsive is-pc">
	<div class="wrap wrapper  ko">
		<div class="body">
			<div class="width-container" style="height: auto;">
				<div class="mw-800 faq">
					<div class="text-head center">
						<img src="/img/logo.png" class="text-logo" alt="" />
						<span class="text-purple">벗츠</span>에 대해 궁금하시다고요?
					</div>
					<p class="text-para center" style="max-width: 500px">벗츠는 사용자가 이용하고 있는 <span class="text-purple">공유형 구독 서비스</span>를 허용된 범위 안에서 경제적이고 <span class="text-purple">안전하게 모집 및 참여</span> 할 수 있도록 도와주는 서비스입니다.</p>
					<p class="text-para center">또한 기프트상품권, 이용권, 상품권 등의 <span class="text-purple">디지털 코드의 안전하고 편리한 거래</span>를 도와줍니다.</p>
					<div class="faq-tab">
						<a href="${root}index?formpath=faq1" >이용안내</a>
						<a href="${root}index?formpath=faq2" >파티문의</a>
						<a href="${root}index?formpath=faq3" >회원가입 및 정보</a>
						<a href="${root}index?formpath=faq4" class="active">입출금 및 환불</a>
					</div>
					<div class="accordion">
						<ul>
						<li>
							<div class="select">
								<a data-toggle="collapse" data-parent="#faq_accordion" href="#faq_collapse1" class="subject collapsed">
									결제를 진행 하였습니다. 입금확인은 언제 되나요?	<span class="plus"></span>
								</a>
								<div id="faq_collapse1" class="panel-collapse collapse">
									<div class="article">
										<p>벗츠에서는 계좌이체 방식과 카드결제 방식 모두 사용가능합니다.</p>
										<p>(2021년 02월 현재 365일 환불이 가능한 벗츠의 결제 특성상의 문제로 인하여 해당 정책이행이 가능한 카드결제 대행사와 협의 중에 있습니다)</p>
										<p><br> </p>
										<p>1. 카드결제인 경우 결제즉시 참여하신 서비스의 계정정보 확인이 가능합니다.</p>
										<p>(그룹 참여형 서비스인 경우 해당 서비스 이용을 위한 절차 진행이 가능합니다)</p>
										<p><br> </p>
										<p>2. 계좌이체 방식인 경우 확인에 최대 10분 정도가 소요됩니다.</p>
										<p>(계좌이체 시 시스템에 의해 자동 처리 됩니다)</p>
										<p><br> </p>
										<p>참여가 지연되거나 안되는 경우 다음과 같습니다.</p>
										<p>① 30분 이내에 미입금된 경우</p>
										<p>② 입금 금액이 다른 경우</p>
										<p>③ 입금자명이 입금 신청 시 작성한 내용과 다른 경우</p>
										<p><br> </p>
										<p>입금 확인 진행이 안된 경우 벗츠 채널Talk를 통하여 진행 요청 가능합니다.</p>
										<p><br> </p>
										<p>
										   <a href="#" onclick="return false;" target="_blank" rel="nofollow noreferrer noopener"><span style="color:#0080ff;">입금확인 요청하기</span></a>
										</p>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="select">
								<a data-toggle="collapse" data-parent="#faq_accordion" href="#faq_collapse2" class="subject collapsed">
									환불 조건 및 환불 절차 안내<span class="plus"></span>
								</a>
								<div id="faq_collapse2" class="panel-collapse collapse">
									<div class="article"><p>환불 조건 및 환불 절차 안내</p>
										<p><br> </p>
										<p>1. 100% 환불이 가능한 경우</p>
										<p><br> </p>
										<p>① 입금확인 지연</p>
										<p>- 입급 확인이 지연되여 참여가 이루어 지지 않은 경우</p>
										<p><br> </p>
										<p>② 서비스 이용 불가</p>
										<p>- 공유된 사용 정보로 정상적인 접근이 불가능한 경우 </p>
										<p>→ 파티장에게 문제해결 요청 후 24시간 내에 응답이 없거나 해결 되지 않은 경우</p>
										<p><br> </p>
										<p>③ 제한된 서비스 진행</p>
										<p>- 기기인증, 성인인증, 로그인 인증 등 파티장 권한으로만 인증 가능한 서비스에 대해서 방치한 경우</p>
										<p> → 파티장에게 인증 요청 후 48시간 내에 응답이 없거나 해결 되지 않은 경우</p>
										<p><br> </p>
										<p>④ 파티관리 미흡 및 방치</p>
										<p>- 다른 파티원의 귀책 사유나 서비스 업체의 정책 변경으로 인하여 이용에 치명적인 불편함을 겪는 경우</p>
										<p>→ 파티장에게 문제해결 요청 후 48시간 내에 응답이 없거나 해결 되지 않은 경우</p>
										<p>(치명적인 불편함이란 기술적으로 이용 불가한 수준의 불편함을 의미 합니다)</p>
										<p>(파티장의 직접적인 귀책 사유가 아니므로 48시간 이라는 다소 긴 시간이 책정 됨을 양해 부탁 드립니다)</p>
										<p><br> </p>
										<p>※ 위와 같은 기준에 해당 되는 경우 파티장의 의사와 무관하게 벗츠의 비용으로 우선 처리해 드리며 파티장과의 분쟁은 벗츠에서 진행합니다.</p>
										<p><br> </p>
										<p> ----------------------------------------------------------</p>
										<p><br> </p>
										<p>2. 파티장 및 관리자 판단에 의하여 환불이 진행 되는 경우</p>
										<p><br> </p>
										<p>① 내용 숙지를 잘못하여 결제한 상태지만 계정 정보가 이미 노출되어 버린 경우</p>
										<p>② 이용은 가능하지만 다른 파티원으로 인하여 불편함을 겪는 경우</p>
										<p>③ 기타</p>
										<p><br> </p>
										<p> ----------------------------------------------------------</p>
										<p><br> </p>
										<p>3. 환불이 불가한 경우</p>
										<p><br> </p>
										<p>① 서비스 사용 후 단순 변심에 의한 환불인 경우</p>
										<p>② 참여자 개인 환경(네트워크, 디바이스, 프로그램 오류, IP환경)으로 인하여 사용을 못하는 경우</p>
										<p>③ 이용중인 서비스 업체에서 점검이 진행되어 접속이 불가한 경우</p>
										<p><br> </p>
										<p> ----------------------------------------------------------</p>
										<p><br> </p>
										<p>
										   <span style="color:#0080ff;"><a href="#" onclick="return false;" target="_blank" rel="nofollow noreferrer noopener"><span style="color:#0080ff;">환불진행 바로가기</span></a></span>
										</p>
										<p>
										   <span style="color:#0080ff;"><a href="#" onclick="return false;" target="_blank" rel="nofollow noreferrer noopener"><span style="color:#0080ff;">벗츠에 분쟁해결 요청하기</span></a></span>
										</p>
										<p> </p>
										<p><span style="color:#000000;">※ 환불금액은 요청하신 날짜 기준으로 소급적용하여 남은 기간만큼 환불 가능합니다.</span></p>
										<p><br></p>
										<p><span style="color:#b5b5b5;"> </span></p>
										<p><span style="color:#b5b5b5;"> </span></p>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="select">
								<a data-toggle="collapse" data-parent="#faq_accordion" href="#faq_collapse3" class="subject collapsed">
									파티 모집 후 출금은 어떻게 하나요?<span class="plus"></span>
								</a>
								<div id="faq_collapse3" class="panel-collapse collapse">
									<div class="article"><p>파티원이 1명 이상 참여가 진행 된 경우 출금 신청 가능합니다.</p>
										<p><br> </p>
										<p>출금 신청은 [파티관리] → [출금관리] 에서 진행 하실 수 있습니다.</p>
										<p><br> </p>
										<p>입급 확인은 출금 신청 후 영업일 기준 24시간 정도 소요 됩니다.</p>
									</div>
								</div>
							</div>
						</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div> 
</body>