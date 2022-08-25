<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url var="root" value="/" />

<script src="https://buts.co.kr/thema/Buts/assets/js/buts.main.js"></script>
<body class="responsive is-pc">

<div class="wrap wrapper  ko">
<div class="body">
			<div class="width-container" style="height: auto;">
<div class="title-wrap">	
	<br>	<br>
	<a  href="https://buts.co.kr/bbs/board.php?bo_table=event&wr_id=3432&sca=%EC%A7%84%ED%96%89%EC%A4%91" ><img img src="https://buts.co.kr/thema/Buts/colorset/Basic/img/20220804_oder_main_banner.png" alt="" /></a>	
</div>
<div class="title-wrap">
	<div class="title">벗츠 <span class="text-purple">파티</span></div>
	<div class="title-right"><a href="https://buts.co.kr/shop/partner/?ap=item&w=&fn=2" class="button border round button-purple">파티 만들기</a></div>
</div>
<div class="item-slide party">
	<a href="" class="slide-navi prev"></a>
	<a href="" class="slide-navi next"></a>
	<div class="item-boundary">
						<div class="item-list" id="ajaxList" style="left: 0px;">
		                     <c:forEach var="list" items="${list}">
		                     <c:choose>
		                     <c:when test="${!empty list}">
		                        <c:if test="${list.party_available == 1}">
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
		                              <div class="item-date">
		                                 ${list.party_end_form }<span class="pc-inline">까지</span>(<strong>${list.party_left_date }</strong>일)
		                              </div>
		                              <div class="item-price">
		                                 <span class="Rajdhani">${list.party_total_charge }</span>원
		                              </div>
		                           </div>
		                           <a href="${root}index?formpath=partyMain?party_num=${list.party_num}" class="item-button"></a>
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
					</div>
	<div class="indicator"></div>

</div>
	
<!-- recommand -->
<div class="title">벗츠 <span class="text-purple">추천 컨텐츠!</span></div>
<div class="recommand-list">
	<a href="http://www.youtube.com/watch?v=U9q-iiHgWPk" class="recommand-thumb popup-youtube"><img src="https://img.youtube.com/vi/U9q-iiHgWPk/mqdefault.jpg" alt="" /></a>
	<a href="http://www.youtube.com/watch?v=H-L5Ivk4XPI" class="recommand-thumb popup-youtube"><img src="https://img.youtube.com/vi/H-L5Ivk4XPI/mqdefault.jpg" alt="" /></a>
	<a href="http://www.youtube.com/watch?v=hh_549VGJU8" class="recommand-thumb popup-youtube"><img src="https://img.youtube.com/vi/hh_549VGJU8/mqdefault.jpg" alt="" /></a>
	<a href="http://www.youtube.com/watch?v=_R2pVwDrfSA" class="recommand-thumb popup-youtube"><img src="https://img.youtube.com/vi/_R2pVwDrfSA/mqdefault.jpg" alt="" /></a>
</div>

</div>

</div>
</div>
</body>
</html>
