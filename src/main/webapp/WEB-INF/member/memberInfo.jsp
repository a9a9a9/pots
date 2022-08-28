<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url var="root" value="/" />
<c:if test="${empty sessionScope.id }">
	<script>
		location.href = 'index?formpath=login';
	</script>
</c:if>

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
								<img src="/img/profile${member.profile}.png" alt="" />	
							</div>
							<a href="javascript:void(0);" onclick="showProfile()" class="button mini border win_memo">사진변경</a>
						</div>
						<div class="profile">
							<span class="name"><a href="#" onclick="return false;"><span class="member"> ${member.nick}</span></a></span>
							
						</div>
						<div class="gage"></div>
						<div class="point">
							ㆍ 보유포인트
							<div class="right">
								<span class="icon"><img src="/img/icon-coin-star-big.png" alt="" /></span>
								<span class="Rajdhani">${member.point}</span>
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
								<span class="normal">${sessionScope.id}</span>
							</li>
							<li>
								<div class="subject">ㆍ 이름</div>
								<span class="normal">${member.name}</span>
							</li>
							<li>
								<div class="subject">ㆍ 연락처</div>
								<span class="normal">${member.tel}</span>
							</li>
							<li>
								<div class="subject">ㆍ 가일일</div>
								<span class="normal">${member.joined_date}</span>
							</li>
						</ul>
					</div>
					
					<div class="text-right">
						<a href="${root}index?formpath=updateCheck" class="button round button-purple">정보수정</a>
						<a href="${root}index?formpath=memberDelete" class="button round border button-purple leave-me">탈퇴하기</a>
					</div>
				</div>
			</div>
		</div>
	</div> 
</body>