<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<body class="responsive is-pc">
	<div class="wrap wrapper  ko">
		<div class="body">
			<div class="width-container">
<div id="sct_hhtml"></div>


<div class="title-wrap">
	<div class="title">
		<a href="/index?formpath=myPartyJoined" class="text"><span class="text-purple">참여파티</span></a>
		<a href="/index?formpath=myPartyCreated" class="text" style="margin-left: 20px;">생성파티</a>
	</div>
	<div class="title">
		* 사용기간이 종료된 파티는 참여파티에 보이지 않습니다.
	</div>
</div>
<div class="item-list">
	
<div class="item-row-my item-row">

		
	<div class="item-type">기타</div>
	<div class="item-title">kg</div>
	<div class="item-info">
		<div class="item-date">			
			22.08.21	
			<span class="pc-inline">까지</span>(<strong>2</strong>일)
		</div>
		<!-- <div class="item-price"><span class="Rajdhani">20</span>원</div> -->
	</div>
	<div class="item-members">
											<span class="item-member"><img src="https://buts.co.kr/thema/Buts/colorset/Basic/img/icon-butsicon-small.png" alt="" /></span>
																	<span class="item-member"><img src="https://buts.co.kr/thema/Buts/colorset/Basic/img/icon-butsicon-small-glay.png" alt="" /></span>
									</div>	
				<div class="item-tip">	</div>
			<div class="item-buttons">
		<a href="./item.php?it_id=1660890917&amp;page=1" class="button border round button-purple">파티장 문의</a>		
					<a href="#popup-account1660890917" class="popup-inline button border round button-red">ID/PW 보기</a>
			</div>
	<a href="./item.php?it_id=1660890917&amp;page=1" class="item-button"></a>
</div>
<div id="popup-account1660890917" class="popup-magnific mfp-hide white-popup-block">
	<h3><span class="text-purple">계정</span> 정보</h3>
	<div class="popup-table">
		<table>
			<colgroup>
			<col style="width: 30%" />
			<col />
			</colgroup>
			<tbody>
			<tr>
				<th>계정</th>
				<td>
					<input id="myID1660890917"  onclick="copyText('myID1660890917')" value="kg1234@" readonly style="border:0px;"  class="text-purple">	
				</td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td>
					<input id="myPW1660890917"  onclick="copyText('myPW1660890917')" value="1234" readonly style="border:0px;"  class="text-purple">	
				</td>
			</tr>
			</tbody>
		</table>
	</div>
	<div class="popup-button center">
		<a href="" class="magnific-close button small button-purple">닫기</a>
	</div>
</div>

<script>

function copyText(copy_val) {
		var copyText  = document.getElementById(copy_val);
		copyText.select();
		copyText.setSelectionRange(0, 99999);
		document.execCommand("Copy");
		alert('복사 되었습니다.');
}
</script>
</div>
	<div id="item_list-nav" class="item-nav"><a href="https://buts.co.kr/skin/apms/list/Miso-Basic4/list_my.rows.php?lt=Buts&amp;ls=Miso-Basic4&amp;ca_id=10&amp;npg=0&amp;page=2"></a></div>
			<div class="item-more">
			<a href="#" title="더보기">
				더보기
				<span class="color"> 
					<span class="sound_only">더보기</span>
				</span>
			</a>
		</div>
	
<div class="button-align right">
		<a href="https://buts.co.kr/shop/partner/?ap=item" class="button small button-red">등록</a>
			<a href="https://buts.co.kr/shop/partner/" class="button small button-blue">관리</a>
		</div>

<script>
	$(function(){
		var $item_list =  $('.item-list');
		$item_list.imagesLoaded(function(){
			$item_list.masonry({
				columnWidth : '.item-row',
				itemSelector : '.item-row',
				percentPosition: true,
				isAnimated: true
			});
		});
				$item_list.infinitescroll({
			navSelector  : '#item_list-nav', 
			nextSelector : '#item_list-nav a',
			itemSelector : '.item-row', 
			loading: {
				msgText: '로딩 중...',
				finishedMsg: '더이상 서비스가 없습니다.',
				img: 'https://buts.co.kr/plugin/apms/img/loader.gif',
			}
		}, function( newElements ) {
			var $newElems = $( newElements ).css({ opacity: 0 });
			$newElems.imagesLoaded(function(){
				$newElems.animate({ opacity: 1 });
				$item_list.masonry('appended', $newElems, true);
			});
		});
				$(window).unbind('#item_list .infscr');
		$('.item-more a').click(function(){
		   $item_list.infinitescroll('retrieve');
		   $('#infscr-loading').css({position:'fixed', top: '50%', left: '50%', margin: '-35px 0 0 -35px', zIndex: 100});
		   $('#item_list-nav').show();
			return false;
		});
		$(document).ajaxError(function(e,xhr,opt){
			if(xhr.status==404) $('#item_list-nav').remove();
		});
						$(".sidebar-toggle").on('click', function(){
			setTimeout(function(){ $item_list.masonry('layout'); }, 500);
		});
		$(".main-sidebar").on('hover', function(){
			setTimeout(function(){ 
				$(".sidebar-expanded-on-hover .main-sidebar").mouseover(function() { 
					$item_list.masonry('layout');
				}).mouseout(function() { 
					setTimeout(function(){ $item_list.masonry('layout'); }, 500);
				});
			}, 500);
		});
	});
</script>
<div id="sct_thtml"></div>
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