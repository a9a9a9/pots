<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:url var="root" value="/" />

<body class="responsive is-pc">
	<div class="wrap wrapper  ko">
		<div class="body">
			<div class="width-container">
				<div class="title-wrap border mg-top-minus">
					<div class="title">
						<span class="text-purple">벗츠</span> 포인트
					</div>
				</div>

				<div class="mypoint">
					<span class="picture"> 
					<img src="/img/profile${sessionScope.profile}.png" alt=""> 가이드
					</span> 
					<span class="name">${sessionScope.nick }</span>
					<div class="right">
						<span class="icon"><img
							src="/img/icon-coin-star-big.png"
							alt=""></span> <span class="text">포인트</span> <span
							class="text-purple Rajdhani price">${sessionScope.compoint}</span> 
							<a href="${root }index?formpath=myPointCharge"
							class="button round button-purple">충전</a>
					</div>
				</div>

				<div class="h3">포인트 상세내역</div>

				<div class="table-list scroll" style="border-top: 1px solid #333333">
					<table>
						<thead>
							<tr>
								<th width="14%">사용일시</th>
								<th>포인트 이용 내역</th>
								<th width="14%">충전 포인트</th>
								<th width="14%">사용 포인트</th>
							</tr>
						</thead>
						<tbody>
	
						<c:forEach var="list" items="${pointlist }">
							<tr>
								<td><span class="date"> <c:out value="${fn:substring(list.point_date, 0, 10)}"/><br> <c:out value="${fn:substring(list.point_date, 11, 20)}"/>
								</span></td>
								<td>
									<div class="subject2">${list.point_content }</div>
								</td>
								<td><strong class="text-purple">+${list.comcharge }</strong> 포인트</td>
								<td><strong class="text-red">-${list.comuse}</strong> 포인트</td>
							</tr>
						</c:forEach>
							
						</tbody>
					</table>
				</div>

<!-- 					<div class="page-number"> -->
<%-- 						${page} --%>
<!-- 					</div> -->

					<div class="button-align right mg-top-0"></div>
			</div>

		</div>
	</div>
</body>