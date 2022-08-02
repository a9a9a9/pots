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
					<li class="active">
						<a href="https://buts.co.kr/shop/partner/?ap=qalist">
							<img src="https://buts.co.kr/img/buts/icon-inquiry-manage.png" style="margin-left:5px;margin-right:5px;"/>
						 문의관리</a>
					</li>
					<li>
						<a href="https://buts.co.kr/shop/partner/?ap=saleitem">
							<img src="https://buts.co.kr/img/buts/icon-participant-manage.png" style="margin-left:5px;margin-right:5px;"/>
						 참여정보</a>
					</li>
					<li>
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

<!-- [[ 파트너 문의관리 ]] -->
<form class="form" role="form" name="flist">
<input type="hidden" name="page" value="1">
</form>

<div class="title"><span class="text-purple">댓글</span> 보기</div>

<div class="table-list scroll">
  <table style="min-width: 1000px">
	<thead>
	  <tr>
		<th width="10%" scope="col">문의자</th>
		<th width="10%" scope="col">작성일</th>
		<th scope="col">제목</th>
	  </tr>
	</thead>
	<tbody>
			</tbody>
  </table>
</div>

<div class="empty">
	<div class="icon"><img src="https://buts.co.kr/thema/Buts/colorset/Basic/img/icon-butsicon-big-glay.png" /></div>
	<h5>등록된 문의가 없습니다.</h5>
</div>



<script>
function more_iq(id) {
	$("#" + id).toggle();
}
</script>	</div><!-- /#page-wrapper -->
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