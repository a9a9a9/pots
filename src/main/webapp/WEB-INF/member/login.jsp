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
							src="/img/login_logo.png"
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
<!-- 						<div class="input-check"> -->
<!-- 							<input type="checkbox" name="auto_login" id="login_auto_login" value="auto_login"> -->
<!-- 							<label for="login_auto_login">자동로그인</label> -->
<!-- 						</div> -->
						<div class="right">
							<a href="${root }index?formpath=registerAgree" class="v-bar">회원가입</a>
							<a href="${root }index?formpath=findMy">비밀번호찾기</a>
						</div>
						<br>
					</div>
					<button type="submit" class="form-button button button-purple">로그인</button>
					<div class="form-text">
						팟츠 회원이 아닌가요? <span class="text-purple">첫가입 시 500포인트!</span>
					</div>
				</form>

				<div class="form-sns-join sns-wrap" style="margin-top: 30px;">
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
<script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script>
         
      
                                 <!-- 네이버아이디로로그인 버튼 노출 영역 --> 
                        <a id="naverIdLogin" class="btn_start btn_naver" style="padding: 20px; display: contents;">
                        <span><i class="icon-ic_login_naver" ></i>네이버로 로그인</span></a>
                        
                                 <!-- //네이버 아이디로 로그인 버튼 노출 영역 -->
                                  
                                 <!-- 네이버 아이디로 로그인 초기화 Script -->
                                 <script type="text/javascript">
                                     var naverLogin = new naver.LoginWithNaverId(
                                         {
                                             //클라이언트 id와 콜백 url (결과페이지)
                                             clientId: "Tfs97zQRihtlD6y1o9wt",
                                             callbackUrl: "http://localhost/CallBack",
                                             isPopup: false, /* 팝업을 통한 연동처리 여부 */
                                             loginButton: {color: "green", type:3, height: 45} /* 로그인 버튼의 타입을 지정 */
                                         }
                                     );
                                     
                                     /* 설정정보를 초기화하고 연동을 준비 */
                                     naverLogin.init();
//                                      const handleClick = () => {
//                                          naverRef.current.children[0].click();
//                                      }
//                                      return (
//                                     	        <>
//                                     	            <div ref={naverRef} id="naverIdLogin"></div>
//                                     	            <button onClick={handleClick} className={styles.naver} >
//                                     	           <img src="https://buts.co.kr/thema/Buts/colorset/Basic/img/btn-sns-login-naver.png"
//                                     	            alt=""> 네이버 계정으로 로그인 하기
//                                     	            </button>
//                                     	        </>
//                                     	    )
                                     
                                 </script> 
<!-- 						<a href="https://kauth.kakao.com/oauth/authorize? -->
<!-- 	 							client_id=0070664f6956225934aebb37c784f4ed&  -->
<!-- 								redirect_uri=http://localhost/kakaoRegister&  -->
<!-- 								response_type=code" -->
<!-- 						style="margin-left: 0px; margin-top: 5px; width: 100%; display: inline;" -->
<!-- 						class="kakao sns-kakao" title="카카오">  -->
					<a href="https://kauth.kakao.com/oauth/authorize?
							client_id=0070664f6956225934aebb37c784f4ed&
							redirect_uri=http://localhost/kakaoRegister&
							response_type=code"
						style="margin-left: 0px; margin-top: 5px; width: 100%; display: inline;"
						class="kakao sns-kakao" title="카카오"> 
						<img src="//k.kakaocdn.net/14/dn/btroDszwNrM/I6efHub1SN5KCJqLm1Ovx1/o.jpg"
						alt=" " style="float: left; height: 46px; border: 1px solid; border-color: #E5D85C; border-radius: 5px; margin-left: 5px; margin-right: 17px;">
						</a>


				</div>

			</div>
		</div>
	</div>

</body>
</html>
