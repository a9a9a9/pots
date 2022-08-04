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
						<input type="hidden" name="bo_table" value="event"> <input
							type="hidden" name="sca" value="종료"> <input type="hidden"
							name="sop" value="and">
					</form>
				</div>
			</div>

		</div>

		<div class="pevent-tab">
			<a href="${root }index?formpath=eventMain">진행중 이벤트</a>
			<a href="${root }index?formpath=eventWin">당첨자 발표</a> 
			<a href="${root }index?formpath=eventEnd" class="active">종료된 이벤트</a>
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
					<li class="finish">
						<div class="thumb">
							<img
								src="https://buts.co.kr/data/file/event/2887721934_BT6dV9jc_0a6d18c52e09d62fe7bcd556fb451613d9b51533.png"
								alt="">
						</div>
						<div class="info">
							<a
								href="https://buts.co.kr/bbs/board.php?bo_table=event&amp;wr_id=1980&amp;sca=%EC%A2%85%EB%A3%8C"
								class="subject"> 6월 신규가입 100% 당첨 이벤트 <i class="fa fa-heart"
								aria-hidden="true"></i>
							</a> <span class="state">종료</span> <span class="date">

								2022-06-10 </span>
						</div>
					</li>
					<li class="finish">
						<div class="thumb">
							<img
								src="https://buts.co.kr/data/file/event/2887722500_p6M0OJVA_3e85f6e2bbe7afa1c90b14d276fdb967712985f8.png"
								alt="">
						</div>
						<div class="info">
							<a
								href="https://buts.co.kr/bbs/board.php?bo_table=event&amp;wr_id=783&amp;sca=%EC%A2%85%EB%A3%8C"
								class="subject"> 5월 신규가입 100% 당첨 이벤트 <i class="fa fa-heart"
								aria-hidden="true"></i>
							</a> <span class="state">종료</span> <span class="date">

								2022-05-31 </span>
						</div>
					</li>
					<li class="finish">
						<div class="thumb">
							<img
								src="https://buts.co.kr/data/file/event/2887716608_jzv6SQeN_086e932e86ac36b9eb2ed3ab5423ec9ba5de79f1.png"
								alt="">
						</div>
						<div class="info">
							<a
								href="https://buts.co.kr/bbs/board.php?bo_table=event&amp;wr_id=283&amp;sca=%EC%A2%85%EB%A3%8C"
								class="subject"> [8월의 이벤트] 가입즉시 2,000포인트, 추천인 입력 시 서로 서로
								1,000 포인트 추가 지급 <i class="fa fa-heart" aria-hidden="true"></i>
							</a> <span class="state">종료</span> <span class="date">

								2021-08-31 </span>
						</div>
					</li>
					<li class="finish">
						<div class="thumb">
							<img
								src="https://buts.co.kr/data/file/event/2887716608_aXJ7p2rW_8bc1817776398af0806b4905c0d96e1315aad17b.png"
								alt="">
						</div>
						<div class="info">
							<a
								href="https://buts.co.kr/bbs/board.php?bo_table=event&amp;wr_id=247&amp;sca=%EC%A2%85%EB%A3%8C"
								class="subject"> [5월의 이벤트] 가입만 해도 추천 받아도~ 에어팟프로, 아이패드 획득의
								기회가! <i class="fa fa-heart" aria-hidden="true"></i>
							</a> <span class="state">종료</span> <span class="date">

								2021-05-31 </span>
						</div>
					</li>
					<li class="finish">
						<div class="thumb">
							<img
								src="https://buts.co.kr/data/file/event/2887716608_17Dv9qmL_cb7e5ae5a8e236b86223f5e9059f2b93ceba388b.png"
								alt="">
						</div>
						<div class="info">
							<a
								href="https://buts.co.kr/bbs/board.php?bo_table=event&amp;wr_id=219&amp;sca=%EC%A2%85%EB%A3%8C"
								class="subject"> [4월의 이벤트] 추천인 포인트 3배 적립 이벤트 <i
								class="fa fa-heart" aria-hidden="true"></i>
							</a> <span class="state">종료</span> <span class="date">

								2021-04-30 </span>
						</div>
					</li>
					<li class="finish">
						<div class="thumb">
							<img
								src="https://buts.co.kr/data/file/event/2887723625_8lveuzZk_a57e797fd00baa7e83d083408f16401e01901920.png"
								alt="">
						</div>
						<div class="info">
							<a
								href="https://buts.co.kr/bbs/board.php?bo_table=event&amp;wr_id=22&amp;sca=%EC%A2%85%EB%A3%8C"
								class="subject"> [3월의 이벤트] 벗츠 포스팅 이벤트 <i class="fa fa-heart"
								aria-hidden="true"></i>
							</a> <span class="state">종료</span> <span class="date">

								2021-03-18 </span>
						</div>
					</li>
					<li class="finish">
						<div class="thumb">
							<img
								src="https://buts.co.kr/data/file/event/2887723625_V3q5CQyG_88f393058be3e1deed1627330c0d673b2abc64c3.png"
								alt="">
						</div>
						<div class="info">
							<a
								href="https://buts.co.kr/bbs/board.php?bo_table=event&amp;wr_id=14&amp;sca=%EC%A2%85%EB%A3%8C"
								class="subject"> [1월의 이벤트] 스타벅스 카페 아메리카노 100% 지급 이벤트 <i
								class="fa fa-heart" aria-hidden="true"></i>
							</a> <span class="state">종료</span> <span class="date">

								2021-01-24 </span>
						</div>
					</li>
					<li class="finish">
						<div class="thumb">
							<img
								src="https://buts.co.kr/data/file/event/2887722085_5LYfT64v_6e63c323b6256a4c459b837adf4cbddc7e4cc428.png"
								alt="">
						</div>
						<div class="info">
							<a
								href="https://buts.co.kr/bbs/board.php?bo_table=event&amp;wr_id=10&amp;sca=%EC%A2%85%EB%A3%8C"
								class="subject"> 추천인 이벤트!! 가입 시 추천인 입력 하면 500포인트! <i
								class="fa fa-heart" aria-hidden="true"></i>
							</a> <span class="state">종료</span> <span class="date">

								2021-12-31 </span>
						</div>
					</li>
					<li class="finish">
						<div class="thumb">
							<img
								src="https://buts.co.kr/data/file/event/2887722085_8EKL9XQc_66656d69a60bc6ced5f6299d3052dcf20efd5581.png"
								alt="">
						</div>
						<div class="info">
							<a
								href="https://buts.co.kr/bbs/board.php?bo_table=event&amp;wr_id=6&amp;sca=%EC%A2%85%EB%A3%8C"
								class="subject"> 포인트 시스템 OPEN!! 가입자 전원에게 1,000포인트 쏩니다! <i
								class="fa fa-heart" aria-hidden="true"></i>
							</a> <span class="state">종료</span> <span class="date">

								2021-09-30 </span>
						</div>
					</li>
					<li class="finish">
						<div class="thumb">
							<img
								src="https://buts.co.kr/data/file/event/2887722085_RvBksnNY_055e88173940d386b7ba38ea725481bae19dd0b5.png"
								alt="">
						</div>
						<div class="info">
							<a
								href="https://buts.co.kr/bbs/board.php?bo_table=event&amp;wr_id=4&amp;sca=%EC%A2%85%EB%A3%8C"
								class="subject"> 2020년 2월 이벤트!! 게릴라 무료 모집!! <i
								class="fa fa-heart" aria-hidden="true"></i>
							</a> <span class="state">종료</span> <span class="date">

								2020-02-29 </span>
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

		<!-- Global site tag (gtag.js) - Google Ads: 914988072 -->
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