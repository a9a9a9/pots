<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url var="root" value="/" />
<c:if test="${empty sessionScope.id }">
	<script>
		location.href = 'index?formpath=login';
	</script>
</c:if>
<script>
	var result = "${msg}";
	if(result === "비밀번호를 입력하세요."){
		alert(result);
	}
	function pwCheck(){
		var pw1 = document.getElementById('pw').value;
		var pw2 = document.getElementById('pwConfirm').value;
		var result = document.getElementById('pwCheck');
		if(pw1 == pw2){
			result.innerHTML = "비밀번호 일치"
		}else{
			result.innerHTML = "비밀번호 불일치"
		}
	}
</script>
<body class="responsive is-pc">
	<div class="wrap wrapper  ko">
		<div class="body">
			<div class="width-container" style="height: auto;">
			
				<!-- [[ update ]] -->
				<form class="form-horizontal register-form" id="fregisterform" name="fregisterform" action="updateProc" method="post" enctype="multipart/form-data" autocomplete="off">
					<div class="mw-800 form-signup mg-top-minus">
						<div class="h3"><span class="text-purple">아이디</span> / <span class="text-purple">비밀번호</span> 입력</div>
						<div class="form-round signup">
							<ul class="form-list">
							<li>
								<span class="subject">ㆍ 아이디</span>
								<input type="text" name="id" value="${sessionScope.id }" id="reg_mb_id"  readonly placeholder="아이디" minlength="3" maxlength="20">
							</li>
							<li>
								<span class="subject">ㆍ 변경할 비밀번호</span>
								<input type="password" name="pw" id="pw" required class="form-control input-sm" onkeyup="pwCheck()" placeholder="비밀번호" minlength="3" maxlength="20">
							</li>
							<li>
								<span class="subject">ㆍ 비밀번호 확인</span>
								<input type="password" name="pwConfirm" id="pwConfirm" onkeyup="pwCheck()" required class="form-control input-sm" placeholder="비밀번호 확인" minlength="3" maxlength="20" style="display: inline;">
								<font color="#7e69fe" id="pwCheck" style="margin-left:5px;"></font>
							</li>
							</ul>
						</div>
						<div class="h3"><span class="text-purple">내 정보</span> 입력</div>
						<div class="form-round signup">
							<ul class="form-list">
								<li>
									<span class="subject">ㆍ 이름</span>
									<input type="text" id="reg_mb_name" name="name" value="${member.name }"  placeholder="이름" size="10">
									<!-- <button type="button" id="win_hp_cert" class="button round button-purple phone">휴대폰 본인확인</button>
									[<strong>휴대폰 본인확인</strong> 및 <strong>성인인증</strong> 완료]
									<div class="lightgrey break"><span class="text-purple">[휴대폰 본인확인 완료]</span> 휴대폰 번호는 인증한 휴대폰 번호와 동일하게 자동 입력 됩니다.</div>
									<noscript>본인확인을 위해서는 자바스크립트 사용이 가능해야합니다.</noscript> -->
								</li>
								<li>
									<span class="subject">ㆍ 닉네임</span>
									<input type="text" name="nick" value="${member.nick}" id="reg_mb_nick" required placeholder="닉네임" size="10" maxlength="20">
									<!-- <span class="lightgrey inline-break">공백없이 한글, 영문, 숫자만 입력 가능 (닉네임은 월 30일에 1회 변경 가능합니다)</span> -->
								</li>
								<li>
									<span class="subject">ㆍ 휴대폰 번호</span>
									<input type="text" name="tel" value="${member.tel }" id="reg_mb_hp" required placeholder="휴대폰 번호" maxlength="20">
								</li>
							</ul>
						</div>
						<div class="h3"><span class="text-purple">기타</span> 입력</div>
						<div class="form-round signup">
							<ul class="form-list">
								<li>
								<span class="subject">ㆍ 프로필 사진</span>
								<div class="input-file" style="height: auto;">
									<!-- <a href="javascript:showProfile()" class="button round border button-purple">파일 선택</a> -->
									<div class="profile_select" style="margin-right: 20px; float: left;">
										<input type="image" src="/img/profile1.png" disabled="disabled"><br>
										<input type="radio" name="profile" id="profile" value="1" checked="checked" style="margin:5px 18px;" />
									</div>
									<div class="profile_select" style="margin-right: 20px; float: left;">
										<input type="image" src="/img/profile2.png" disabled="disabled"><br>
										<input type="radio" name="profile" id="profile" value="2" style="margin:5px 18px;" />
									</div>
								</div>
							</li>
								<li>
									<span class="subject">ㆍ 이메일 수신</span>
									<div class="input-check input-checkbox">
										<input type="checkbox" name="mb_mailling" value="1" id="reg_mb_mailling" checked >
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
							<a href="${root}index?formpath=main" class="button">취소</a>
							<button type="submit" id="btn_submit" class="button button-purple" accesskey="s">정보 수정</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div> 
</body>