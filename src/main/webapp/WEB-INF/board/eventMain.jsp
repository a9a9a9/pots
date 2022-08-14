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
						<input type="hidden" name="sca" value="진행중"> 
						<input type="hidden" name="sop" value="and">
					</form>
				</div>
			</div>

		</div>

		<div class="pevent-tab">
			<a href="${root }index?formpath=eventMain" class="active">진행중 이벤트</a> 
			<a href="${root }index?formpath=eventWin">당첨자 발표</a> 
			<a href="${root }index?formpath=eventEnd">종료된 이벤트</a>
		</div>


		<form name="fboardlist" id="fboardlist"
			action="./board_list_update.php"
			onsubmit="return fboardlist_submit(this);" method="post">
			<input type="hidden" name="bo_table" value="event"> <input
				type="hidden" name="sfl" value=""> <input type="hidden"
				name="stx" value=""> <input type="hidden" name="spt"
				value="-14"> <input type="hidden" name="page" value="1">
			<input type="hidden" name="sw" value="">

			<div class="pevent-list">
				<ul>
					<li>
						<div class="thumb">
							<img
								src="https://buts.co.kr/data/file/event/2887721934_rEGtp3YW_67f4ab585c9d73997f6f0088b3f8e6bac9834573.png"
								alt="">
						</div>
						<div class="info">
							<a
								href="https://buts.co.kr/bbs/board.php?bo_table=event&amp;wr_id=517&amp;sca=%EC%A7%84%ED%96%89%EC%A4%91"
								class="subject"> 추천인 이벤트!! 가입 시 추천인 입력 하면 500포인트! <i
								class="fa fa-heart" aria-hidden="true"></i>
							</a> <span class="state">진행중</span> <span class="date">

								2021-12-01 ~ 2022-12-31 </span>
						</div>
					</li>
					<li>
						<div class="thumb">
							<img
								src="https://buts.co.kr/data/file/event/2887722085_TeJnW9H0_8374b714be9f2de7d0b2bad37d6c474ac283bbab.png"
								alt="">
						</div>
						<div class="info">
							<a
								href="https://buts.co.kr/bbs/board.php?bo_table=event&amp;wr_id=7&amp;sca=%EC%A7%84%ED%96%89%EC%A4%91"
								class="subject"> [출석이벤트] 하루 한번 벗츠에 접속 하세요! <i
								class="fa fa-heart" aria-hidden="true"></i>
							</a> <span class="state">진행중</span> <span class="date">

								2019-10-01 ~ 2023-12-31 </span>
						</div>
					</li>
				</ul>
			</div>

			<div class="page-number">
				<ul>
					<li class="disabled"><a><i class="fa fa-angle-double-left"></i></a></li>
					<li class="disabled"><a><i class="fa fa-angle-left"></i></a></li>
					<li class="active"><a>1</a></li>
					<li class="disabled"><a><i class="fa fa-angle-right"></i></a></li>
					<li class="disabled"><a><i
							class="fa fa-angle-double-right"></i></a></li>
				</ul>
			</div>
			<div class="button-align right mg-top-0"></div>

		</form>
		<script src="https://buts.co.kr/js/sns.js"></script>
		<script data-ad-client="ca-pub-8150600701657072" async=""
			src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"
			data-checked-head="true"></script>
		<!-- Global site tag (gtag.js) - Google Analytics -->
		<script async=""
			src="https://www.googletagmanager.com/gtag/js?id=UA-163597728-1"></script>
		<script>
			window.dataLayer = window.dataLayer || [];
			function gtag() {
				dataLayer.push(arguments);
			}
			gtag('js', new Date());

			gtag('config', 'UA-163597728-1');
		</script>

		<script async=""
			src="https://www.googletagmanager.com/gtag/js?id=AW-914988072"></script>
		<script>
			window.dataLayer = window.dataLayer || [];
			function gtag() {
				dataLayer.push(arguments);
			}
			gtag('js', new Date());
			gtag('config', 'AW-914988072');
		</script>
	</div>
	</div>
</body>
</html>
