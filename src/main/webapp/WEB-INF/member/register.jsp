<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url var="root" value="/" />

<body class="responsive is-pc">
	<div class="wrap wrapper  ko">
		<div class="body">
			<div class="width-container" style="height: auto;">
				<form class="form-horizontal register-form" role="form" id="fregisterform" name="fregisterform" action="memberProc" onsubmit="return fregisterform_submit(this);" method="post" enctype="multipart/form-data" autocomplete="off">
				
					<div class="mw-800 form-signup mg-top-minus">
						<div class="h3">아이디/비밀번호</div>
						<div class="form-round signup">
							<ul class="form-list">
							<li>
								<span class="subject">ㆍ 아이디</span>
								<input type="text" name="id" value="" id="id" required  placeholder="아이디" minlength="3" maxlength="20">
								<span class="lightgrey inline-break">영문자, 숫자, _ 입력 가능, 최소 3글자 입력해주세요</span>
							</li>
							<li>
								<span class="subject">ㆍ 비밀번호</span>
								<input type="password" name="mb_password" id="reg_mb_password" required class="form-control input-sm" placeholder="비밀번호" minlength="3" maxlength="20">
							</li>
							<li>
								<span class="subject">ㆍ 비밀번호 확인</span>
								<input type="password" name="mb_password_re" id="reg_mb_password_re" required class="form-control input-sm" placeholder="비밀번호 확인" minlength="3" maxlength="20">
							</li>
							</ul>
						</div>
						<div class="h3"><span class="text-purple">내 정보</span> 입력</div>
						<div class="form-round signup">
							<ul class="form-list">
							<li>
								<span class="subject">ㆍ 이름</span>
								<input type="text" id="reg_mb_name" name="mb_name" value="" required  placeholder="이름" size="10">
								<button type="button" id="win_hp_cert" class="button round button-purple phone">휴대폰 본인확인</button>
								<div class="lightgrey break"><span class="text-purple">[휴대폰 본인확인 완료]</span> 휴대폰 번호는 인증한 휴대폰 번호와 동일하게 자동 입력 됩니다.</div>
									<noscript>본인확인을 위해서는 자바스크립트 사용이 가능해야합니다.</noscript>
							</li>
							<li>
								<span class="subject">ㆍ 닉네임</span>
								<input type="hidden" name="mb_nick_default" value="">
								<input type="text" name="mb_nick" value="" id="reg_mb_nick" required placeholder="닉네임" size="10" maxlength="20">
								<span class="lightgrey inline-break">공백없이 한글, 영문, 숫자만 입력 가능 (닉네임은 월 30일에 1회 변경 가능합니다)</span>
							</li>
							<li>
								<span class="subject">ㆍ 이메일</span>
								<input type="hidden" name="old_email" value="">
								<input type="text" name="mb_email" value="" id="reg_mb_email" required placeholder="이메일" size="70" maxlength="100">
							</li>
							<li>
								<span class="subject">ㆍ 휴대폰 번호</span>
								<input type="text" name="mb_hp" value="" id="reg_mb_hp"  required placeholder="휴대폰 번호" maxlength="20">
								<input type="hidden" name="old_mb_hp" value="">
							</li>
							</ul>
						</div>
						<div class="h3"><span class="text-purple">기타</span> 입력</div>
						<div class="form-round signup">
							<ul class="form-list">
							<li>
								<span class="subject">ㆍ 프로필 사진</span>
								<div class="input-file">
									<label class="button round border button-purple" for="reg_mb_img">파일 선택</label>
									<input type="file" name="mb_img" id="reg_mb_img" onchange="$('.file-name').val(window.FileReader ? $(this)[0].files[0].name : $(this).val().split('/').pop().split('\\').pop());" />
									<input class="file-name" value="선택된 파일 없음" disabled="disabled" />
								</div>
								<div class="lightgrey break">이미지는 60px X 60px 사이즈에 최적화 / gif, jpg, png파일만 가능하며 용량 5MB 이하만 등록됩니다.</div>
							</li>
							<li>
								<span class="subject">ㆍ 이메일 수신</span>
								<div class="input-check input-checkbox">
									<input type="checkbox" name="mb_mailling" value="1" id="reg_mb_mailling" checked>
									<label for="reg_mb_mailling">이메일로 정보를 받겠습니다.</label>
								</div>
							</li>
							<li>
								<span class="subject">ㆍ SMS 수신</span>
								<div class="input-check input-checkbox">
									<input type="checkbox" name="mb_sms" value="1" id="reg_mb_sms" checked />
									<label for="reg_mb_sms">휴대폰으로 정보를 받겠습니다.</label>
								</div>
							</li>
							<li>
								<span class="subject">ㆍ 추천인 아이디</span>
								<input type="text" name="mb_recommend" id="reg_mb_recommend" placeholder="추천인 아이디" />
								<span class="lightgrey inline-break">추천인 ID를 적어주시면 500P가 지급되며, 추천 받은사람도 500P가 지급됩니다.</span>
							</li>
							</ul>
						</div>
						<div class="button-align center">
							<a href="${root}index?formpath=home" class="button">취소</a>
							<button type="submit" id="btn_submit" class="button button-purple" accesskey="s">회원 가입</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div> 
</body>