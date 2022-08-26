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
<c:choose>
<c:when test="${empty joined }">
	<div class="empty">
		<div class="icon"><img src="/img/icon-butsicon-big-glay.png" /></div>
		<h5>등록된 내용이 없습니다.</h5>
	</div>
</c:when>
	<c:otherwise>
		<div class="item-list">
			<c:forEach var="list" items="${joined }">
				<c:if test="${list.party_remain > 0 }">
					<div class="item-row-my item-row">	
							<div class="item-type">${list.party_subservice }</div>		
						<div class="item-title">${list.party_title }</div>
						<div class="item-info">
							<div class="item-date">			
								${list.party_end }	
								<span class="pc-inline">까지</span>(<strong>${list.party_remain }</strong>일)
							</div>
				
						</div>
						<div class="item-members"></div>	
						<div class="item-buttons">
							<a href="/index?formpath=partyMain?party_num=${list.party_num }" class="button border round button-purple">파티장 문의</a>		
							<a href="#popup-account${list.party_num }" class="popup-inline button border round button-red">ID/PW 보기</a>
						</div>
						<a href="/index?formpath=partyMain?party_num=${list.party_num }" class="item-button"></a>
					</div>
					<div id="popup-account${list.party_num }" class="popup-magnific mfp-hide white-popup-block">
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
											<input id="${list.party_id }"  onclick="copyText('${list.party_id }')" value="${list.party_id }" readonly style="border:0px;"  class="text-purple">	
										</td>
									</tr>
									<tr>
										<th>비밀번호</th>
										<td>
											<input id="${list.party_pw }"  onclick="copyText('${list.party_pw }')" value="${list.party_pw }" readonly style="border:0px;"  class="text-purple">	
										</td>
									</tr>
								</tbody>
							</table>
						</div>
						<div class="popup-button center">
							<a href="" class="magnific-close button small button-purple">닫기</a>
						</div>
					</div>
					</c:if>
			</c:forEach>
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
	</c:otherwise>
</c:choose>
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
<script async src="https://www.googletagmanager.com/gtag/js?id=AW-914988072"></script> <script> window.dataLayer = window.dataLayer || []; function gtag(){dataLayer.push(arguments);} gtag('js', new Date()); gtag('config', 'AW-914988072'); </script><script src="https://buts.co.kr/js/sns.js"></script>
		</div><!-- .width-container -->
	</div><!-- .body -->

</div>
</body>