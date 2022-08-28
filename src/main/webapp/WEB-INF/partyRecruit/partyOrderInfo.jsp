<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<body class="responsive is-pc">
	<div class="wrap wrapper  ko">
		<div class="body">
			<div class="width-container">

<div class="title-wrap border mg-top-minus">
	<div class="title">결제내역</div>
</div>
<div class="h3">진행 정보</div>
	<div class="payment-name item-name mobile-block">
		<span class="brand"></span>
		<span class="name">
			<a href="./item.php?it_id=1660890917" class="name">${party.party_service }</a>
		</span>
		<span class="comment">${party.party_subservice }</span>
		</div>
	<div class="table-list table-list-payment">
	<table>
		<thead>
		<tr>
			<th class="pc-block">파티명</th>
			<th>사용기간</th>
			<th>판매가</th>
			<th>수수료(10%)</th>
			<th>결제금액</th>
			<th>상태</th>
		</tr>
		</thead>
		<tbody>
			<tr>
				<td class="pc-block">
				<div class="item-name">
					<span class="brand"><img src="${party.logo }" alt="" /></span>
					<a href="/index?formpath=partyMain?party_num=${party.party_num} " class="name">
						${party.party_service }						
					</a>
					<span class="comment">${party.party_title }</span>
				</div>
				</td>
				<td>
				 	<strong>${myInfo.party_end}<!-- 2022.08.21	--></strong>	
					</br>
					<span class="comment">(총 ${myInfo.diff }일)</span>		 		
				</td>
				<td>
					<strong><fmt:formatNumber type="number" maxFractionDigits="3" value="${myInfo.pay }" />원</strong>
				</td>
				<td>
					<strong><fmt:formatNumber type="number" maxFractionDigits="3" value="${myInfo.plus}" />원</strong>
				</td>
				<td>
					<strong><fmt:formatNumber type="number" maxFractionDigits="3" value="${myInfo.pay + myInfo.plus}"/>원</strong>
				</td>
				<c:choose>
					<c:when test="${myInfo.diff >= 0}">
						<td>사용중</td>
					</c:when>
					<c:otherwise>
						<td>사용완료</td>
					</c:otherwise>
				</c:choose>								
			</tr>
		</tbody>
	</table>
</div>

<div class="form-half left">
	<div class="h3">결제 정보</div>
	<div class="form-list border">
		<ul>
			<li>
				<div class="subject">ㆍ 결제번호</div>
				<div class="right">${myInfo.no_mem }</div>
			</li>
			<li>
				<div class="subject">ㆍ 결제일시</div>
				<div class="right">${myInfo.mystartday }</div>
			</li>
			<li>
				<div class="subject">ㆍ 결제방식</div>
				<div class="right">
					${method.use_account } ${method.use_point }
				</div>
			</li>
					
		</ul>
	</div>
</div>

<div class="form-half">
	<div class="h3">결제 합계</div>
	<div class="form-list border">
		<ul>
		<li>
			<div class="subject">ㆍ 총구매액</div>
			<div class="right"><fmt:formatNumber type="number" maxFractionDigits="3" value="${myInfo.use_account + myInfo.use_point}" />원</div>
		</li>
		<li>
			<div class="subject">ㆍ 수수료(10%)</div>
			<div class="right">
				<fmt:formatNumber type="number" maxFractionDigits="3" value="${myInfo.plus}" />원</div> 
		</li>
		<li>
			<div class="subject">ㆍ 포인트 사용</div>
			<div class="right">-<fmt:formatNumber type="number" maxFractionDigits="3" value="${myInfo.use_point}" />P</div>  
		</li>
				<li>
			<div class="subject">ㆍ 미결제액</div>
			<div class="right">
				<fmt:formatNumber type="number" maxFractionDigits="3" value="${(myInfo.pay+myInfo.plus) - (myInfo.use_account + myInfo.use_point)}"/>원			
			</div>
		</li>
		<li class="total">
			<div class="subject text-purple">결제한 금액</div>
			<div class="right"><span class="Rajdhani text-purple">
				<fmt:formatNumber type="number" maxFractionDigits="3" value="${myInfo.use_account + myInfo.use_point}"/>원
			</span></div>
		</li>
		</ul>
	</div>		
</div>
<div class="button-align center">
			<a href="./list_my.php?ca_id=10" class="button large border button-purple">내 파티보기</a>
		<a href="/index?formpath=partyOrderList" class="button large button-purple">확인</a>
			<div style="text-align: center; margin-top: 20px;">
			계좌입금으로 진행시 입금확인 후, <span class="text-purple">[내 파티보기]</span>에서 공유정보 확인 가능합니다. (카드결제 시 바로 확인 가능)
		</div>
	</div>





<div class="modal fade" id="statusModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
				<h4 class="modal-title" id="myModalLabel" style="color:black;">상태설명</h4>
			</div>
			<div class="modal-body" style="color:black;">
				<ul>
				<li>주문 : 주문이 접수되었습니다.</li>
				<li>입금대기 : 입금을 기다리고 있습니다.</li>
				<li>사용중 : 사용중입니다.</li>
				<li>완료 : 사용이 완료 되었습니다.</li>
				</ul>
				<br>
				<p class="text-center">
					<button type="button" class="btn btn-black btn-sm" data-dismiss="modal">닫기</button>
				</p>
			</div>
		</div>
	</div>
</div>


<script>
function fcancel_check(f) {
    if(!confirm("서비스를 정말 취소하시겠습니까?"))
        return false;

    var memo = f.cancel_memo.value;
    if(memo == "") {
        alert("취소사유를 입력해 주십시오.");
        return false;
    }

    return true;
}

$(function(){
	$(".delivery-confirm").click(function(){
		if(confirm("상품을 수령하셨습니까?\n\n확인시 배송완료 처리가됩니다.")) {
			return true;
		}
		return false;
	});
});
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