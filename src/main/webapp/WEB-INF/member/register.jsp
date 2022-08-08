<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url var="root" value="/" />
<script>
	var req;
	function isExistId(){
		req = new XMLHttpRequest();
		req.onreadystatechange = printMsg;
		req.open('post', 'isExistId');
		req.send(document.getElementById('id').value);
	}
</script>

<body class="responsive is-pc">
	<div class="wrap wrapper  ko">
		<div class="body">
			<div class="width-container" style="height: auto;">
				<c:if test="${not empty msg }">
						<script>
							alert("${msg}");
						</script>
				</c:if>
				<form class="form-horizontal register-form" id="fregisterform" name="fregisterform" action="memberProc" method="post" enctype="multipart/form-data" autocomplete="off">
					<div class="mw-800 form-signup mg-top-minus">
						<div class="h3">아이디/비밀번호</div>
						<div class="form-round signup">
							<ul class="form-list">
							<li>
								<span class="subject">ㆍ 아이디(이메일)</span>
								<input type="text" name="id" value="" id="id" required  placeholder="이메일주소" size="70" maxlength="100">
								<input type="button" id="win_hp_cert" class="button round button-purple phone" value="중복 확인" onclick="isExistId()">
							</li>
							<li>
								<span class="subject">ㆍ 비밀번호</span>
								<input type="password" name="pw" id="pw" required class="form-control input-sm" placeholder="비밀번호" minlength="3" maxlength="20">
							</li>
							<li>
								<span class="subject">ㆍ 비밀번호 확인</span>
								<input type="password" name="pwConfirm" id="pwConfirm" required class="form-control input-sm" placeholder="비밀번호 확인" minlength="3" maxlength="20">
							</li>
							</ul>
						</div>
						<div class="h3"><span class="text-purple">내 정보</span> 입력</div>
						<div class="form-round signup">
							<ul class="form-list">
							<li>
								<span class="subject">ㆍ 이름</span>
								<input type="text" id="name" name="name" value="" required  placeholder="이름" size="10">
							</li>
							<li>
								<span class="subject">ㆍ 닉네임</span>
								<input type="text" name="nick" value="" id="nick" required placeholder="닉네임" size="10" maxlength="20">
								<span class="lightgrey inline-break">공백없이 한글, 영문, 숫자만 입력 가능</span>
							</li>
							<li>
								<span class="subject">ㆍ 휴대폰 번호</span>
								<input type="text" name="tel" value="" id="tel"  required placeholder="휴대폰 번호" maxlength="20">
							</li>
							</ul>
						</div>
						<div class="h3"><span class="text-purple">기타</span> 입력</div>
						<div class="form-round signup">
							<ul class="form-list">
							<!-- <li>
								<span class="subject">ㆍ 프로필 사진</span>
								<div class="input-file">
									<label class="button round border button-purple" for="reg_mb_img">파일 선택</label>
									<input type="file" name="profile" id="profile" />
									<input class="file-name" value="선택된 파일 없음" disabled="disabled" />
								</div>
								<div class="lightgrey break">이미지는 60px X 60px 사이즈에 최적화 / gif, jpg, png파일만 가능하며 용량 5MB 이하만 등록됩니다.</div>
							</li> -->
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