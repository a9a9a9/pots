<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url var="root" value="/" />
<html>
<head>
<meta charset="UTF-8">
<title>Main</title>
<script>
	var result = "${msg}";
	if (result === "가입 완료") {
		alert(result);
	} else if (result === "탈퇴 완료") {
		alert(result);
	} else if (result === "수정 완료") {
		alert(result);
	} else if (result === "충전 완료") {
		alert(result);
	}else if(result === "로그 아웃"){
		alert('로그아웃 하셨습니다.');
	}
</script>
<script>
	window.onload=start;
	function start(){
		var next = document.getElementById('next');
		next.onclick=send;
	}
	
	var req;
	function send(){ 
		req = new XMLHttpRequest();
		req.onreadystatechange = textChange;
		req.open('post', 'nextPage');
		var data = "${currentPage}";
		req.send(data); 
	}
	
	function textChange(){
		if(req.readyState == 4 && req.status == 200){
			var jsonDatas = JSON.parse(req.responseText);
			var data = "";
			
			for(i = 0; i < jsonDatas.cd.length; i++){
				data += '<div class="item-row">';
				data += '<div class="item-type">'+jsonDatas.cd[i].party_subservice+'</div>';
				data += '<div class="item-title">'+jsonDatas.cd[i].party_title+'</div>';
				data += '<div class="item-members">';
				for(j = 0; j < jsonDatas.cd[i].party_now_member-1; j++){
					data += '<span class="item-member"><img src="/img/icon-butsicon-small.png" alt="" /></span>';
				}
				for(j = 0; j < jsonDatas.cd[i].party_member-jsonDatas.cd[i].party_now_member; j++){
					data += '<span class="item-member"><img src="/img/icon-butsicon-small-glay.png" alt="" /></span>';
				}
				
				data += '</div>';
				data += '<div class="item-info">';
				data += '<div class="item-date">';
				data += jsonDatas.cd[i].party_end_form+'<span class="pc-inline">까지</span>(<strong>'+jsonDatas.cd[i].party_left_date+'</strong>일)';
				data += '</div>';
				data += '<div class="item-price">';
				data += '<span class="Rajdhani">'+jsonDatas.cd[i].party_total_charge+'</span>원';
				data += '</div>';
				data += '</div>';
				data += '<a href="${root}index?formpath=partyMain?party_num='+jsonDatas.cd[i].party_num+'" class="item-button"></a>';
				data += '</div>';
				data += "</tr>";
			}
			var ajaxList = document.getElementById('ajaxList');
			ajaxList.innerHTML = data;
		}
	
	}
</script>

<!-- <link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" /> -->
<!-- 	<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick-theme.css"/> -->
<!-- <script type="text/javascript" -->
<!-- 	src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script> -->
</head>
<body class="responsive is-pc">

	<div class="wrap wrapper  ko">
		<div class="body">
			<div class="width-container" style="height: auto;">
				<div class="title-wrap">
					<br> <br> 
					<a href="#" onclick="return false;">
					<img src="https://buts.co.kr/thema/Buts/colorset/Basic/img/20220804_sbuk_main_banner.png" alt="" /></a>
				</div>
				<div class="title-wrap">
					<div class="title"> 벗츠 <span class="text-purple">파티</span></div>
					<div class="title-right">
						<c:if test="${sessionScope.partner eq 'true'}">
							<a href="${root}partyCreate" class="button border round button-purple">파티 만들기</a>
						</c:if>
					</div>
				</div>
				
				<div class="item-slide party">
					<a href="" class="slide-navi prev" style="display: inline;"></a> 
					<a class="slide-navi next" id="next" style="display: inline;"></a>
					
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
					<div class="indicator">
						<span class="on"></span>
						<span class=""></span>
						<span class=""></span>
						<span class=""></span>
						<span class=""></span>
					</div>
				</div>

				<!-- recommand -->
				<div class="title">
					벗츠 <span class="text-purple">추천 컨텐츠!</span>
				</div>
				<div class="recommand-list">
					<a href="http://www.youtube.com/watch?v=U9q-iiHgWPk"
						class="recommand-thumb popup-youtube"><img
						src="https://img.youtube.com/vi/U9q-iiHgWPk/mqdefault.jpg" alt="" /></a>
					<a href="http://www.youtube.com/watch?v=H-L5Ivk4XPI"
						class="recommand-thumb popup-youtube"><img
						src="https://img.youtube.com/vi/H-L5Ivk4XPI/mqdefault.jpg" alt="" /></a>
					<a href="http://www.youtube.com/watch?v=hh_549VGJU8"
						class="recommand-thumb popup-youtube"><img
						src="https://img.youtube.com/vi/hh_549VGJU8/mqdefault.jpg" alt="" /></a>
					<a href="http://www.youtube.com/watch?v=_R2pVwDrfSA"
						class="recommand-thumb popup-youtube"><img
						src="https://img.youtube.com/vi/_R2pVwDrfSA/mqdefault.jpg" alt="" /></a>
				</div>

			</div>
		</div>
	</div>
</body>
</html>