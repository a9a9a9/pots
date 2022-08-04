<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:import url="partyIndex.jsp"/>
<script>
window.onload=function(){
	document.getElementById('partyJoinList').classList.add('active');
}
</script>
<link rel="stylesheet" href="/css/partyAdmin/jquery-ui.css" type="text/css">
<link rel="stylesheet" href="/css/partyAdmin/style.css" type="text/css"> 
	<!-- body -->
	<div class="partner-body">
<script src="/js/jquery-ui.min.js"></script>
<script>
jQuery(function($){
    $.datepicker.regional["ko"] = {
        closeText: "닫기",
        prevText: "이전달",
        nextText: "다음달",
        currentText: "오늘",
        monthNames: ["1월(JAN)","2월(FEB)","3월(MAR)","4월(APR)","5월(MAY)","6월(JUN)", "7월(JUL)","8월(AUG)","9월(SEP)","10월(OCT)","11월(NOV)","12월(DEC)"],
        monthNamesShort: ["1월","2월","3월","4월","5월","6월", "7월","8월","9월","10월","11월","12월"],
        dayNames: ["일","월","화","수","목","금","토"],
        dayNamesShort: ["일","월","화","수","목","금","토"],
        dayNamesMin: ["일","월","화","수","목","금","토"],
        weekHeader: "Wk",
        dateFormat: "yymmdd",
        firstDay: 0,
        isRTL: false,
        showMonthAfterYear: true,
        yearSuffix: ""
    };
	$.datepicker.setDefaults($.datepicker.regional["ko"]);
});
</script> 
<!-- [[ 파트너 참여정보 ]] -->

<form class="form" role="form" name="frm_saleitem" method="get">
<input type="hidden" name="ap" value="saleitem">

<div class="partner-well">
	<span class="calendar">
		<span class="icon"><i class="fa fa-calendar"></i></span>
		<input type="text" name="fr_date" value="" id="fr_date" size="8" maxlength="8" readonly placeholder="시작일">
	</span>
	<span class="calendar">
		<span class="icon"><i class="fa fa-calendar"></i></span>
		<input type="text" name="to_date" value="" id="to_date" size="8" maxlength="8" readonly placeholder="종료일">
	</span>
	<select name="sca" id="sca">
		<option value="">카테고리</option>
		<option value="10">영상</option>
<option value="1010">&nbsp;&nbsp;&nbsp;#넷플릭스</option>
<option value="1020">&nbsp;&nbsp;&nbsp;#왓챠</option>
<option value="1030">&nbsp;&nbsp;&nbsp;#유튜브</option>
<option value="1040">&nbsp;&nbsp;&nbsp;#웨이브</option>
<option value="1050">&nbsp;&nbsp;&nbsp;#티빙</option>
<option value="1080">&nbsp;&nbsp;&nbsp;#디즈니</option>
<option value="1090">&nbsp;&nbsp;&nbsp;#라프텔</option>
<option value="10a0">&nbsp;&nbsp;&nbsp;#AppleOne</option>
<option value="1070">&nbsp;&nbsp;&nbsp;#프라임비디오</option>
<option value="10b0">&nbsp;&nbsp;&nbsp;#테니스TV</option>
<option value="1060">&nbsp;&nbsp;&nbsp;기타(영상)</option>
<option value="20">도서/음악</option>
<option value="2010">&nbsp;&nbsp;&nbsp;#리디북스</option>
<option value="2020">&nbsp;&nbsp;&nbsp;#밀리의서재</option>
<option value="2030">&nbsp;&nbsp;&nbsp;#YES24</option>
<option value="2080">&nbsp;&nbsp;&nbsp;#윌라</option>
<option value="2040">&nbsp;&nbsp;&nbsp;#스포티파이</option>
<option value="2060">&nbsp;&nbsp;&nbsp;#애플뮤직</option>
<option value="2090">&nbsp;&nbsp;&nbsp;#케이크</option>
<option value="2050">&nbsp;&nbsp;&nbsp;기타(도서/음악)</option>
<option value="30">게임</option>
<option value="3010">&nbsp;&nbsp;&nbsp;#닌텐도온라인</option>
<option value="3030">&nbsp;&nbsp;&nbsp;#스팀</option>
<option value="3040">&nbsp;&nbsp;&nbsp;#PS4/PS5</option>
<option value="3050">&nbsp;&nbsp;&nbsp;#XBOX</option>
<option value="3020">&nbsp;&nbsp;&nbsp;기타</option>
<option value="60">기타</option>
<option value="6060">&nbsp;&nbsp;&nbsp;#VPN</option>
<option value="6050">&nbsp;&nbsp;&nbsp;#맴버쉽</option>
<option value="6010">&nbsp;&nbsp;&nbsp;#MS Office</option>
<option value="6020">&nbsp;&nbsp;&nbsp;#그래픽</option>
<option value="6030">&nbsp;&nbsp;&nbsp;#운영체제</option>
<option value="6040">&nbsp;&nbsp;&nbsp;기타</option>
	</select>
	<script>document.getElementById("sca").value = "";</script>

	<input type="text" name="stx" value="" id="stx" class="search" placeholder="파티번호 검색어">
	<button type="submit" class="button mini border button-purple">검색</button>
	<a href="./?ap=saleitem" class="button mini button-purple">리셋</a>
