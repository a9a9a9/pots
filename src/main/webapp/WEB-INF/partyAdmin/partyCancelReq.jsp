<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:import url="partyIndex.jsp"/> 
	<!-- body -->
	<div class="partner-body">
		

<!-- 
<div id="wrapper">
	<nav class="navbar navbar-inverse navbar-fixed-top en" role="navigation">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="https://buts.co.kr/shop/partner/">
				<span>
					<img src="https://buts.co.kr/img/buts/logo_small.png" title="">
				</span>
			</a>
		</div>

		<div class="collapse navbar-collapse navbar-ex1-collapse">
			<ul class="nav navbar-nav side-nav">
									<li>
						<a href="https://buts.co.kr/shop/partner/?ap=list">
							<img src="https://buts.co.kr/img/buts/icon-group-manage-w.png" style="margin-left:5px;margin-right:5px;"/>
						파티관리</a>
					</li>
					<li>
						<a href="https://buts.co.kr/shop/partner/?ap=qalist">
							<img src="https://buts.co.kr/img/buts/icon-inquiry-manage.png" style="margin-left:5px;margin-right:5px;"/>
						 문의관리</a>
					</li>
					<li>
						<a href="https://buts.co.kr/shop/partner/?ap=saleitem">
							<img src="https://buts.co.kr/img/buts/icon-participant-manage.png" style="margin-left:5px;margin-right:5px;"/>
						 참여정보</a>
					</li>
					<li class="active">
						<a href="https://buts.co.kr/shop/partner/?ap=order_cancel">
							<img src="https://buts.co.kr/img/buts/icon-cancel-request.png" style="margin-left:5px;margin-right:5px;"/>
						 취소요청</a>
					</li>
					<li>
						<a href="https://buts.co.kr/shop/partner/?ap=cancelitem">
							<img src="https://buts.co.kr/img/buts/icon-cancel-list.png" style="margin-left:5px;margin-right:5px;"/>
						취소내역</a>
					</li>
					<li>
						<a href="https://buts.co.kr/shop/partner/?ap=paylist">
							<img src="https://buts.co.kr/img/buts/icon-withdraw-manage.png" style="margin-left:5px;margin-right:5px;"/>
						 출금관리</a>
					</li>
											</ul>
			<ul class="nav navbar-nav navbar-right">
				<li class="hidden-xs">
					<a>
					<img src="https://buts.co.kr/img/buts/icon-mypage-small.png" style="margin-left:5px;margin-right:5px;"/>
						ㅇㅆㅇ					</a>
				</li>
								<li>
					<a href="https://buts.co.kr"><i class="fa fa-shopping-cart fa-lg"></i> 벗츠</a>
				</li>
				<li>
					<a href="https://buts.co.kr"><i class="fa fa-users fa-lg"></i> 커뮤니티</a>
				</li>
				<li>
					<a href="https://buts.co.kr/bbs/logout.php">
						<img src="https://buts.co.kr/img/buts/logout-small.png" style="margin-left:5px;margin-right:5px;"/>
						로그아웃
					</a>
				</li>
			</ul>
		</div>
	</nav>

	<div id="page-wrapper"> -->
<link rel="stylesheet" href="https://buts.co.kr/plugin/jquery-ui/jquery-ui.css" type="text/css">
<link rel="stylesheet" href="https://buts.co.kr/plugin/jquery-ui/style.css" type="text/css">
<script src="https://buts.co.kr/plugin/jquery-ui/jquery-ui.min.js"></script>
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
<!-- [[ 파트너 취소요청 ]] -->

<form class="form" role="form" name="frm_saleitem" method="get">
<input type="hidden" name="ap" value="order_cancel">
<div class="partner-well">
	<span class="calendar">
		<span class="icon"><i class="fa fa-calendar"></i></span>
		<input type="text" name="fr_date" value="" id="fr_date" size="8" maxlength="8" readonly placeholder="시작일">
	</span>
	<span class="calendar">
		<span class="icon"><i class="fa fa-calendar"></i></span>
		<input type="text" name="to_date" value="" id="to_date" size="8" maxlength="8" readonly placeholder="종료일">
	</span>
	<select name="sfl" id="sfl">
		<option value="a.it_name">서비스명</option>
		<option value="a.it_id">파티번호</option>
		<option value="a.od_id">서비스번호</option>
	</select>
	<input type="text" name="stx" value="" id="stx" class="search" placeholder="파티번호 검색어">
	<button type="submit" class="button mini border button-purple">검색</button>
	<a href="./?ap=order_cancel" class="button mini button-purple">리셋</a>
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
</script>

<div class="title"><span class="text-purple">취소</span> 요청</div>

<div class="table-list scroll">
	<table >
	<thead>
		<tr>
						<th scope="col">신청일</th>
			<th scope="col">구매자</th>
			<th scope="col">상태</th>
			<th scope="col">파티명</th>
			<th scope="col">상태</th>
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
						<div class="icon"><img src="https://buts.co.kr/thema/Buts/colorset/Basic/img/icon-butsicon-big-glay.png" /></div>
						<h5>등록된 내용이 없습니다.</h5>
					</div>
				</td>
			</tr>
			</tbody>
	</table>
</div>

	</div><!-- /#page-wrapper -->
</div><!-- /#wrapper -->

<!-- JavaScript -->
<script type="text/javascript" src="https://buts.co.kr/shop/partner/skin/Basic/assets/js/bootstrap.min.js"></script>
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
