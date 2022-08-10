<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:import url="partyIndex.jsp"/> 
<script>
window.onload=function(){
	document.getElementById('partyCommentList').classList.add('active');
}
</script>

<!-- body -->
<div class="partner-body">

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
	<c:forEach var="comment" items="${list }">
		<c:choose>
			<c:when test="${empty comment }">
				<div class="empty">
					<div class="icon"><img src="/img/icon-butsicon-big-glay.png" /></div>
					<h5>등록된 문의가 없습니다.</h5>
				</div>
			</c:when>
			<c:otherwise>
				<tr>
					<td>${comment.nick }</td>
					<td>
						<span class="lightgrey">${comment.comment_date }</span>
					</td>
					<td>
						<a href="" class="item-name">
							<span class="name"> 
								<c:choose>
									<c:when test="${comment.comment_private == 1}">
										<i class="fa fa-lock orange"></i>
										${comment.comment }<br>
										<span class="lightgrey"> ${comment.party_title } </span>
									</c:when>
									<c:otherwise>
										${comment.comment }<br>
										<span class="lightgrey"> ${comment.party_title } </span>
									</c:otherwise>
								</c:choose>
							</span>
							<!-- <span class="lightgrey"> title </span> -->
						</a>
					</td>
				</tr>
			</c:otherwise>
			</c:choose>
		</c:forEach> 
	</tbody>
  </table>
</div>
<div class="page-number" style="border-top: 0">
	<ul>
		<li class="disabled">
			<a><i class="fa fa-angle-double-left"></i></a>
		</li>
		
		<li class="disabled">
			<a><i class="fa fa-angle-left"></i></a>
		</li>
		<li class="active">
			<a>1</a>
		</li>
		<li class="disabled">
			<a><i class="fa fa-angle-right"></i></a>
		</li>
		
		<li class="disabled">
			<a><i class="fa fa-angle-double-right"></i></a>
		</li>	
		</ul>
</div>


<script>
function more_iq(id) {
	$("#" + id).toggle();
}
</script>	</div>

<!-- 끝 -->



<script>
function more_iq(id) {
	$("#" + id).toggle();
}
</script>	
</div><!-- /#page-wrapper -->
</div><!-- /#wrapper -->

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
</body>
</html>