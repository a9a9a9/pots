<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script>
// 	var result = "${msgs}";
// 	if(result === "존재하지 않는 회원입니다."){
// 		alert(result);
// 	}else if(result === "인증 완료"){
// 		alert("인증 되었습니다.");
// 	}else if(result === "인증 실패"){
// 		alert("자동등록방지 숫자가 틀렸습니다.");
// 	}

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

		<c:if test="${not empty msg }">
			<script>
				alert("${msgs}");
			</script>
		</c:if>
<body class="responsive is-pc">
	<div class="wrap wrapper  ko">
		<div class="body">
			<div class="width-container" style="height: auto;">
				<form class="form-horizontal register-form" id="fregisterform" name="fregisterform" action="PassProc" method="post" enctype="multipart/form-data" autocomplete="off">
					<div class="mw-800 form-signup mg-top-minus">	
						
					
						<div class="h3"><span class="text-purple">아이디</span> / <span class="text-purple">비밀번호</span> 입력</div>
						<div class="form-round signup">
							<ul class="form-list">
							<li>
								<span class="subject">ㆍ 아이디(이메일)</span>
								<input type="text" name="id"id="id" value="${id }" readonly  placeholder="이메일주소" size="70" maxlength="100">
							</li>
							<li>
								<span class="subject">ㆍ 새 비밀번호</span>
								<input type="password" name="pw" id="pw" required class="form-control input-sm" onkeyup="pwCheck()" placeholder="비밀번호" minlength="3" maxlength="20">
							</li>
							<li>
								<span class="subject">ㆍ 새 비밀번호 확인</span>
								<input type="password" name="pwConfirm" id="pwConfirm" onkeyup="pwCheck()" required class="form-control input-sm" placeholder="비밀번호 확인" minlength="3" maxlength="20" style="display: inline;">
								<font color="#84cdcf" id="pwCheck" style="margin-left:5px;"></font>
							</li>
							</ul>
						</div>
						<div class="button-align center">
							<a href="${root}index?formpath=main" class="button">취소</a>
							<button type="submit" id="btn_submit" class="button button-purple" accesskey="s">변경 완료</button>
						</div>
					</div>
					
				</form>
			</div>
		</div>
	</div> 
</body>