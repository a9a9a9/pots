<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url var="root" value="/" />

<body class="responsive is-pc">
	<div class="wrap wrapper  ko">
		<div class="body">
			<div class="width-container">
				<div id="sct_hhtml" style="background-color:#242424;"></div>
				
				<div class="title">벗츠 추천 영상</div>
				<div class="recommand-list">
					<a href="http://www.youtube.com/watch?v=U9q-iiHgWPk" class="recommand-thumb popup-youtube"><img src="https://img.youtube.com/vi/U9q-iiHgWPk/mqdefault.jpg" alt="" /></a>
					<a href="http://www.youtube.com/watch?v=jhDfERpCtxo" class="recommand-thumb popup-youtube"><img src="https://img.youtube.com/vi/jhDfERpCtxo/mqdefault.jpg" alt="" /></a>
					<a href="http://www.youtube.com/watch?v=6M3bnrPAEuQ" class="recommand-thumb popup-youtube"><img src="https://img.youtube.com/vi/6M3bnrPAEuQ/mqdefault.jpg" alt="" /></a>
					<a href="http://www.youtube.com/watch?v=5YATWse863c" class="recommand-thumb popup-youtube"><img src="https://img.youtube.com/vi/5YATWse863c/mqdefault.jpg" alt="" /></a>
				</div>
				
				<div class="title-wrap">
					<div class="title"><a href="${root}videoProc" class="text">영상</a></div>
					<div class="title-right"><a href="#" class="button border round button-purple">파티 만들기</a></div>
				</div>
				
				<div class="item-list">
					<c:forEach var="list" items="${list}">
						<div class="item-row">
							<div class="item-type">${list.party_subservice}</div>
							<div class="item-title">${list.party_title}</div>
							<div class="item-members">
							<c:forEach begin="0" end="${list.party_now_member - 1 }">
								<span class="item-member"><img src="/img/icon-butsicon-small.png" alt="" /></span>
							</c:forEach>
							
							<c:forEach begin="${list.party_now_member }" end="${list.party_member - 1}">
								<span class="item-member"><img src="/img/icon-butsicon-small-glay.png" alt="" /></span>
							</c:forEach>
							</div>
							
							<div class="item-info">
								<div class="item-date">${list.party_end }<span class="pc-inline">까지</span>(<strong>${list.party_left_date }</strong>일)</div>
								<div class="item-price"><span class="Rajdhani">${list.party_total_charge }</span>원</div>
							</div>
								<a href="#" class="item-button"></a>
						</div>
					</c:forEach>
				</div>
				
					<div id="item_list-nav" class="item-nav"><a href="https://buts.co.kr/skin/apms/list/Miso-Basic4/list.rows.php?lt=Buts&amp;ls=Miso-Basic4&amp;ca_id=10&amp;npg=0&amp;page=2"></a></div>
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
						var $item_list = $('.item-list');
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
			</div>
		</div>
	</div>
</body>