</div>

</form>
<script>
	$(function() {
		$("#fr_date, #to_date").datepicker({
			changeMonth: true,
			changeYear: true,
			dateFormat: "yymmdd",
			showButtonPanel: true,
			yearRange: "c-99:c+99",
			maxDate: "+0d"
		});
	});
	document.getElementById("sca").value = "";
</script>

<div class="title"><span class="text-purple">참여</span> 정보</div>

<div class="table-list scroll">
	<table >
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
						<div class="icon"><img src="/img/icon-butsicon-big-glay.png" /></div>
						<h5>등록된 내용이 없습니다.</h5>
					</div>
				</td>
			</tr>
			</tbody>
	</table>
</div>
</div><!-- /#wrapper -->

<!-- 등록된 내용이 있는 경우 -->
<div class="table-list scroll">
	<table style="min-width: 1000px">
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
				<tr>
			<td><span class="lightgrey">19</span></td>
			<td>
				<span class="lightgrey">
					2022-08-01					<br>
					20:45				</span>
			</td>
			<td>
				<a href="https://buts.co.kr/shop/item.php?it_id=1659354235" class="item-name">
				<span class="brand"><img src="https://buts.co.kr/thema/Buts/colorset/category/6040.jpg" alt=""></span>
					<span class="name">kg</span>
					<span class="lightgrey">파티번호 : 1659354235</span>
				</a>
			</td>
			<td>
				<strong>ㅇㅆㅇ</strong>
			</td>
            			<td>완료</td>
							<td><strong>0</strong>일</td>		
		
						<td>20원</td>
			<td><span class="text-red">0</span>원</td>
			<td>0원(0%)</td>
			<td><span class="text-purple">20</span>원</td>
		</tr>
				<tr>
			<td><span class="lightgrey">18</span></td>
			<td>
				<span class="lightgrey">
					2022-07-18					<br>
					18:21				</span>
			</td>
			<td>
				<a href="https://buts.co.kr/shop/item.php?it_id=1658071092" class="item-name">
				<span class="brand"><img src="https://buts.co.kr/thema/Buts/colorset/category/1080.jpg" alt=""></span>
					<span class="name">디즈니플러스 두달</span>
					<span class="lightgrey">파티번호 : 1658071092</span>
				</a>
			</td>
			<td>
				<strong>뇌세포</strong>
			</td>
            			<td>사용중</td>
							<td><strong>44</strong>일</td>		
		
						<td>5,490원</td>
			<td><span class="text-red">0</span>원</td>
			<td>0원(0%)</td>
			<td><span class="text-purple">5,490</span>원</td>
		</tr>
				<tr>
			<td><span class="lightgrey">17</span></td>
			<td>
				<span class="lightgrey">
					2022-07-18					<br>
					10:05				</span>
			</td>
			<td>
				<a href="https://buts.co.kr/shop/item.php?it_id=1658071092" class="item-name">
				<span class="brand"><img src="https://buts.co.kr/thema/Buts/colorset/category/1080.jpg" alt=""></span>
					<span class="name">디즈니플러스 두달</span>
					<span class="lightgrey">파티번호 : 1658071092</span>
				</a>
			</td>
			<td>
				<strong>허벌나</strong>
			</td>
            			<td>사용중</td>
							<td><strong>44</strong>일</td>		
		
						<td>5,490원</td>
			<td><span class="text-red">0</span>원</td>
			<td>0원(0%)</td>
			<td><span class="text-purple">5,490</span>원</td>
		</tr>
				<tr>
			<td><span class="lightgrey">16</span></td>
			<td>
				<span class="lightgrey">
					2022-06-18					<br>
					17:55				</span>
			</td>
			<td>
				<a href="https://buts.co.kr/shop/item.php?it_id=1655529789" class="item-name">
				<span class="brand"><img src="https://buts.co.kr/thema/Buts/colorset/category/1080.jpg" alt=""></span>
					<span class="name">디즈니플러스 한달찍먹 싸다쏴</span>
					<span class="lightgrey">파티번호 : 1655529789</span>
				</a>
			</td>
			<td>
				<strong>Whatup</strong>
			</td>
            			<td>완료</td>
							<td><strong>0</strong>일</td>		
		
						<td>2,610원</td>
			<td><span class="text-red">0</span>원</td>
			<td>0원(0%)</td>
			<td><span class="text-purple">2,610</span>원</td>
		</tr>
				<tr>
			<td><span class="lightgrey">15</span></td>
			<td>
				<span class="lightgrey">
					2022-06-18					<br>
					17:49				</span>
			</td>
			<td>
				<a href="https://buts.co.kr/shop/item.php?it_id=1655529789" class="item-name">
				<span class="brand"><img src="https://buts.co.kr/thema/Buts/colorset/category/1080.jpg" alt=""></span>
					<span class="name">디즈니플러스 한달찍먹 싸다쏴</span>
					<span class="lightgrey">파티번호 : 1655529789</span>
				</a>
			</td>
			<td>
				<strong>두다다</strong>
			</td>
            			<td>완료</td>
							<td><strong>0</strong>일</td>		
		
						<td>2,610원</td>
			<td><span class="text-red">0</span>원</td>
			<td>0원(0%)</td>
			<td><span class="text-purple">2,610</span>원</td>
		</tr>
				<tr>
			<td><span class="lightgrey">14</span></td>
			<td>
				<span class="lightgrey">
					2022-06-18					<br>
					14:51				</span>
			</td>
			<td>
				<a href="https://buts.co.kr/shop/item.php?it_id=1655529789" class="item-name">
				<span class="brand"><img src="https://buts.co.kr/thema/Buts/colorset/category/1080.jpg" alt=""></span>
					<span class="name">디즈니플러스 한달찍먹 싸다쏴</span>
					<span class="lightgrey">파티번호 : 1655529789</span>
				</a>
			</td>
			<td>
				<strong>꾸움뻑</strong>
			</td>
            			<td>완료</td>
							<td><strong>0</strong>일</td>		
		
						<td>2,610원</td>
			<td><span class="text-red">0</span>원</td>
			<td>0원(0%)</td>
			<td><span class="text-purple">2,610</span>원</td>
		</tr>
				<tr>
			<td><span class="lightgrey">13</span></td>
			<td>
				<span class="lightgrey">
					2022-04-12					<br>
					16:03				</span>
			</td>
			<td>
				<a href="https://buts.co.kr/shop/item.php?it_id=1649722564" class="item-name">
				<span class="brand"><img src="https://buts.co.kr/thema/Buts/colorset/category/1080.jpg" alt=""></span>
					<span class="name">디즈니플러스 한달만</span>
					<span class="lightgrey">파티번호 : 1649722564</span>
				</a>
			</td>
			<td>
				<strong>창문너머</strong>
			</td>
            			<td>완료</td>
							<td><strong>0</strong>일</td>		
		
						<td>2,490원</td>
			<td><span class="text-red">0</span>원</td>
			<td>0원(0%)</td>
			<td><span class="text-purple">2,490</span>원</td>
		</tr>
				<tr>
			<td><span class="lightgrey">12</span></td>
			<td>
				<span class="lightgrey">
					2022-04-12					<br>
					14:07				</span>
			</td>
			<td>
				<a href="https://buts.co.kr/shop/item.php?it_id=1649722564" class="item-name">
				<span class="brand"><img src="https://buts.co.kr/thema/Buts/colorset/category/1080.jpg" alt=""></span>
					<span class="name">디즈니플러스 한달만</span>
					<span class="lightgrey">파티번호 : 1649722564</span>
				</a>
			</td>
			<td>
				<strong>lovegun07</strong>
			</td>
            			<td>완료</td>
							<td><strong>0</strong>일</td>		
		
						<td>2,490원</td>
			<td><span class="text-red">0</span>원</td>
			<td>0원(0%)</td>
			<td><span class="text-purple">2,490</span>원</td>
		</tr>
				<tr>
			<td><span class="lightgrey">11</span></td>
			<td>
				<span class="lightgrey">
					2022-04-12					<br>
					13:52				</span>
			</td>
			<td>
				<a href="https://buts.co.kr/shop/item.php?it_id=1649722564" class="item-name">
				<span class="brand"><img src="https://buts.co.kr/thema/Buts/colorset/category/1080.jpg" alt=""></span>
					<span class="name">디즈니플러스 한달만</span>
					<span class="lightgrey">파티번호 : 1649722564</span>
				</a>
			</td>
			<td>
				<strong>첼로겉핥기</strong>
			</td>
            			<td>완료</td>
							<td><strong>0</strong>일</td>		
		
						<td>2,490원</td>
			<td><span class="text-red">0</span>원</td>
			<td>0원(0%)</td>
			<td><span class="text-purple">2,490</span>원</td>
		</tr>
				<tr>
			<td><span class="lightgrey">10</span></td>
			<td>
				<span class="lightgrey">
					2021-11-12					<br>
					10:48				</span>
			</td>
			<td>
				<a href="https://buts.co.kr/shop/item.php?it_id=1636677901" class="item-name">
				<span class="brand"><img src="https://buts.co.kr/thema/Buts/colorset/category/1080.jpg" alt=""></span>
					<span class="name">디즈니플러스 한달찍먹</span>
					<span class="lightgrey">파티번호 : 1636677901</span>
				</a>
			</td>
			<td>
				<strong>마라55</strong>
			</td>
            			<td>완료</td>
							<td><strong>0</strong>일</td>		
		
						<td>2,490원</td>
			<td><span class="text-red">0</span>원</td>
			<td>0원(0%)</td>
			<td><span class="text-purple">2,490</span>원</td>
		</tr>
					</tbody>
	</table>
