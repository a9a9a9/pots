<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<body class="responsive is-pc">
	<div class="wrap wrapper  ko">
		<div class="body">
			<div class="width-container">
<div id="sct_hhtml" style="background-color:#242424;"></div>
<div class="title-wrap">
	<div class="title">
		<a href="/index?formpath=myPartyJoined" class="text">참여파티</a>
		<a href="/index?formpath=myPartyCreated" class="text" style="margin-left: 20px;"><span class="text-purple">생성파티</a>
	</div>
	<div class="title">
		* 사용기간이 종료된 파티는 참여파티에 보이지 않습니다.
	</div>
</div>
<c:choose>
	<c:when test="${empty created }">
		<div class="empty">
			<div class="icon"><img src="/img/icon-butsicon-big-glay.png" /></div>
			<h5>등록된 내용이 없습니다.</h5>
		</div>
	</c:when>
	<c:otherwise>
		<c:forEach var="list" items="${created }">
			<c:if test="${list.party_left_date > 0}">
				<div class="item-row-my item-row"> 
					<div class="item-type">${list.party_subservice }</div>
					<div class="item-title">${list.party_title }</div>
					<div class="item-info">
						<div class="item-date">					
							파티			
							<c:if test="${list.party_left_date > 0}">		
								<span class="pc-inline">사용중</span>
							</c:if>
							(<strong>${list.party_left_date }</strong>일)
						</div>
					</div>
					<div class="item-members">
						<c:if test="${list.party_member == list.party_now_member}">
							<span class="item-member"></span>
							<span class="item-finish">모집종료</span>
						</c:if>
						<c:if test="${list.party_member > list.party_now_member }">
							<span class="item-member"></span>
							<span class="item-finish" style="background:#84cdcf">모집중</span>								
						</c:if> 
					</div>			
					<div class="item-buttons">
						<a href="index?formpath=partyMain?party_num=${list.party_num }" class="button border round button-purple" style="margin-left:60px;">내역보기</a>								
					</div>
				</div>
				</c:if>
					<c:if test="${list.party_left_date <= 0}"> 
						<div class="item-row-my item-row disabled">
							<div class="item-type">${list.party_subservice }</div>	
							<div class="item-title">${list.party_title }</div>
							<div class="item-info">
								<div class="item-date">					
									파티				
									<span class="pc-inline">사용완료</span>
									(<strong>0</strong>일)
								</div>
							</div>
							<div class="item-members">
								<span class="item-member">
									<img src="/img/icon-butsicon-small-glay.png" srcset="https://buts.co.kr/thema/Buts/colorset/Basic/img/2x/icon-butsicon-small-glay.png 2x" alt="" />
							    </span>
								<span class="item-finish">모집종료</span>
							</div>
							<div class="item-buttons">
								<a href="index?formpath=partyMain?party_num=${list.party_num }" class="button border round button-purple" style="margin-left:60px; color:#84cdcf">내역보기</a>								
							</div>							
						</div>
					</c:if>
				</c:forEach>
				<div id="item_list-nav" class="item-nav"><a href="https://buts.co.kr/skin/apms/list/Miso-Basic4/list_partner.rows.php?lt=Buts&amp;ls=Miso-Basic4&amp;ca_id=10&amp;npg=0&amp;page=2"></a></div>
					<div class="item-more">
						<c:if test="${page != '마지막 페이지'}">
							<a href="${page}" title="더보기">더보기
								<span class="color" style="background:#84cdcf"></span>
							</a>
						</c:if>
					</div>
					</c:otherwise>
				</c:choose>
		</div>
<script>
function date_up(var_it_id, var_it_reflesh_date, var_it_reflesh_cnt) {
	var var_G5_TIME_YMD = '2022-08-19';
	var var_up = '0';
	var confirmYn = '';
	var pt_level = '9';
	var level_up_cont = 0;
	if		(pt_level ==1)	{ level_up_cont = 3; }
	else if	(pt_level < 5)	{ level_up_cont = 2; }
	else if	(pt_level < 10)	{ level_up_cont = 1; }

	if(level_up_cont < 1){
		if(var_up  > 0){
			if (confirm("벗츠UP을 사용 하시겠습니까?")){
				confirmYn = 'Y';
			}
		}else{
			alert('파티장 등급이 낮아 무료이용 횟수가 제공되지 않습니다.\r\n벗츠UP 이용을 원하실 경우 벗츠UP 구매 후 이용 부탁드립니다.');
		}
	}else{
		if(var_it_reflesh_date == var_G5_TIME_YMD){
			if(var_it_reflesh_cnt == level_up_cont){
				if(var_up  > 0){
					if (confirm("하루"+level_up_cont+"회만 무료로 사용하실수 있습니다.\r\n벗츠UP을 사용 하시겠습니까?")){
						confirmYn = 'Y';
					}
				}else{
					alert('하루'+level_up_cont+'회만 무료로 사용하실수 있습니다.\r\n추가로 이용 원하실 경우 벗츠UP을 구매 후 이용 부탁드립니다.');
				}
			}else{
				confirmYn = 'Y';
			}
		}else{
			confirmYn = 'Y';
		}
	}

	if(confirmYn == 'Y'){
		var ajax_url = "https://buts.co.kr/shop/partner/ajax.date_up.php";

		$.ajax({
			type: "POST",
			url: ajax_url,
			data: {
				'v_it_id'   : var_it_id,
				'pt_level'   : pt_level
			},
			cache: false,
			async: false,
			dataType: "json",
			success: function(data, textStatus) {
					error = data.error;
			}
		});
		if (error) {
			alert(error);
			location.reload();
			return false;
		}		
	}
}	
</script></div>
<script>
	$(function(){
		var result = "${pageNo}";
		if(result === "2"){
			var location = document.querySelector("#item_list-nav").offsetTop - 500;
			window.scrollTo({top:location, behavior:'auto'});
		}
	});
</script>

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
</script><div id="sct_thtml"></div>
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