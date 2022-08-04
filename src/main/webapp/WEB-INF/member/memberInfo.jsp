<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url var="root" value="/" />

<body class="responsive is-pc">
	<div class="wrap wrapper  ko">
		<div class="body" >
			<div class="width-container">
			
				<!-- [[ my page ]] -->
				<div class="title-wrap mg-top-minus">
					<div class="title">
						<span class="text-purple">MY</span> 프로필
					</div>
				</div>
				
				<div class="form-pannel form-half left form-profile">
					<div class="title">나의 프로필</div>
					<div class="pd-left">
						<div class="picture">
							<div class="image">
								<img src="/img/icon-myimg.png" alt="" />	
							</div>
							<a href="#" class="button mini border win_memo">사진등록</a>
						</div>
						<div class="profile">
							<span class="name"><a href="javascript:;" onClick="showSideView(this, 'cucksdn', 'bcu0709', '', '');"><span class="member"> bcu0709</span></a></span>
							<div class="right">
								<span class="text-purple">신용 개인등급</span><span style="color:#888888;">(일반 등급)</span>
							</div>
						</div>
						<div class="gage"></div>
						<div class="point">
							ㆍ 보유포인트
							<div class="right">
								<span class="icon"><img src="/img/icon-coin-star-big.png" alt="" /></span>
								<span class="Rajdhani">530</span>
								<a href="${root}index?formpath=myPointCharge" class="button mini button-purple">충전</a>
							</div>
						</div>
					</div>
				</div>
				
				<div class="form-pannel form-half">
					<div class="title">알림 정보</div>
					<div class="form-list form-list-clear">
						<ul>
							<li>
								<div class="subject">ㆍ 아이디</div>
								<span class="normal">cucksdn</span>
							</li>
							<li>
								<div class="subject">ㆍ 연락처</div>
								<span class="normal">010-2705-6891</span>
							</li>
							<li>
								<div class="subject">ㆍ 이메일</div>
								<span class="normal">bcu0709@naver.com</span>
							</li>
							<li>
								<div class="subject">ㆍ 가일일</div>
								<span class="normal">2022-07-28 20:13:23</span>
							</li>
						</ul>
					</div>
					
					<div class="text-right">
						<a href="${root}index?formpath=pwConfirm" class="button round button-purple">정보수정</a>
						<a href="#" class="button round border button-purple leave-me">탈퇴하기</a>
					</div>
				</div>
			</div>
		</div>
	</div> 
</body>