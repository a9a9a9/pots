<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<link rel="stylesheet" href="/css/partyAdmin/font-awesome.min.css">
<body class="responsive is-pc">
	<div class="wrap wrapper  ko">
		<div class="body">
			<div class="width-container">
      			<div class="title-wrap border mg-top-minus">
					<div class="title">결제/환불 내역</div>
				</div>
				<c:choose>
				<c:when test="${empty orderList }">
					<div class="empty">
						<div class="icon"><img src="/img/icon-butsicon-big-glay.png" /></div>
						<h5>등록된 내용이 없습니다.</h5>
					</div>
				</c:when>
				<c:otherwise>
				<div class="table-list scroll">
					<table style="min-width: 760px">
					<thead>
						<tr>
							<th width="10%">진행날짜</th>
							<th>서비스명</th>
							<th width="14%" class="mobile-table">상태 변경</th>
							<th width="8%">결제 금액</th>
							<th width="8%">입금액</th>
							<th width="8%">포인트</th>
							<th width="10%">환불금액</th>
							<th width="14%" class="pc-table">상태 변경</th>
							<th width="11%">현재 상태</th>
						</tr>
					</thead>
						<tbody>
							<c:forEach var="list" items="${orderList }" begin="${paging.start }" end="${paging.end }">
								<tr>
									<td>
										<span class="lightgrey">
											${list.day }<br>
											${list.time }
											<c:if test="${list.week == '1'}">(일)</c:if>
											<c:if test="${list.week == '2'}">(월)</c:if>
											<c:if test="${list.week == '3'}">(화)</c:if>
											<c:if test="${list.week == '4'}">(수)</c:if>
											<c:if test="${list.week == '5'}">(목)</c:if>
											<c:if test="${list.week == '6'}">(금)</c:if>
											<c:if test="${list.week == '7'}">(토)</c:if>
										</span>
									</td>
									<td>
										<div class="item-name">
											<a href="index?formpath=partyOrderInfo?party_num=${list.party_num }">
												<span class="brand"><img src="${list.logo }" alt="" /></span>
												<span class="name">${list.party_subservice }</span>
												<span class="comment">${list.party_title }</span>
											</a>
										</div>
									</td>
									<td class="mobile-table">-</td>
									<td><strong class="text-purple"><fmt:formatNumber type="number" maxFractionDigits="3" value="${list.use_account + list.use_point}"/></strong>원</td>
									<td><fmt:formatNumber type="number" maxFractionDigits="3" value="${list.use_account}"/>원</td>
									<td><fmt:formatNumber type="number" maxFractionDigits="3" value="${list.use_point}"/>P</td>
									<td><strong class="text-red">0</strong>원</td>
									<td class="pc-table">-</td>
									<td><span class="darkgrey">완료</span></td>
								</tr>
							</c:forEach>
						</tbody>
				</table>
			</div>
			</c:otherwise>
			</c:choose>
			<c:if test="${not empty orderList}" >
				<div class="page-number" style="border-top: 1px solid #333333">
					<ul>
						<li class="disabled">
							<a href = "index?formpath=partyOrderList?nowPage=1"><i class="fa fa-angle-double-left"></i></a>
						</li>
						
						<li class="disabled">
							<a href = "index?formpath=partyOrderList?nowPage=${paging.nowPage -1}"><i class="fa fa-angle-left"></i></a>
						</li>
						
						<c:forEach begin="1" end="${paging.endPage }" var="p">
							<c:choose>
								<c:when test="${p == paging.nowPage }">
									<li class="active">
										<a>${p }</a>
									</li>
								</c:when>
								<c:when test="${p != paging.nowPage }">
									<li><a href="index?formpath=partyOrderList?nowPage=${p }">${p }</a></li>
								</c:when>
							</c:choose>
						</c:forEach>	
						
						<li class="disabled">
							<a href="index?formpath=partyOrderList?nowPage=${paging.nowPage +1}"><i class="fa fa-angle-right"></i></a>
						</li>
						
						<li class="disabled">
							<a href="index?formpath=partyOrderList?nowPage=${paging.endPage}"><i class="fa fa-angle-double-right"></i></a>
						</li>
					</ul>
				</div>
			</c:if>

			<script>
				function od_cancel(val_od_id) { 
					var ajax_url = "https://buts.co.kr/shop/ajax.ordercancel.php";
			
					$.ajax({
						type: "POST",
						url: ajax_url,
						data: {
							'val_od_id'   : val_od_id
						},
						cache: false,
						async: false,
						dataType: "json",
						success: function(data) {
						}
					});
					alert("취소처리 되었습니다.");
					window.location.reload(true);
				}	
			</script>
			<script data-ad-client="ca-pub-8150600701657072" async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
			<!-- Global site tag (gtag.js) - Google Analytics -->
			<script async src="https://www.googletagmanager.com/gtag/js?id=UA-163597728-1"></script>
			<script>
			  window.dataLayer = window.dataLayer || [];
			  function gtag(){dataLayer.push(arguments);}
			  gtag('js', new Date());
			
			  gtag('config', 'UA-163597728-1');
			</script>
			
			<script async src="https://www.googletagmanager.com/gtag/js?id=AW-914988072"></script> <script> window.dataLayer = window.dataLayer || []; function gtag(){dataLayer.push(arguments);} gtag('js', new Date()); gtag('config', 'AW-914988072'); </script><script src="https://buts.co.kr/js/sns.js"></script>

		</div>
	</div>	
</div> 
</body>
</html>
