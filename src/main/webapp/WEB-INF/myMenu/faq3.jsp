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
						<a href="${root}index?formpath=faq3" class="active">회원가입 및 정보</a>
						<a href="${root}index?formpath=faq4" >입출금 및 환불</a>
					</div>
						<div class="accordion">
							<ul>
							<li>
								<div class="select">
									<a data-toggle="collapse" data-parent="#faq_accordion" href="#faq_collapse1" class="subject collapsed">
										회원정보(닉네임, 비밀번호, 연락처, 이메일) 변경은 어디서 하나요?<span class="plus"></span>
									</a>
									<div id="faq_collapse1" class="panel-collapse collapse">
										<div class="article"><p>벗츠 웹사이트 접속 후 [마이페이지] → [정보수정] 의 경로를 통해 회원정보 변경 페이지로 입장 하실 수 있습니다.</p>
											<p><br> </p>
											<p>정보변경 페이지에 입장하셔서</p>
											<p>비밀번호, 연락처, 이메일 등 회원정보 수정이 가능합니다.</p>
											<p><br> </p>
											<p>- 연락처는 반드시 사용중인 번호를 입력해야 파티 참여정보를 전달 받을 수 있습니다.</p>
											<p>- 닉네임은 부정사용 방지를 위하여 1일 1회로 변경을 제한하고 있습니다.</p>
										</div>
									</div>
								</div>
							</li>
							<li>
								<div class="select">
									<a data-toggle="collapse" data-parent="#faq_accordion" href="#faq_collapse2" class="subject collapsed">
										오류로 인하여 회원가입이 진행 되지 않습니다.<span class="plus"></span>
									</a>
									<div id="faq_collapse2" class="panel-collapse collapse">
										<div class="article"><p>알 수 없는 이유로 인하여 회원가입이 진행되지 않는 경우</p>
											<p>채널Talk을 통하여 문의 주시면 회원가입 진행 도와 드리겠습니다.</p>
											<p><br> </p>
											<p>
											   <a href="https://pf.kakao.com/_xnSxgxdxb/chat?api_ver=1.1&amp;kakao_agent=sdk%2F1.39.10%20os%2Fjavascript%20sdk_type%2Fjavascript%20lang%2Fko-KR%20device%2FWin32%20origin%2Fhttps%253A%252F%252Fbuts.co.kr&amp;app_key=2cb912e1f64b0e57fd1bbcc9af1e964c&amp;referer=https%3A%2F%2Fbuts.co.kr%2Fshop%2Fmypage.php" target="_blank" rel="nofollow noreferrer noopener"><span style="color:#0080ff;">회원 가입문의 바로가기</span></a>
											</p>
											<p><br> </p>
											<p>※ 과거 부정사용 이력이 있는 경우 가입이 제한 될 수 있습니다.</p>
											<p>※ 벗츠는 실명인증으로 인하여 1인 1계정만 허용 하고 있습니다.</p>
										</div>
									</div>
								</div>
							</li>
							<li>
								<div class="select">
									<a data-toggle="collapse" data-parent="#faq_accordion" href="#faq_collapse3" class="subject collapsed">
										회원 탈퇴는 어떻게 하나요?	<span class="plus"></span>
									</a>
									<div id="faq_collapse3" class="panel-collapse collapse">
										<div class="article">
											<p>벗츠 웹사이트 [마이페이지]에 접속하여 [회원탈퇴] 버튼을 통해 탈퇴 진행이 가능합니다.</p>
											<p><br> </p>
											<p>모집 중인 파티가 있는 경우 모집이 완료되기 전까지 탈퇴가 불가능합니다.</p>
											<p>파티에 참여 중인 상태에서 탈퇴를 진행하는 경우</p>
											<p><br> </p>
											<p>회원 탈퇴 시 유의사항</p>
											<p>1. 참여중인 파티가 있는 경우 탈퇴 이 후 발생하는 파티의 문제에 대해 보호받지 못하며, 책임지지 않습니다.</p>
											<p>2. 벗츠에서 제공 된 포인트는 모두 소멸됩니다.</p>
											<p>3. 경고 누적이나 부정 사용을 지우기 위한 탈퇴는 재가입이 제한 될 수 있습니다.</p>
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