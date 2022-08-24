<%@ page contentType="text/html; charset=UTF-8"%>

<html>

<body>
<div class="body">
<div class="width-container">


<div class="title-wrap">
    <div class="title">이벤트</div>

    <div class="title-right">
		<div class="search-bar">
		<form name="fsearch" method="get" role="form">
			<input type="hidden" name="bo_table" value="event">
			<input type="hidden" name="sca" value="당첨자발표">
			<input type="hidden" name="sop" value="and">
		</form>
		</div>
	</div>

</div>

		<div class="pevent-tab">
			<a href="${root }index?formpath=eventMain">진행중 이벤트</a> 
			<a href="${root }index?formpath=eventWin" class="active">당첨자 발표</a> 
			<a href="${root }index?formpath=eventEnd">종료된 이벤트</a>
		</div>


<form name="fboardlist" id="fboardlist" action="./board_list_update.php" onsubmit="return fboardlist_submit(this);" method="post">
<input type="hidden" name="bo_table" value="event">
<input type="hidden" name="sfl" value="">
<input type="hidden" name="stx" value="">
<input type="hidden" name="spt" value="-14">
<input type="hidden" name="page" value="1">
<input type="hidden" name="sw" value="">

<div class="pevent-list">
    <ul>
                 <li>
                        <div class="thumb">
                <span style="width:100%;height:100%;">no image</span>            </div>
            <div class="info">
                <a href="https://buts.co.kr/bbs/board.php?bo_table=event&amp;wr_id=278&amp;sca=%EB%8B%B9%EC%B2%A8%EC%9E%90%EB%B0%9C%ED%91%9C" class="subject">
                    [5월의 이벤트] 가입만 해도 추천 받아도~ 에어팟프로, 아이패드 획득의 기회가!                    <i class="fa fa-heart" aria-hidden="true"></i>                 </a>
                <span class="state">당첨자발표</span>
                <span class="date">
                
                2021-06-07                
                
                </span>
            </div>
                            <a href="https://buts.co.kr/bbs/board.php?bo_table=event&amp;wr_id=278&amp;sca=%EB%8B%B9%EC%B2%A8%EC%9E%90%EB%B0%9C%ED%91%9C" class="button border">당첨자 보기</a>
                    </li>
                 <li>
                        <div class="thumb">
                <img src="https://buts.co.kr/data/file/event/2887723625_on8MB9la_7ee215d4c9a44a35bb30323f5570c698ad44d368.png" alt="">            </div>
            <div class="info">
                <a href="https://buts.co.kr/bbs/board.php?bo_table=event&amp;wr_id=15&amp;sca=%EB%8B%B9%EC%B2%A8%EC%9E%90%EB%B0%9C%ED%91%9C" class="subject">
                    [당첨자발표] 스타벅스 아메리카노 100% 지급 이벤트                    <i class="fa fa-heart" aria-hidden="true"></i>                 </a>
                <span class="state">당첨자발표</span>
                <span class="date">
                
                2021-01-25                
                
                </span>
            </div>
                            <a href="https://buts.co.kr/bbs/board.php?bo_table=event&amp;wr_id=15&amp;sca=%EB%8B%B9%EC%B2%A8%EC%9E%90%EB%B0%9C%ED%91%9C" class="button border">당첨자 보기</a>
                    </li>
                    </ul>
</div>

		<div class="page-number">
			<ul>
								<li class="disabled"><a><i class="fa fa-angle-double-left"></i></a></li><li class="disabled"><a><i class="fa fa-angle-left"></i></a></li><li class="active"><a>1</a></li><li class="disabled"><a><i class="fa fa-angle-right"></i></a></li><li class="disabled"><a><i class="fa fa-angle-double-right"></i></a></li>							</ul>
		</div>
		<div class="button-align right mg-top-0">
					</div> 

</form>
<script src="https://buts.co.kr/js/sns.js"></script>
<script data-ad-client="ca-pub-8150600701657072" async="" src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js" data-checked-head="true"></script>
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async="" src="https://www.googletagmanager.com/gtag/js?id=UA-163597728-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-163597728-1');
</script>

<!-- Global site tag (gtag.js) - Google Ads: 914988072 --> <script async="" src="https://www.googletagmanager.com/gtag/js?id=AW-914988072"></script> <script> window.dataLayer = window.dataLayer || []; function gtag(){dataLayer.push(arguments);} gtag('js', new Date()); gtag('config', 'AW-914988072'); </script>
		</div>
		</div>
</body>
</html>
