<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="imagetoolbar" content="no">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<title>Buts</title>
<link rel="stylesheet" href="https://buts.co.kr/adm/css/admin.sub.css">
<link rel="stylesheet" href="https://buts.co.kr/css/apms.css?ver=180820">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:400,300,600,400italic,700,800" type="text/css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway:300,200,100" type="text/css">
<link rel="stylesheet" href="https://buts.co.kr/shop/partner/skin/Basic/assets/css/bootstrap.min.css" type="text/css" >
<link rel="stylesheet" href="https://buts.co.kr/shop/partner/skin/Basic/partner.css?time=1659429649" type="text/css" >
<link rel="stylesheet" href="https://buts.co.kr/css/level/basic.css?ver=180820">
<!--[if lte IE 8]>
<script src="https://buts.co.kr/js/html5.js"></script>
<![endif]-->
<script>
// 자바스크립트에서 사용하는 전역변수 선언
var g5_url       = "https://buts.co.kr";
var g5_bbs_url   = "https://buts.co.kr/bbs";
var g5_is_member = "1";
var g5_is_admin  = "";
var g5_is_mobile = "";
var g5_bo_table  = "";
var g5_sca       = "";
var g5_pim       = "";
var g5_editor    = "";
var g5_responsive    = "1";
var g5_cookie_domain = "";
var g5_admin_url = "https://buts.co.kr/adm";
</script>
<script src="https://buts.co.kr/js/jquery-1.11.3.min.js"></script>
<script src="https://buts.co.kr/js/jquery-migrate-1.2.1.min.js"></script>
<script src="https://buts.co.kr/lang/korean/lang.js?ver=180820"></script>
<script src="https://buts.co.kr/js/common.js?ver=180820"></script>
<script src="https://buts.co.kr/js/wrest.js?ver=180820"></script>
<script src="https://buts.co.kr/js/placeholders.min.js"></script>
<script src="https://buts.co.kr/js/apms.js?ver=180820"></script>
<link rel="stylesheet" href="https://buts.co.kr/js/font-awesome/css/font-awesome.min.css">
</head>
<body class="responsive is-pc">

<!-- [[ 파트너 페이지 ]] -->

<div class="partner-wrap">
	<!-- header -->
	<div class="partner-header">
		<a class="partner-logo" href="https://buts.co.kr">
			<img src="https://buts.co.kr/thema/Buts/colorset/Basic/img/logo_small.png" title="" />
		</a>
		<ul class="partner-menu">
			<li class="v-bar right">
				<a>에이구</a>
			</li>
			 
			<li class="v-bar right" style="color:#fff;">
				개인 파티장
			</li>
						<li class="v-bar right">
				<a href="https://buts.co.kr">벗츠</a>
			</li>
			<li>
				<a href="https://buts.co.kr/bbs/logout.php">로그아웃</a>
			</li>
		</ul>
		<a href="" class="partner-toggle"><span class="line"></span></a>
	</div>

	<!-- nav -->
	<div class="partner-shade"></div>
	<div class="partner-nav">
		<ul>
						<li class="active">
				<a href="./?ap=list"> 파티관리</a>
			</li>
			<li >
				<a href="./?ap=qalist"> 댓글보기</a>
			</li>
			<li >
				<a href="./?ap=saleitem"> 참여정보</a>
			</li>
			<li >
				<a href="./?ap=order_cancel"> 취소요청</a>
			</li>
			<li >
				<a href="./?ap=cancelitem"> 취소내역</a>
			</li>
			<li >
				<a href="./?ap=paylist"> 출금관리</a>
			</li>
			<li >
				<a href="./?ap=register"> 정보수정</a>
			</li>
								</ul>
	</div>

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
									<li class="active">
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
						에이구					</a>
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
<script src="./script.js"></script>

<!-- [[ 파트너 파티 관리 ]] -->

<form class="form" role="form" name="flist">
<input type="hidden" name="ap" value="">
<input type="hidden" name="save_stx" value="">
<input type="hidden" name="sort" value="">

<div class="partner-well">
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
	<select name="sfl" id="sfl">
		<option value="a.it_id">파티번호</option>
		<option value="a.pt_link1">계정ID</option>
	</select>
	<input type="text" name="stx" value="" id="stx" class="search" placeholder="파티번호 검색어">
	<button type="submit" class="button mini border button-purple">검색</button>
	<a href="./?ap=item" class="button mini button-purple">파티생성</a>
</div>

</form>


<div class="title">
	<span class="text-purple">파티/판매</span> 목록

	<div class="title2">
		<span>
			<a  class="text-purple" href="./?ap=list&amp;sort=d">최신순</a>
		</span>
		<span class=" v-bar left"  style="top :-5px;">
		</span>
		<span >
			<a href="./?ap=list&amp;sort=p">모집중 파티</a>
		</span>
		<span class=" v-bar left"  style="top :-5px;">
		</span>
		<span>
			<a href="./?ap=list&amp;sort=e">연장가능 파티</a>
		</span>
	</div>
