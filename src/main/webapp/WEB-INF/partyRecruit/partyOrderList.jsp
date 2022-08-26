<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
				<c:forEach var="list" items="${orderList }" begin="${paging.start }" end="${paging.end }">
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
											<a href="index?formpath=partyOrderInfo">
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
						</tbody>
				</table>
			</div>
			</c:forEach>
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
</div> <!-- .wrapper -->

<!-- .wrapper -->
<div class="at-go" style="position: fixed; bottom: 20px; right: 20px; width: 40px; height: 40px;">
	<div class="side">
		<a href="https://buts.co.kr/bbs/guide_buts.php"><img src="https://buts.co.kr/thema/Buts/colorset/Basic/img/side_img01.png" alt="" /></a>		
		<a onclick="chatChannel();" href="javascript:;"><img src="https://buts.co.kr/thema/Buts/colorset/Basic/img/side_img02.png" alt="" /></a>
	</div>
</div>

<!--[if lt IE 9]>
<script type="text/javascript" src="https://buts.co.kr/thema/Buts/assets/js/respond.js"></script>
<![endif]-->

<!-- JavaScript -->
<script>
var sub_show = "slide";
var sub_hide = "";
var menu_startAt = "0";
var menu_sub = "";
var menu_subAt = "0";
</script>
<script src="https://buts.co.kr/thema/Buts/assets/bs3/js/bootstrap.min.js"></script>
<script src="https://buts.co.kr/thema/Buts/assets/js/jquery.magnific-popup.min.js"></script>
<script src="https://buts.co.kr/thema/Buts/assets/js/sly.min.js"></script>
<script src="https://buts.co.kr/thema/Buts/assets/js/custom.js"></script>
<script src="https://buts.co.kr/thema/Buts/assets/js/buts.js"></script>

<script>
var sidebar_url = "https://buts.co.kr/thema/Buts/widget/basic-sidebar";
var sidebar_time = "30";
</script>
<script src="https://buts.co.kr/thema/Buts/widget/basic-sidebar/sidebar.js"></script>


<!-- Channel Plugin Scripts -->
<script>
  (function() {
    var w = window;
    if (w.ChannelIO) {
      return (window.console.error || window.console.log || function(){})('ChannelIO script included twice.');
    }
    var ch = function() {
      ch.c(arguments);
    };
    ch.q = [];
    ch.c = function(args) {
      ch.q.push(args);
    };
    w.ChannelIO = ch;
    function l() {
      if (w.ChannelIOInitialized) {
        return;
      }
      w.ChannelIOInitialized = true;
      var s = document.createElement('script');
      s.type = 'text/javascript';
      s.async = true;
      s.src = 'https://cdn.channel.io/plugin/ch-plugin-web.js';
      s.charset = 'UTF-8';
      var x = document.getElementsByTagName('script')[0];
      x.parentNode.insertBefore(s, x);
    }
    if (document.readyState === 'complete') {
      l();
    } else if (window.attachEvent) {
      window.attachEvent('onload', l);
    } else {
      window.addEventListener('DOMContentLoaded', l, false);
      window.addEventListener('load', l, false);
    }
  })();
  ChannelIO('boot', {
    "pluginKey": "d3d063c0-7d5d-48f8-8535-0ac91305c985", //please fill with your plugin key
    "memberId": "lhg1042", //fill with user id
    "profile": {
      "name": "이혜규", //fill with user name
      "mobileNumber": "010-9256-1042",
      "email": "lhg1042@nate.com",
      "description": "ㅇㅆㅇ" //fill with user name
    }
  });
</script>
<!-- End Channel Plugin -->


<!-- ie6,7에서 사이드뷰가 게시판 목록에서 아래 사이드뷰에 가려지는 현상 수정 -->
<!--[if lte IE 7]>
<script>
$(function() {
    var $sv_use = $(".sv_use");
    var count = $sv_use.length;

    $sv_use.each(function() {
        $(this).css("z-index", count);
        $(this).css("position", "relative");
        count = count - 1;
    });
});
</script>
<![endif]-->

</body>
</html>
