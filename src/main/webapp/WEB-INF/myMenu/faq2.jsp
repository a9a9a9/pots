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
						<a href="${root}index?formpath=faq2" class="active">파티문의</a>
						<a href="${root}index?formpath=faq3" >회원가입 및 정보</a>
						<a href="${root}index?formpath=faq4" >입출금 및 환불</a>
					</div>
					<div class="accordion">
						<ul>
						<li>
							<div class="select">
								<a data-toggle="collapse" data-parent="#faq_accordion" href="#faq_collapse1" class="subject collapsed">
									참여한 파티의 서비스는 어떻게 이용하나요?	<span class="plus"></span>
								</a>
								<div id="faq_collapse1" class="panel-collapse collapse">
									<div class="article"><p>결제 완료 후 알림톡이나 SMS문자 메세지로 참여 정보를 안내해 드립니다.</p>
										<p>또한 벗츠 웹사이트 [내 파티보기]를 통해서 서비스 이용시 필요한 필수 정보 및 파티장 문의처를 확인 하실 수 있습니다.</p>
										<p> <br></p>
										<p>그룹 등록형(유튜브프리미엄, Office356 등) 모집은 파티 참여 후 파티장의 초대 과정을 거쳐 진행되며,</p>
										<p>참여자님께서 최종적으로 초대에 수락을 하셔야 서비스 이용이 가능합니다.</p>
										<p> <br></p>
										<p>파티 참여에 어려움이 있는 경우 파티장에게 연락을 통하여 해결이 가능합니다.</p>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="select">
								<a data-toggle="collapse" data-parent="#faq_accordion" href="#faq_collapse2" class="subject collapsed">
									파티 모집은 어떻게 진행하나요?	<span class="plus"></span>
								</a>
								<div id="faq_collapse2" class="panel-collapse collapse">
									<div class="article"><p>파티모집은 리스트에 노출된 [파티 만들기] 버튼을 통해 진행 가능합니다.</p>
										<p> <br></p>
										<p>첫 파티모집인 경우 파트너 가입이 필요합니다.</p>
										<p> <br></p>
										<p>개인판매자</p>
										<p>1. 카테고리별 월 1회 등록이 가능합니다.</p>
										<p>2. 별도의 공지가 있기 전까지는 수수료 0%로 모집 가능합니다.</p>
										<p>3. 리스트 상위 노출을 지원 합니다. (추 후 업데이트 이 후 적용될 예정입니다.)</p>
										<p><br /></p>
										<p>전문판매자</p>
										<p>1. 카테고리별 일 3회 등록이 가능합니다.</p>
										<p>2. 수수료는 10%로 진행됩니다. </p>
										<p>(추 후 등급제 업데이트가 진행되면 등급에 따라 수수료가 변동 될 수 있습니다. ex. 등급이 좋을 경우 하향 조정, 나쁠 경우 상향 조정)</p>
										<p><br /></p>
										<p>만드는 방법에 대한 자세한 내용은 해당 URL에 접속하셔서 [파티모집 하기] 탭을 선택하시면 확인 가능합니다.</p>
										<p> <br></p>
										<p>※ 전문판매자와 일반판매자 전환은 1:1문의 및 벗츠 채널을 통하여 변경 요청 하실 수 있습니다.</p>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="select">
								<a data-toggle="collapse" data-parent="#faq_accordion" href="#faq_collapse3" class="subject collapsed">
									참여한 파티에 대한 문의는 어떻게 해야 하나요?	<span class="plus"></span>
								</a>
								<div id="faq_collapse3" class="panel-collapse collapse">
									<div class="article">파티 참여 즉시 [내 파티보기]에서 해당 파티에 대한 정보를 확인 하실 수 있습니다.
										<p><br> </p>
										<p>내 파티 상세페이지에서는</p>
										<p>파티장 문의처 / 서비스 로그인 정보 / 진행 기간 등의 정보를 확인 하실 수 있습니다.</p>
										<p>(서비스에 따라서 제공되는 정보가 다를 수 있습니다)</p>
										<p><br> </p>
										<p>해당 정보에서 원하는 정보를 확인 하기 어려운 경우 파티장 문의처를 통하거나</p>
										<p>상세페이지 하단의 벗츠Talk를 통하여 문의 진행이 가능합니다.</p>
										<p><br> </p>
										<p>※ 벗츠Talk 기능은 2021년 2월 이후 제공 될 예정입니다.</p>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="select">
								<a data-toggle="collapse" data-parent="#faq_accordion" href="#faq_collapse4" class="subject collapsed">
									참여한 파티의 서비스를 이용 할 수 없는데 어떻게 하나요?	<span class="plus"></span>
								</a>
								<div id="faq_collapse4" class="panel-collapse collapse">
									<div class="article"><p>파티장의 서비스 관리 미숙이나 부실로 인하여 이용이 중단되거나 접속이 불가한 경우</p>
										<p>확인 즉시 파티장에게 문의 진행하여 주세요.</p>
										<p><br> </p>
										<p>파티장 문의는 해당 파티의 상세페이지에서 확인 가능합니다.</p>
										<p>파티장 문의처나 하단에 벗츠Talk를 통하여 문제해결 요청이 가능합니다.</p>
										<p><br> </p>
										<p>문제해결 요청 이후 24시간 내에 응답이 없거나 문제가 해결되지 않은 경우 벗츠에서 환불신청이 가능하며</p>
										<p>벗츠에서 내용 확인 후 사용하지 못한 기간에 대해서 100% 환불을 진행해 드립니다.</p>
										<p><br> </p>
										<p><a href="#" onclick="return false;" target="_blank" rel="noreferrer noopener"><span style="color:#0080ff;">환불 절차 안내</span></a></p>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="select">
								<a data-toggle="collapse" data-parent="#faq_accordion" href="#faq_collapse5" class="subject collapsed">
									참여한 파티의 서비스가 화질이 안좋거나 자주 끊깁니다.	<span class="plus"></span>
								</a>
								<div id="faq_collapse5" class="panel-collapse collapse">
									<div class="article"><p>진행하고 있는 서비스에서 이용 중인 요금제를 확인하거나 </p>
										<p>파티장에게 요금제 확인을 요청 하실 수 있습니다.</p>
										<p><br /></p>
										<p>참여 하실 때 안내 된 프리미엄 요금제로 확인 된다면 </p>
										<p>본인이 사용중인 네트워크 환경, 디바이스 환경, 프로그램 환경 등을 확인하실 것을 권해 드립니다.</p>
										<p> <br></p>
										<p>또한 해당 서비스 업체의 서버 문제로도 끊기는 현상이 나타 날 수 있으어 해당 업체에 직접 문의하시거나</p>
										<p>오류발생 시 확인 가능한 오류번호로 문제검색이 가능합니다.</p>
										<p> <br></p>
										<p>진단1</p>
										<p>사용중인 서비스가 시청 중 불규칙 적으로 끊기는 경우</p>
										<p>사용하는 서비스 외에도 다른 고화질 동영상 서비스가 자주 끊기는 경우</p>
										<p>→ 네트워크환경이 의심되며 인터넷 속도 점검이나 상향이 필요할 수 있습니다.</p>
										<p> <br></p>
										<p>진단2</p>
										<p>사용중인 서비스가 특정 구간이나 특정 패턴에 의해서 끊기는 경우</p>
										<p>→ 프로그램 환경오류로 의심되며 프로그램 삭제 후 재설치</p>
										<p>→ 사용중인 서비스 업체를 통해 문의하거나 오류 시 안내된 오류 번호로 오류내용 검색</p>
										<p> <br></p>
										<p>진단3</p>
										<p>프로그램 사용 중 불규칙적으로 프로그램 오류가 나서 프로그램이 종료되는 경우</p>
										<p>→ 프로그램 환경 오류로 의심되며 프로그램 삭제 후 재설치</p>
										<p>→ 디바이스 환경(스펙 및 최적화)의 문제로 의심되며 다른 디바이스로 재행</p>
										<p><br> </p>
										<p>진단 결과에 따라서 해당 업체에 문의를 권해 드립니다.</p>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="select">
								<a data-toggle="collapse" data-parent="#faq_accordion" href="#faq_collapse6" class="subject collapsed">
									파티에 참여한 파티원과 연락이 필요한 경우 어떻게 연락하나요?<span class="plus"></span>
								</a>
								<div id="faq_collapse6" class="panel-collapse collapse">
									<div class="article"><p>벗츠에서는 참여자(파티원)들의 개인 연락처를 파티장에게 제공하지 않습니다.</p>
										<p><br> </p>
										<p>다만 해당 파티의 파티 상세페이지에 참여한 파티원을 클릭해서 '요청보내기' 또는</p>
										<p>하단에 벗츠 TALK '무엇이든 물어 보이소'에서 참여한 파티원에게 메시지를 작성 및 알림톡을로 내용 전달 가능합니다.</p>
										<p><br> </p>
										<p>또한 벗츠에서는 파티 모집 시 파티원들의 연락처 및 개인정보를 수집하는 행위를 일체 금하고 있으며,</p>
										<p>위반 시 해당 계정에 사전 통보 없이 제한 조치를 진행할 수 있습니다.</p>
										<p><br> </p>
										<p>부득이 하게 파티원들과 연락이 필요한 경우 벗츠 '채널톡'을 통하여 문의남겨 주시면 도와 드립니다.</p>
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