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
									<a href="./item.php?it_id=1660890917" class="name">
						기타					</a>
							</span>
			<span class="comment">kg</span>
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
					
											<a href="./item.php?it_id=1660890917" class="name">
							${party.party_service }						</a>
										<span class="comment">${party.party_title }</span>
				</div>
				</td>
				<td>
					
				 	<strong>${end.party_end}<!-- 2022.08.21	--></strong>	
					</br>
					<span class="comment">(총 ${myDay.diff }일)</span>		 		
				</td>
				<td>
					<strong><fmt:formatNumber type="number" maxFractionDigits="3" value="${myDay.pay }" />원</strong>
				</td>
				<td>
					<strong><fmt:formatNumber type="number" maxFractionDigits="3" value="${myDay.plus}" />원</strong>
				</td>
				<td>
					<strong><fmt:formatNumber type="number" maxFractionDigits="3" value="${myDay.pay + myDay.plus}"/>원</strong>
				</td>
				<c:choose>
					<c:when test="${myDay.diff >= 0}">
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
				<div class="right">${partyMember.no_mem }</div>
			</li>
			<li>
				<div class="subject">ㆍ 결제일시</div>
				<div class="right">${partyMember.mystartday }</div>
			</li>
			<li>
				<div class="subject">ㆍ 결제방식</div>
				<div class="right">${method.use_account } ${method.use_point } </div>
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
			<div class="right"><fmt:formatNumber type="number" maxFractionDigits="3" value="${myDay.pay }" />원</div>
		</li>
		<li>
			<div class="subject">ㆍ 수수료(10%)</div>
			<div class="right">
				<fmt:formatNumber type="number" maxFractionDigits="3" value="${myDay.plus}" />원</div> 
		</li>
		<li>
			<div class="subject">ㆍ 포인트 사용</div>
			<div class="right">-<fmt:formatNumber type="number" maxFractionDigits="3" value="${myDay.plus}" />P</div>  
		</li>
				<li>
			<div class="subject">ㆍ 미결제액</div>
			<div class="right">
				<fmt:formatNumber type="number" maxFractionDigits="3" value="${(myDay.pay + myDay.plus) - (partyMember.use_account+partyMember.use_point)}"/>원			
			</div>
		</li>
		<li class="total">
			<div class="subject text-purple">결제한 금액</div>
			<div class="right"><span class="Rajdhani text-purple">
				<fmt:formatNumber type="number" maxFractionDigits="3" value="${(partyMember.use_account+partyMember.use_point)}"/>원
			</span></div>
		</li>
		</ul>
	</div>		
</div>
<div class="button-align center">
			<a href="./list_my.php?ca_id=10" class="button large border button-purple">내 파티보기</a>
		<a href="index?formpath=partyOrderList" class="button large button-purple">확인</a>
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


<!-- <div class="well well-sm" style="color:#fff; background-color: #2f2f2f; border:1px solid #2f2f2f;">
	<span class="print-hide cursor pull-right hidden-xs" data-toggle="modal" data-target="#statusModal">
		<i class="fa fa-info-circle"></i> 상태설명
	</span>
	<i class="fa fa-shopping-cart fa-lg"></i> 결제번호 : <strong style="color:#aaaaaa;" >2022081915423153</strong>
</div>

<style>
	.delivery-info { margin:0px; padding:0px; padding-left:15px; line-height:22px; white-space:nowrap; }
</style>

<div class="table-responsive">
	<table class="div-table table bsk-tbl bg-white">
	<tbody>
	<tr style="background-color: #0a89ff; border-color: #0a89ff; border: 0px;">
		<th scope="col" style="color:#fff;border:0px;"><span>파티명</span></th>
		<th scope="col" style="color:#fff;border:0px;"></th>
		<th scope="col" style="color:#fff;border:0px;"></th>
		<th scope="col" style="color:#fff;border:0px;"><span>합계금액</span></th>
		<th scope="col" style="color:#fff;border:0px;"><span>상태</span></th>
	</tr>
						<tr style="background-color: #2f2f2f; border-color: #2f2f2f;">
				<td class="text-center" style="border:0px;">				
					<a href="./item.php?it_id=1660890917" style="color:#fff;">
								<strong>kg</strong>
							</a>
									</td>	
				<td class="text-center" style="border:0px;"></td>	
				<td class="text-center" style="border:0px;"></td>				
				<td class="text-center" style="color:#fff;border:0px;">
					22				</td>
									 <td class="text-center" style="color:#68b6ff;border:0px;">사용중</td>
							</tr>
				</tbody>
	</table>
</div>

