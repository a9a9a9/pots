<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url var="root" value="/" />

<body class="responsive is-pc">
	<div class="wrap wrapper  ko">
		<div class="body" >
			<div class="width-container" style="height: auto;">
			
				<!-- [[ 비밀번호 확인 ]] -->
				<form class="form" role="form" name="fmemberconfirm" action="${root}index?formpath=update" onsubmit="return fmemberconfirm_submit(this);" method="post">
				<input type="hidden" name="mb_id" value="cucksdn">
				<input type="hidden" name="w" value="u">
				<div class="mw-400 form-pd form-login">
					<div class="form-title center"><span class="text-purple">비밀번호</span> 확인</div>
					<div class="login-input">
						<input type="text" disabled value="cucksdn" />
					</div>
					<div class="login-input">
						<input type="password" name="mb_password" id="confirm_mb_password" required placeholder="패스워드를 입력하세요" size="15" maxLength="20">
					</div>
					<div class="form-text" style="letter-spacing: -1px">
						비밀번호를 입력해주세요.<br />
									<span class="text-purple">회원님의 정보를 안전하게 보호</span>하기 위해 비밀번호를 한번 더 확인합니다.
							</div>
					<button type="submit" id="btn_sumbit" class="form-button button button-purple">확인하기</button>
				</div>
				</form>
			</div>
		</div>
	</div>
</body>