</div>
<div class="page-number" style="border-top: 0">
	<ul>
		<li class="disabled"><a><i class="fa fa-angle-double-left"></i></a></li><li class="disabled"><a><i class="fa fa-angle-left"></i></a></li><li class="active"><a>1</a></li><li><a href="./?ap=saleitem&amp;&amp;page=2">2</a></li><li class="disabled"><a><i class="fa fa-angle-right"></i></a></li><li><a href="./?ap=saleitem&amp;&amp;page=2"><i class="fa fa-angle-double-right"></i></a></li>	</ul>
</div>
<!-- 끝 -->

<!-- JavaScript -->
<script type="text/javascript" src="/js/bootstrap.min.js"></script>
<script>
$(function () {
  var $window = $(window),
    $partnerToggle = $('.partner-toggle'),
    $partnerShade = $('.partner-shade'),
    $partnerNav = $('.partner-nav');

  function navToggle() {
    if ($partnerShade.hasClass('close')) {
      $partnerShade.add($partnerNav).removeClass('close').addClass('open');
      $partnerNav.css({ left: '-220px' }).animate({ left: '0' }, 200);
    } else {
      $partnerNav.animate({ left: '-220px' }, 200, function () {
        $partnerNav.css({ left: '' });
        $partnerShade.add($partnerNav).removeClass('open').addClass('close');
      });
    }
  }

  function resize(){
    if ($window.outerWidth() <= 943) {
      $partnerShade.add($partnerNav).removeClass('open').addClass('close');
    } else {
      $partnerShade.add($partnerNav).removeClass('close open');
    }
  }

  $partnerToggle.add($partnerShade).on('click', function (e) {
    e.preventDefault();
    navToggle();
  });

  $window.on('resize', function () {
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
    "pluginKey": "d3d063c0-7d5d-48f8-8535-0ac91305c985"
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