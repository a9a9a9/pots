<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script>
	var result = "${msg}";
	if(result === "중복 아이디 입니다."){
		alert(result);
	}else if(result === "아이디를 입력하세요."){
		alert(result);
	}else if(result === "비밀번호를 입력하세요."){
		alert(result);
	}else if(result === "중복 닉네임 입니다."){
		alert(result);
	}else if(result === "비밀번호가 일치하지 않습니다."){
		alert(result);
	}
	
	var req;
	function isExistId(){
		req = new XMLHttpRequest();
		req.onreadystatechange = printMsg1;
		req.open('post', 'isExistId');
		req.send(document.getElementById('id').value);
	}
	function isExistNick(){
		req = new XMLHttpRequest();
		req.onreadystatechange = printMsg2;
		req.open('post', 'isExistNick');
		req.send(document.getElementById('nick').value);
	}
	
	function printMsg1(){
		var msg1 = document.getElementById('msg1');
		msg1.innerHTML = req.responseText;
	}
	function printMsg2(){
		var msg2 = document.getElementById('msg2');
		msg2.innerHTML = req.responseText;
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
	
	function emailCheck(f){
		var msgChk = document.getElementById("msg1").innerText;
		console.log(msgChk);
		
		
		if(msgChk == "이메일 형식이 아닙니다."){
			alert("아이디를 확인하세요.");
			return false;
		}
		
		if(msgChk == ""){
			alert("아이디 중복확인은 필수입니다.");
			return false;
		}
	
		return true;
		
	}
	
	function telNum() {
		var tele = document.getElementById('tel').value;
		var regex = /[^0-9]/g;				// 숫자가 아닌 문자열을 선택하는 정규식
		var result = tele.replace(regex, "");
		document.getElementById('tel').value = result;
	}
	
</script>

<body class="responsive is-pc">
	<div class="wrap wrapper  ko">
		<div class="body">
			<div class="width-container" style="height: auto;">
				<form class="form-horizontal register-form" id="fregisterform" name="fregisterform" action="memberProc" onsubmit="return emailCheck(this)" method="post" enctype="multipart/form-data" autocomplete="off">
					<div class="mw-800 form-signup mg-top-minus">	
						
					
						<div class="h3"><span class="text-purple">아이디</span> / <span class="text-purple">비밀번호</span> 입력</div>
						<div class="form-round signup">
							<ul class="form-list">
							<li>
								<span class="subject">ㆍ 아이디(이메일)</span>
								<input type="text" name="id"id="id" required  placeholder="이메일주소" size="70" maxlength="100">
								<input type="button" id="win_hp_cert" class="button round button-purple phone" value="중복 확인" onclick="isExistId()">
								<font color="#84cdcf" id="msg1" style="margin-left:10px;">${msg1}</font>
							</li>
							<li>
								<span class="subject">ㆍ 비밀번호</span>
								<input type="password" name="pw" id="pw" required class="form-control input-sm" onkeyup="pwCheck()" placeholder="비밀번호" minlength="3" maxlength="20">
							</li>
							<li>
								<span class="subject">ㆍ 비밀번호 확인</span>
								<input type="password" name="pwConfirm" id="pwConfirm" onkeyup="pwCheck()" required class="form-control input-sm" placeholder="비밀번호 확인" minlength="3" maxlength="20" style="display: inline;">
								<font color="#84cdcf" id="pwCheck" style="margin-left:5px;"></font>
							</li>
							</ul>
						</div>
						
						<div class="h3"><span class="text-purple">내 정보</span> 입력</div>
						<div class="form-round signup">
							<ul class="form-list">
							<li>
								<span class="subject">ㆍ 이름</span>
								<input type="text" id="name" name="name" required  placeholder="이름" size="10">
							</li>
							<li>
								<span class="subject">ㆍ 닉네임</span>
								<input type="text" name="nick" value="" id="nick" required placeholder="닉네임" size="10" maxlength="20">
								<input type="button" id="win_hp_cert" class="button round button-purple phone" value="중복 확인" onclick="isExistNick()">
								<font color="#84cdcf" id="msg2" style="margin-left:10px;">${msg2}</font>
								<%-- <input type="button" id="win_hp_cert" class="button round button-purple phone" value="중복 확인" onclick="isExistNick()">
								<font color="#7e69fe" id="msg" style="margin-left:10px;">${msg}</font> --%>
								<!-- <span class="lightgrey inline-break">공백없이 한글, 영문, 숫자만 입력 가능</span> -->
							</li>
							<li>
								<span class="subject">ㆍ 휴대폰 번호</span>
								<input type="text" name="tel" value="" id="tel" onkeyup="telNum()"required placeholder="휴대폰 번호" maxlength="20">
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
									<div class="profile_select" style="margin-right: 20px; float: left;">
										<input type="image" src="/img/profile3.png" disabled="disabled"><br>
										<input type="radio" name="profile" id="profile" value="3" style="margin:5px 18px;" />
									</div>
									<div class="profile_select" style="margin-right: 20px; float: left;">
										<input type="image" src="/img/profile4.png" disabled="disabled"><br>
										<input type="radio" name="profile" id="profile" value="4" style="margin:5px 18px;" />
									</div>
								</div>
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
							</ul>
						</div>
						<div class="button-align center">
							<a href="${root}index?formpath=main" class="button">취소</a>
							<button type="submit" id="btn_submit" class="button button-purple" accesskey="s">회원 가입</button>
						</div>
					</div>
					
				</form>
			</div>
		</div>
	</div> 
</body>