<div class="panel panel-success" style="border: 0px;border-radius: 10px;">
	<div class="panel-heading" style="background-color: #0a89ff; color:#fff; border:0px; "><strong><i class="fa fa-star fa-lg"></i> 결제정보</strong></div>
	<div class="table-responsive">
		<table class="div-table table bsk-tbl bg-white">
		<col width="120">
		<tbody style="background-color: #2f2f2f; color:#fff;">
		<tr>
			<th scope="row" style="border-color: #aaaaaa; border:0px;">결제번호</th>
			<td style="color:#aaaaaa; border-color: #aaaaaa; border:0px;">2022081915423153</td>
		</tr>
		<tr>
			<th scope="row" style="border-color: #aaaaaa;border-top:1px solid #3c3c3c;">결제일시</th>
			<td style="color:#aaaaaa; border-color: #aaaaaa;border-top:1px solid #3c3c3c;">2022-08-19 15:42:37</td>
		</tr>
		<tr>
			<th scope="row" style="border-color: #aaaaaa;border-top:1px solid #3c3c3c;">결제방식</th>
			<td style="color:#aaaaaa; border-color: #aaaaaa;border-top:1px solid #3c3c3c;">포인트</td>
		</tr>
		<tr class="active" >
			<th scope="row" style="border-color: #aaaaaa; background-color: #2f2f2f; color:#fff;border-top:1px solid #3c3c3c; ">결제금액</th>
			<td style="border-color: #aaaaaa; background-color: #2f2f2f; color:#aaaaaa;border-top:1px solid #3c3c3c;">			0원 
			(22 포인트 차감)
			</td>
		</tr>
									<tr>
			<th scope="row" style="border-color: #aaaaaa;border-top:1px solid #3c3c3c;">입금자명</th>
			<td style="color:#aaaaaa; border-color: #aaaaaa;border-top:1px solid #3c3c3c;">김가연</td>
			</tr>
			<tr>
			<th scope="row" style="border-color: #aaaaaa;border-top:1px solid #3c3c3c;">입금계좌</th>
			<td style="color:#aaaaaa; border-color: #aaaaaa;border-top:1px solid #3c3c3c;">하나은행 165-910009-55405 김시진</td>
			</tr>
								</tbody>
		</table>
	</div>
</div>

<div class="panel panel-primary" style="border:0px;border-radius: 10px;">
	<div class="panel-heading" style="background-color: #0a89ff;"><strong><i class="fa fa-money fa-lg"></i> 결제합계</strong></div>
	<div class="table-responsive">
		<table class="div-table table bsk-tbl " style="background-color: #2f2f2f;">
		<col width="120">
		<tbody>
		<tr>	
			<th scope="row" style="border:0px;">총구매액</th>
			<td class="text-right" style="border:0px; color:#aaaaaa;"><strong>20원</strong></td>
		</tr>
		<tr>	
			<th scope="row" style="border-top:1px solid #3c3c3c;">수수료 <span style="color:#aaaaaa; font-size: 9px;">10%</span></th>
			<td class="text-right" style="border-top:1px solid #3c3c3c; color:#aaaaaa;">
			<strong>
				2원			</strong>
		</td>
		</tr>
		<tr>	
			<th scope="row" style="border-top:1px solid #3c3c3c;">포인트 사용</th>
			<td class="text-right" style="border-top:1px solid #3c3c3c; color:#68b6ff;"><strong>-22<img src="https://buts.co.kr/img/buts/ico-point-copy-2.png" /></strong></td>
		</tr>
		 
		<tr>
			<th scope="row" id="alrdy" style="border-color: #aaaaaa; border-top:1px solid #3c3c3c">결제금액</th>
			<td class="text-right" style="border-color: #aaaaaa; color:#aaaaaa; border-top:1px solid #3c3c3c"><strong style=" color:#68b6ff; font-size:18px;">0원</strong> (vat포함)</td>
		</tr>
		</tbody>
		</table>
	</div>
</div> -->

	

<!-- <p class="print-hide text-center">
	<div class="btn_confirm01 btn_confirm">
		<button onclick="location.href = './orderinquiry.php';" type="button" style="background-color: #3bb0db; color:#ffffff; width: 179px;height: 38px; font-size:14px; border:0px;font-weight: bold;">확인</button>		
				<button onclick="location.href = './list_my.php?ca_id=10';" type="button" style="background-color: #0a89ff; color:#ffffff; width: 179px;height: 38px; font-size:14px; border:0px;font-weight: bold;">내 파티보기</button>		
			</div>
			<div class=" text-center" style="margin-top:30px; font-size:12px; color:#aaaaaa;">
			계좌입금으로 진행시 입금확인 후, <span style="color: #68b6ff; ">[내 파티보기]</span>에서 공유정보 확인 가능합니다. (카드결제 시 바로 확인 가능)
		</div>
		</p> -->

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

<!-- Global site tag (gtag.js) - Google Ads: 914988072 --> <script async src="https://www.googletagmanager.com/gtag/js?id=AW-914988072"></script> <script> window.dataLayer = window.dataLayer || []; function gtag(){dataLayer.push(arguments);} gtag('js', new Date()); gtag('config', 'AW-914988072'); </script><script src="https://buts.co.kr/js/sns.js"></script>

		</div><!-- .width-container -->
	</div><!-- .body -->
<!--
	<div class="side">
		<a href="https://buts.co.kr/bbs/guide_buts.php">
			<img src="https://buts.co.kr/thema/Buts/colorset/Basic/img/btn-quick-guid.png" srcset="https://buts.co.kr/thema/Buts/colorset/Basic/img/2x/btn-quick-guid.png 2x" alt="" />
			<span class="side-text">처음 오신분!</span>
		</a>		
		<a onclick="chatChannel();" href="javascript:;">
			<img src="https://buts.co.kr/thema/Buts/colorset/Basic/img/btn-quick-talk.png" srcset="https://buts.co.kr/thema/Buts/colorset/Basic/img/2x/btn-quick-talk.png 2x" alt="" />
			<span class="side-text">질문 주세요!</span>
		</a>
		<script type="text/javascript">
		// input your appkey
		Kakao.init('c089c8172def97eb00c07217cae17495')
		function chatChannel() {
			Kakao.Channel.chat({
			channelPublicId: '_xnSxgxdxb',
			})
		}
		</script>
	</div>
-->
</div>
</body>