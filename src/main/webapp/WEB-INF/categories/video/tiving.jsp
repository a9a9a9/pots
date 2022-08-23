<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url var="root" value="/" />

<body class="responsive is-pc">
	<div class="wrap wrapper  ko">
		<div class="body">
			<div class="width-container">
				<div id="sct_hhtml" style="background-color:#242424;"></div>
				
				<div class="title">벗츠 추천 영상</div>
				<div class="recommand-list">
					<a href="http://www.youtube.com/watch?v=wCqkyrIAK3k" class="recommand-thumb popup-youtube"><img src="https://img.youtube.com/vi/wCqkyrIAK3k/mqdefault.jpg" alt="" /></a>
					<a href="http://www.youtube.com/watch?v=rAz_2H1JH3c" class="recommand-thumb popup-youtube"><img src="https://img.youtube.com/vi/rAz_2H1JH3c/mqdefault.jpg" alt="" /></a>
					<a href="http://www.youtube.com/watch?v=Efau5YH8rOQ" class="recommand-thumb popup-youtube"><img src="https://img.youtube.com/vi/Efau5YH8rOQ/mqdefault.jpg" alt="" /></a>
					<a href="http://www.youtube.com/watch?v=49gpF_ZaD-I" class="recommand-thumb popup-youtube"><img src="https://img.youtube.com/vi/49gpF_ZaD-I/mqdefault.jpg" alt="" /></a>
				</div>
				
				<div class="title-wrap">
					<div class="title"><a href="${root}videoProc" class="text">영상</a><a href="${root}tivingProc" class="button border round button-white">#티빙</a></div>
					<c:if test="${sessionScope.partner eq 'true'}">
						<div class="title-right"><a href="${root}partyCreate" class="button border round button-purple">파티 만들기</a></div>
					</c:if>
				</div>
				<div class="item-list">
					<c:forEach var="list" items="${list}">
						<c:choose>
						<c:when test="${!empty list}">
							<c:if test="${list.party_available == '1'}">
								<div class="item-row">
									<div class="item-type">${list.party_subservice}</div>
									<div class="item-title">${list.party_title}</div>
									<div class="item-members">
										<c:forEach begin="1" end="${list.party_now_member}">
											<span class="item-member"><img src="/img/icon-butsicon-small.png" alt="" /></span>
										</c:forEach>
										<c:forEach begin="1" end="${list.party_member-list.party_now_member}">
											<span class="item-member"><img src="/img/icon-butsicon-small-glay.png" alt="" /></span>
										</c:forEach>
									</div>
									<div class="item-info">
										<div class="item-date">${list.party_end_form }<span class="pc-inline">까지</span>(<strong>${list.party_left_date }</strong>일)</div>
										<div class="item-price"><span class="Rajdhani">${list.party_total_charge }</span>원</div>
									</div>
									<a href="${root}index?formpath=partyMain?party_num=${list.party_num}" class="item-button"></a>
								</div>
							</c:if>
							<c:if test="${list.party_available == '0' }">
								<div class="item-row disabled">
								<div class="item-type">${list.party_subservice}</div>
								<div class="item-title">${list.party_title}</div>
								<div class="item-members">
									<span class="item-member ">
										<img src="/img/icon-butsicon-small-glay.png" alt="" />
						            </span>
										<span class="item-finish">모집종료</span></div>
									<div class="item-info">
										<div class="item-date">${list.party_end_form }<span class="pc-inline">까지</span>(<strong>${list.party_left_date }</strong>일)</div>
										<div class="item-price"><span class="Rajdhani">${list.party_total_charge }</span>원</div>
									</div>
								</div>
							</c:if>
						</c:when>
					</c:choose>
					</c:forEach>
					<c:choose>
						<c:when test="${empty list}">
							<div class="empty">
								<div class="icon"><img src="/img/icon-butsicon-big-glay.png" /></div>
								<h5>등록된 내용이 없습니다.</h5>
							</div>
						</c:when>
					</c:choose>
				</div>
				
				<div id="item_list-nav" class="item-nav"></div>
					<div class="item-more">
						<c:if test="${page != '마지막 페이지'}">
							<a href="${page}" title="더보기">더보기
								<span class="color"></span>
							</a>
						</c:if>
					</div>
					
				<c:if test="${sessionScope.partner eq 'true'}">
					<div class="button-align right">
						<a href="${root}partyCreate" class="button small button-red">등록</a>
						<a href="${root}partyList" class="button small button-blue">관리</a>
					</div>
				</c:if>
			</div>
		</div>
	</div>
</body>

<script>
	$(function(){
		var result = "${pageNo}";
		if(result === "2"){
			var location = document.querySelector("#item_list-nav").offsetTop - 500;
			window.scrollTo({top:location, behavior:'auto'});
		}
	});
</script>
