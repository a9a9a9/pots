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
					<p class="text-para center" style="max-width: 500px">벗츠는 사용자가 이용하고 있는 <span class="text-purple">공유형 구독 서비스</span>를 허용된 범위 안에서 경제적이고 
						<span class="text-purple">안전하게 모집 및 참여</span> 할 수 있도록 도와주는 서비스입니다.</p>
					<p class="text-para center">또한 기프트상품권, 이용권, 상품권 등의 <span class="text-purple">디지털 코드의 안전하고 편리한 거래</span>를 도와줍니다.</p>
					<div class="faq-tab">
						<a href="${root}index?formpath=faq1"  class="active">이용안내</a>
						<a href="${root}index?formpath=faq2" >파티문의</a>
						<a href="${root}index?formpath=faq3" >회원가입 및 정보</a>
						<a href="${root}index?formpath=faq4" >입출금 및 환불</a>
					</div>
					<div class="accordion">
					<ul>
					<li>
						<div class="select">
							<a data-toggle="collapse" data-parent="#faq_accordion" href="#faq_collapse1" class="subject collapsed">
								벗츠에서 진행 중인 서비스에 참여하고 싶은데 절차가 어떻게 되나요?						<span class="plus"></span>
							</a>
							<div id="faq_collapse1" class="panel-collapse collapse">
								<div class="article"><span style="font-size:9pt;font-family:'맑은 고딕', 'malgun gothic';color:#000000;">벗츠(https://buts.co.kr) 홈페이지 내에서 참여 가능한 서비스를 확인 하실 수 있습니다.<br />
									해당 파티 중 선택하여 결제 하신 뒤 [내 파티보기] 페이지를 통해 참여하신 서비스의 참여정보(로그인 정보)를 확인 하실 수 있습니다.</span>
									<p><br /></p>
									<p><a href="#" onclick="return false;" target="_blank" title="참여방법" rel="nofollow noreferrer noopener"><span style="color:#0080ff;">참여방법 자세히 보기</span></a></p>
								</div>
							</div>
						</div>
					</li>
					<li>
						<div class="select">
							<a data-toggle="collapse" data-parent="#faq_accordion" href="#faq_collapse2" class="subject collapsed">
								결제 완료 하였습니다. 이 후 절차가 어떻게 되나요?	<span class="plus"></span>
							</a>
							<div id="faq_collapse2" class="panel-collapse collapse">
								<div class="article">
									<p>결제 완료 후 알림톡이나 SMS문자 메세지로 참여 정보를 안내해 드립니다.</p>
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
							<a data-toggle="collapse" data-parent="#faq_accordion" href="#faq_collapse3" class="subject collapsed">
								참여하고 싶은 서비스가 진행 중이지 않습니다. 언제 참여가 가능할까요?	<span class="plus"></span>
							</a>
							<div id="faq_collapse3" class="panel-collapse collapse">
								<div class="article">
									<p>벗츠에서는 참여 가능한 서비스를 파트너 가입자가 직접 올려서 진행하는 시스템입니다. </p>
									<p>목록에 없는 서비스의 경우 언제 제공 될지 특정 드릴 수 없는 부분 양해 부탁 드립니다.</p>
									<p> <br></p>
									<p>다만 2021년 2월에 원하는 카테고리의 서비스 파티가 생성되면 알림신청이 가능한 [대기방] 기능이 추가 예정입니다.</p>
									<p>해당 기능을 이용하시면 파티가 생성 될 때 알림톡을 받아 보실 수 있습니다. </p>
								</div>
							</div>
						</div>
					</li>
					<li>
						<div class="select">
							<a data-toggle="collapse" data-parent="#faq_accordion" href="#faq_collapse4" class="subject collapsed">
								참여한 파티의 서비스를 연장하여 사용하고 싶습니다.	<span class="plus"></span>
							</a>
							<div id="faq_collapse4" class="panel-collapse collapse">
								<div class="article">현재(2021.02.01)는 참여하신 파티에 대한 연장기능을 제공하고 있지 않습니다.
									<p> <br></p>
									<p>2021년 2월 이후 일반 파티와 연장가능한 파티를 구분하여 참여 가능한 시스템으로 개선이 진행되고 있습니다.</p>
									<p>연장 가능한 파티는 상세페이지 제목 앞에 [연장 가능 팟]이라는 말머리 확인이 가능합니다.</p>
									<p> <br></p>
									<p>연장 가능 파티에 참여하시면 파티 종료 7일 전에 파티장이 작성한 연장 내용에 따른 안내가 알림톡을 통해 전달 됩니다.</p>
									<p>해당 파티가 종료 전까지 연장 예약이 가능하며, 종료 후에는 공개모집으로 전환되기 때문에 참여가 어려워 질 수 있습니다.</p>
									<p> <br></p>
									<p>※ 파티장의 사정에 따라서 연장이 불가 할 수 있으며, 이러한 경우 종료 알림톡틍 받아 보실 수 있습니다.</p>
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