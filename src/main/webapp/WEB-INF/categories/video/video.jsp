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
					<a href="http://www.youtube.com/watch?v=U9q-iiHgWPk" class="recommand-thumb popup-youtube"><img src="https://img.youtube.com/vi/U9q-iiHgWPk/mqdefault.jpg" alt="" /></a>
					<a href="http://www.youtube.com/watch?v=jhDfERpCtxo" class="recommand-thumb popup-youtube"><img src="https://img.youtube.com/vi/jhDfERpCtxo/mqdefault.jpg" alt="" /></a>
					<a href="http://www.youtube.com/watch?v=6M3bnrPAEuQ" class="recommand-thumb popup-youtube"><img src="https://img.youtube.com/vi/6M3bnrPAEuQ/mqdefault.jpg" alt="" /></a>
					<a href="http://www.youtube.com/watch?v=5YATWse863c" class="recommand-thumb popup-youtube"><img src="https://img.youtube.com/vi/5YATWse863c/mqdefault.jpg" alt="" /></a>
				</div>
				
				<div class="title-wrap">
					<div class="title"><a href="${root}videoProc" class="text">영상</a></div>
					<div class="title-right"><a href="${root}partyCreate" class="button border round button-purple">파티 만들기</a></div>
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
						
						<c:otherwise>
							<div class="empty">
								<div class="icon"><img src="/img/icon-butsicon-big-glay.png" /></div>
								<h5>등록된 내용이 없습니다.</h5>
							</div>
						</c:otherwise>
						</c:choose>
					</c:forEach>
				</div>
				
					<div id="item_list-nav" class="item-nav"><a href="#"></a></div>
							<div class="item-more">
										<a href="#" title="더보기">
												더보기
								<span class="color"> 
									<span class="sound_only">더보기</span>
								</span>
							</a>
						</div>
					
				<div class="button-align right">
						<a href="${root}partyCreate" class="button small button-red">등록</a>
							<a href="${root}partyList" class="button small button-blue">관리</a>
						</div>
				
			</div>
		</div>
	</div>
</body>