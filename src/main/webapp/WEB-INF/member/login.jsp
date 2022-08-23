<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.security.SecureRandom" %>
<%@ page import="java.math.BigInteger" %>
<html>
<head>
<title>POTS 로그인</title>
</head>

<body>

	<div class="body">
		<div class="width-container">
			<div class="mw-400 form-pd form-login">
				<form class="form" role="form" name="flogin" action="loginProc"
					method="post">
					<div class="login-logo">
						<img
							src="https://buts.co.kr/thema/Buts/colorset/Basic/img/big-butslogo.png"
							alt="">
					</div>

					<c:if test="${not empty msg }">
						<script>
							alert("${msg}");
						</script>
					</c:if>

					<div class="login-input">
						<input type="text" name="id" maxlength="20"
							placeholder="아이디를 입력하세요">
					</div>
					<div class="login-input">
						<input type="password" name="pw"
							maxlength="20" placeholder="패스워드를 입력하세요">
					</div>
					<div class="login-option">
						<div class="input-check">
							<input type="checkbox" name="auto_login" id="login_auto_login" value="auto_login">
							<label for="login_auto_login">자동로그인</label>
						</div>
						<div class="right">
							<a href="${root }index?formpath=registerAgree" class="v-bar">회원가입</a>
							<a href="${root }index?formpath=findMy">아이디/비밀번호찾기</a>
						</div>
					</div>
					<button type="submit" class="form-button button button-purple">로그인</button>
					<div class="form-text">
						벗츠 회원이 아닌가요? <br> 첫가입 시 500포인트! <span class="text-purple">추천인
							등록 시 추가 500포인트!</span>
					</div>
				</form>

				<div class="form-sns-join sns-wrap">
<!-- 					<a href="https://nid.naver.com/oauth2.0/authorize? -->
<!-- 				            response_type=code& -->
<!-- 				            client_id=Tfs97zQRihtlD6y1o9wt& -->
<!-- 				            state=state = URLEncoder.encode(callBackUrl, 'UTF-8')& -->
<!-- 				            redirect_uri=http://localhost/naverRegister" -->
<!-- 						style="margin-top: 20px; width: 100%;" class="naver sns-naver" -->
<!-- 						title="네이버">  -->
<!-- 						<img src="https://buts.co.kr/thema/Buts/colorset/Basic/img/btn-sns-login-naver.png" -->
<!-- 						alt=""> 네이버 계정으로 로그인 하기 -->
<!-- 					</a>  -->
<%
    String clientId = "Tfs97zQRihtlD6y1o9wt";//애플리케이션 클라이언트 아이디값";
    String redirectURI = URLEncoder.encode("http://localhost/CallBack", "UTF-8");
    SecureRandom random = new SecureRandom();
    String state = new BigInteger(130, random).toString();
    String apiURL = "https://nid.naver.com/oauth2.0/authorize?response_type=code";
    apiURL += "&client_id=" + clientId;
    apiURL += "&redirect_uri=" + redirectURI;
    apiURL += "&state=" + state;
    session.setAttribute("state", state);
 %>
  <a href="<%=apiURL%>"><img src="http://buts.co.kr/thema/Buts/colorset/Basic/img/btn-sns-login-naver.png" alt=""/></a>
					
					<a href="https://kauth.kakao.com/oauth/authorize?
							client_id=0070664f6956225934aebb37c784f4ed&
							redirect_uri=http://localhost/kakaoRegister&
							response_type=code"
						style="margin-left: 0px; margin-top: 5px; width: 100%;"
						class="kakao sns-kakao" title="카카오"> 
						<img src="//k.kakaocdn.net/14/dn/btroDszwNrM/I6efHub1SN5KCJqLm1Ovx1/o.jpg"
						alt=" ">카카오 계정으로 로그인 하기
					</a>


				</div>

			</div>
		</div>
	</div>

</body>
</html>
