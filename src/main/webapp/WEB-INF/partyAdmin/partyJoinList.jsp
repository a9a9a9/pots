<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:import url="partyIndex.jsp" />
<script>
	window.onload = function() {
		document.getElementById('partyJoinList').classList.add('active');
	}
</script>
<link rel="stylesheet" href="/css/partyAdmin/jquery-ui.css"
	type="text/css">
<link rel="stylesheet" href="/css/partyAdmin/style.css" type="text/css">
<!-- body -->
<div class="partner-body">
	<script src="/js/jquery-ui.min.js"></script>
	<script>
		jQuery(function($) {
			$.datepicker.regional["ko"] = {
				closeText : "닫기",
				prevText : "이전달",
				nextText : "다음달",
				currentText : "오늘",
				monthNames : [ "1월(JAN)", "2월(FEB)", "3월(MAR)", "4월(APR)",
						"5월(MAY)", "6월(JUN)", "7월(JUL)", "8월(AUG)", "9월(SEP)",
						"10월(OCT)", "11월(NOV)", "12월(DEC)" ],
				monthNamesShort : [ "1월", "2월", "3월", "4월", "5월", "6월", "7월",
						"8월", "9월", "10월", "11월", "12월" ],
				dayNames : [ "일", "월", "화", "수", "목", "금", "토" ],
				dayNamesShort : [ "일", "월", "화", "수", "목", "금", "토" ],
				dayNamesMin : [ "일", "월", "화", "수", "목", "금", "토" ],
				weekHeader : "Wk",
				dateFormat : "yymmdd",
				firstDay : 0,
				isRTL : false,
				showMonthAfterYear : true,
				yearSuffix : ""
			};
			$.datepicker.setDefaults($.datepicker.regional["ko"]);
		});
	</script>
	<!-- [[ 파트너 참여정보 ]] -->

	<form class="form" role="form" name="frm_saleitem" action="joinSearch" method="get">

		<div class="partner-well">
			<span class="calendar"> 
				<span class="icon"><i class="fa fa-calendar"></i></span> 
				<input type="text" name="fr_date" value="" id="fr_date" size="8" maxlength="8" readonly placeholder="시작일">
			</span> 
			<span class="calendar"> 
				<span class="icon"> <i class="fa fa-calendar"></i></span> 
				<input type="text" name="to_date" value="" id="to_date" size="8" maxlength="8" readonly placeholder="종료일">
			</span> 
			<select name="sel" id="sca">
				<option value="">카테고리</option>
				<option value="10">영상</option>
				<option value="1010">&nbsp;&nbsp;&nbsp;#넷플릭스</option>
				<option value="1020">&nbsp;&nbsp;&nbsp;#왓챠</option>
				<option value="1030">&nbsp;&nbsp;&nbsp;#유튜브</option>
				<option value="1040">&nbsp;&nbsp;&nbsp;#웨이브</option>
				<option value="1050">&nbsp;&nbsp;&nbsp;#티빙</option>
				<option value="1080">&nbsp;&nbsp;&nbsp;#디즈니</option>
				<option value="20">도서/음악</option>
				<option value="2010">&nbsp;&nbsp;&nbsp;#리디북스</option>
				<option value="2020">&nbsp;&nbsp;&nbsp;#밀리의서재</option>
				<option value="2030">&nbsp;&nbsp;&nbsp;#YES24</option>
				<option value="2040">&nbsp;&nbsp;&nbsp;#스포티파이</option>
				<option value="30">게임</option>
				<option value="3010">&nbsp;&nbsp;&nbsp;#닌텐도온라인</option>
				<option value="3050">&nbsp;&nbsp;&nbsp;#XBOX</option>
				<option value="60">기타</option>
				<option value="6050">&nbsp;&nbsp;&nbsp;#맴버쉽</option>
				<option value="6010">&nbsp;&nbsp;&nbsp;#MS Office</option>
			</select>
			<script>
				document.getElementById("sca").value = "";
			</script>

			<input type="text" name="searchWord" value="" id="stx" class="search"
				placeholder="파티번호 검색어">
			<button type="submit" class="button mini border button-purple">검색</button>
			<a href="./?ap=saleitem" class="button mini button-purple">리셋</a>
		</div>

	</form>
	<script>
		$(function() {
			$("#fr_date, #to_date").datepicker({
				changeMonth : true,
				changeYear : true,
				dateFormat : "yy-mm-dd",
				showButtonPanel : true,
				yearRange : "c-99:c+99",
				maxDate : "+0d"
			});
		});
		document.getElementById("sca").value = "";
	</script>

	<div class="title">
		<span class="text-purple">참여</span> 정보
	</div>

	<div class="table-list scroll">
		

				<c:choose>
					<c:when test="${empty list }">
					<table>
						<thead>
							<tr>
								<th scope="col">판매일</th>
								<th scope="col">서비스명</th>
								<th scope="col">구매자</th>
								<th scope="col">상태</th>
								<th scope="col">남은기간</th>
								<th scope="col">결제금액</th>
								<th scope="col">환불금액</th>
								<th scope="col">수수료</th>
								<th scope="col">총 판매금액</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td colspan="9">
									<div class="empty">
										<div class="icon">
											<img src="/img/icon-butsicon-big-glay.png" />
										</div>
										<h5>등록된 내용이 없습니다.</h5>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
					</c:when>



					<c:otherwise>
					<table>
						<thead>
							<tr>
								<th scope="col">no</th>
								<th scope="col">판매일</th>
								<th scope="col">서비스명</th>
								<th scope="col">구매자</th>
								<th scope="col">상태</th>
								<th scope="col">남은기간</th>
								<th scope="col">결제금액</th>
								<th scope="col">환불금액</th>
								<th scope="col">수수료</th>
								<th scope="col">총 판매금액</th>
							</tr>
						</thead>
						<tbody>
					<c:set var="length" value="${fn:length(list) }"/>
						<c:forEach var="jl" items="${list }" begin="${paging.start }" end="${paging.end }" varStatus="vs">
								<tr>
									<td><span class="lightgrey">${length - vs.index }</span></td>
									<td><span class="lightgrey"> ${jl.mystartday } </span></td>
									<td><a href="index?formpath=partyMain?party_num=${jl.party_num }" class="item-name"> 
										<span class="brand"><img src="https://buts.co.kr/thema/Buts/colorset/category/6040.jpg" alt=""></span> 
										<span class="name">${jl.party_title }</span> 
										<span class="lightgrey">파티번호 : ${jl.party_num }</span>
									</a></td>
									<td><strong>${jl.nick }</strong></td>
									<c:choose>
										<c:when test="${jl.party_left_date <= 0 }">
											<td>완료</td>
										</c:when>
										<c:otherwise>
											<td>사용</td>
										</c:otherwise>
									</c:choose>
									<td><strong>${jl.party_left_date }</strong>일</td>
		
									<td>${jl.mycharge }원</td>
									<td><span class="text-red">0</span>원</td>
									<td>0원(0%)</td>
									<td><span class="text-purple">${jl.mycharge }</span>원</td>
								</tr>
						</c:forEach>
							</tbody>
						</table>
					</c:otherwise>
			</c:choose>
			
	</div>
	
	<c:set var="paging" value="${paging }"/>
		<c:if test="${not empty list }">
		<div class="page-number" style="border-top: 0">
			<ul>
				<li class="disabled">
					<a href = "/partyJoinList?nowPage=1"><i class="fa fa-angle-double-left"></i></a>
				</li>
				
				<li class="disabled">
					<a href = "/partyJoinList?nowPage=${paging.nowPage -1}"><i class="fa fa-angle-left"></i></a>
				</li>
				
				<c:forEach begin="1" end="${paging.endPage }" var="p">
					<c:choose>
						<c:when test="${p == paging.nowPage }">
							<li class="active">
								<a>${p }</a>
							</li>
						</c:when>
						<c:when test="${p != paging.nowPage }">
							<li><a href="/partyJoinList?nowPage=${p }">${p }</a></li>
						</c:when>
					</c:choose>
				</c:forEach>	
				
				<li class="disabled">
					<a href = "/partyJoinList?nowPage=${paging.nowPage + 1}"><i class="fa fa-angle-right"></i></a>
				</li>
				
				<li class="disabled">
					<a href = "/partyJoinList?nowPage=${paging.endPage}"><i class="fa fa-angle-double-right"></i></a>
				</li>
			</ul>
		</div>
		</c:if>