</div>

<form class="form" role="form" name="fitemlistupdate" method="post" action="./itemlistupdate.php" onsubmit="return fitemlist_submit(this);" autocomplete="off">
<input type="hidden" name="ap" value="">
<input type="hidden" name="sca" value="">
<input type="hidden" name="sst" value="">
<input type="hidden" name="sod" value="">
<input type="hidden" name="sfl" value="">
<input type="hidden" name="stx" value="">
<input type="hidden" name="page" value="1">

<div class="table-list scroll">
	<table style="min-width: 1000px">
	<thead>
		<tr>
		<th scope="col">
			<div class="input-check" style="margin-right:-8px;">
				<input type="checkbox" name="chkall" value="1" id="chkall" onclick="check_all(this.form)">
				<label for="chkall"></label>
			</div>
		</th>
		<th scope="col">제목</th>
		<th width="10%" scope="col">총금액(일금액)</th>
		<th width="10%" scope="col">모집중(총 인원)</th>
		<th width="8%" scope="col">남은기간(상태)</th>
		<th width="10%" scope="col">종료일</th>
		<th width="10%" scope="col">파티생성일</th>
		<th width="15%" scope="col">관리</th>
		</tr>
	</thead>
	<tbody>
				<tr>
		<td>
			<div class="input-check" style="margin-right:-8px;">
				<input type="checkbox" name="chk[]" value="0" id="chk_0">
				<label for="chk_0"></label>
			</div>
			<input type="hidden" name="it_id[0]" value="1659354235">
		</td>
		<td>
			<a href="https://buts.co.kr/shop/item.php?it_id=1659354235" class="item-name">
				<span class="brand"><img src="https://buts.co.kr/thema/Buts/colorset/category/6040.jpg" alt="" /></span>
				<span class="name">kg</span>
				<span class="lightgrey">
					파티번호 : 1659354235					 / 기타					 / 기타				
				</span>
			</a>
		</td>
		<td><strong>10</strong>원(<strong>10</strong>원)</td>
		<td><strong>0명(총 1명)</strong></td>
					<td><strong>1</strong>일</td>		
		
				<td>
			<span class="lightgrey">
				2022.08.03			</span>
		</td>
		<td class="text-center">
			2022-08-01 20:45:01		</td>
		<td class="text-center">
							<a href="./?ap=item&amp;w=u&amp;it_id=1659354235&amp;fn=2&amp;ca_id=6040" class="button round border button-purple">수정</a>		
										<a href="./?ap=item&amp;w=e&amp;it_id=1659354235&amp;fn=2&amp;ca_id=6040" class="button round button-red">연장방 생성</a>				
		
					</td>
		</tr>
				<tr>
		<td>
			<div class="input-check" style="margin-right:-8px;">
				<input type="checkbox" name="chk[]" value="1" id="chk_1">
				<label for="chk_1"></label>
			</div>
			<input type="hidden" name="it_id[1]" value="1658071092">
		</td>
		<td>
			<a href="https://buts.co.kr/shop/item.php?it_id=1658071092" class="item-name">
				<span class="brand"><img src="https://buts.co.kr/thema/Buts/colorset/category/1080.jpg" alt="" /></span>
				<span class="name">디즈니플러스 두달</span>
				<span class="lightgrey">
					파티번호 : 1658071092					 / #디즈니					 / 영상				
				</span>
			</a>
		</td>
		<td><strong>4,140</strong>원(<strong>90</strong>원)</td>
		<td><strong>0명(총 2명)</strong></td>
					<td><strong>46</strong>일</td>		
		
				<td>
			<span class="lightgrey">
				2022.09.17			</span>
		</td>
		<td class="text-center">
			2022-07-18 00:20:13		</td>
		<td class="text-center">
							<a href="./?ap=item&amp;w=u&amp;it_id=1658071092&amp;fn=2&amp;ca_id=1080" class="button round border button-purple">수정</a>		
										<a href="./?ap=item&amp;w=c&amp;it_id=1658071092&amp;fn=2&amp;ca_id=1080" class="button round border button-red">복사</a>	
					</td>
		</tr>
				<tr>
		<td>
			<div class="input-check" style="margin-right:-8px;">
				<input type="checkbox" name="chk[]" value="2" id="chk_2">
				<label for="chk_2"></label>
			</div>
			<input type="hidden" name="it_id[2]" value="1655529789">
		</td>
		<td>
			<a href="https://buts.co.kr/shop/item.php?it_id=1655529789" class="item-name">
				<span class="brand"><img src="https://buts.co.kr/thema/Buts/colorset/category/1080.jpg" alt="" /></span>
				<span class="name">디즈니플러스 한달찍먹 싸다쏴</span>
				<span class="lightgrey">
					파티번호 : 1655529789					 / #디즈니					 / 영상				
				</span>
			</a>
		</td>
		<td><strong>0</strong>원(<strong>90</strong>원)</td>
		<td><strong>0명(총 3명)</strong></td>
					<td><strong>0</strong>일</td>		
		
				<td>
			<span class="lightgrey">
				종료			</span>
		</td>
		<td class="text-center">
			2022-06-18 14:23:54		</td>
		<td class="text-center">
										<a href="./?ap=item&amp;w=c&amp;it_id=1655529789&amp;fn=2&amp;ca_id=1080" class="button round border button-red">복사</a>	
					</td>
		</tr>
				<tr>
		<td>
			<div class="input-check" style="margin-right:-8px;">
				<input type="checkbox" name="chk[]" value="3" id="chk_3">
				<label for="chk_3"></label>
			</div>
			<input type="hidden" name="it_id[3]" value="1649722564">
		</td>
		<td>
			<a href="https://buts.co.kr/shop/item.php?it_id=1649722564" class="item-name">
				<span class="brand"><img src="https://buts.co.kr/thema/Buts/colorset/category/1080.jpg" alt="" /></span>
				<span class="name">디즈니플러스 한달만</span>
				<span class="lightgrey">
					파티번호 : 1649722564					 / #디즈니					 / 영상				
				</span>
			</a>
		</td>
		<td><strong>0</strong>원(<strong>83</strong>원)</td>
		<td><strong>0명(총 3명)</strong></td>
					<td><strong>0</strong>일</td>		
		
				<td>
			<span class="lightgrey">
				종료			</span>
		</td>
		<td class="text-center">
			2022-04-12 09:21:30		</td>
		<td class="text-center">
										<a href="./?ap=item&amp;w=c&amp;it_id=1649722564&amp;fn=2&amp;ca_id=1080" class="button round border button-red">복사</a>	
					</td>
		</tr>
				<tr>
		<td>
			<div class="input-check" style="margin-right:-8px;">
				<input type="checkbox" name="chk[]" value="4" id="chk_4">
				<label for="chk_4"></label>
			</div>
			<input type="hidden" name="it_id[4]" value="1636677901">
		</td>
		<td>
			<a href="https://buts.co.kr/shop/item.php?it_id=1636677901" class="item-name">
				<span class="brand"><img src="https://buts.co.kr/thema/Buts/colorset/category/1080.jpg" alt="" /></span>
				<span class="name">디즈니플러스 한달찍먹</span>
				<span class="lightgrey">
					파티번호 : 1636677901					 / #디즈니					 / 영상				
				</span>
			</a>
		</td>
		<td><strong>0</strong>원(<strong>83</strong>원)</td>
		<td><strong>0명(총 10명)</strong></td>
					<td><strong>0</strong>일</td>		
		
				<td>
			<span class="lightgrey">
				종료			</span>
		</td>
		<td class="text-center">
			2021-11-12 09:50:46		</td>
		<td class="text-center">
										<a href="./?ap=item&amp;w=c&amp;it_id=1636677901&amp;fn=2&amp;ca_id=1080" class="button round border button-red">복사</a>	
					</td>
		</tr>
					</tbody>
	</table>
</div>

<div class="page-number" style="border-top: 0">
	<ul>
		<li class="disabled"><a><i class="fa fa-angle-double-left"></i></a></li><li class="disabled"><a><i class="fa fa-angle-left"></i></a></li><li class="active"><a>1</a></li><li class="disabled"><a><i class="fa fa-angle-right"></i></a></li><li class="disabled"><a><i class="fa fa-angle-double-right"></i></a></li>	</ul>
</div>


<div class="button-align left mg-top-0">
	<input type="submit" name="act_button" value="선택삭제" onclick="document.pressed=this.value" class="button round border button-purple">
	<input type="submit" name="act_button" value="선택마감" onclick="document.pressed=this.value" class="button round border button-purple">
</div>

</form>

<script>
function fitemlist_submit(f)
{
    if (!is_checked("chk[]")) {
        alert(document.pressed+" 하실 항목을 하나 이상 선택하세요.");
        return false;
    }

    if(document.pressed == "선택삭제") {
        if(!confirm("선택한 자료를 정말 삭제하시겠습니까?")) {
            return false;
        }
    }

if(document.pressed == "선택마감") {
	if(!confirm("선택한 자료를 정말 마감하시겠습니까?")) {
		return false;
	}
}


    return true;
}
</script>
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