</div>
<!-- /#wrapper -->

<!-- 끝 -->

<!-- JavaScript -->
<script type="text/javascript" src="/js/bootstrap.min.js"></script>
<script>
	$(function() {
		var $window = $(window), $partnerToggle = $('.partner-toggle'), $partnerShade = $('.partner-shade'), $partnerNav = $('.partner-nav');

		function navToggle() {
			if ($partnerShade.hasClass('close')) {
				$partnerShade.add($partnerNav).removeClass('close').addClass(
						'open');
				$partnerNav.css({
					left : '-220px'
				}).animate({
					left : '0'
				}, 200);
			} else {
				$partnerNav.animate({
					left : '-220px'
				}, 200, function() {
					$partnerNav.css({
						left : ''
					});
					$partnerShade.add($partnerNav).removeClass('open')
							.addClass('close');
				});
			}
		}

		function resize() {
			if ($window.outerWidth() <= 943) {
				$partnerShade.add($partnerNav).removeClass('open').addClass(
						'close');
			} else {
				$partnerShade.add($partnerNav).removeClass('close open');
			}
		}

		$partnerToggle.add($partnerShade).on('click', function(e) {
			e.preventDefault();
			navToggle();
		});

		$window.on('resize', function() {
			resize();
		});

		resize();
	});
</script>

<!-- Channel Plugin Scripts -->
<script>
	(function() {
		var w = window;
		if (w.ChannelIO) {
			return (window.console.error || window.console.log || function() {
			})('ChannelIO script included twice.');
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
		"pluginKey" : "d3d063c0-7d5d-48f8-8535-0ac91305c985"
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