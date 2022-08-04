<%@ page contentType="text/html; charset=UTF-8"%>

<html>

<body>
	<div class="width-container">
		<div class="title-wrap">
			<div class="title">이벤트</div>

			<div class="title-right">
				<div class="search-bar">
					<form name="fsearch" method="get" role="form">
						<input type="hidden" name="bo_table" value="event"> 
						<input type="hidden" name="sca" value="진행중"> 
						<input type="hidden" name="sop" value="and">
						<!--
			<select name="sfl" id="sfl">
				<option value="wr_subject">제목</option>
				<option value="wr_content">내용</option>
				<option value="wr_subject||wr_content">제목+내용</option>
				<option value="mb_id,1">회원아이디</option>
				<option value="mb_id,0">회원아이디(코)</option>
				<option value="wr_name,1">글쓴이</option>
				<option value="wr_name,0">글쓴이(코)</option>
			</select>
			<input type="text" name="stx" value="" required id="stx" maxlength="20" placeholder="검색어를 입력해 주세요">
			<button type="submit" class="submit">
				<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABMAAAATCAIAAAD9MqGbAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAZtJREFUeNqUk78vQ1Ecxc/tj4mIpqqlJiEhDZI+lfjRsEmsEouhu4U/xYJZwmAxCmMr7aA/EpHGQLr49Sgh6Nb2Orev+l6pas/wXt6953O/997veUJKiW8960gn5FUWb3n16fJgKABtRvT48FvCIEtFnBzKZBSWdb4dAloYi8vC6fxFEtvfkblL2B0IzWNME54+NZd/wEVaLUfD4AhW1wQNdeTRgTyLosul5rz+nzUf77C/Ld9fMbWApRVRG7fldaROVbWGGMVBTjkcSMVAs0lmErJcxmQYDbEazKPSRrNJ8iap8ZBAUxkGw1wlXysN8A00B+GtGAxzlURrKpfU0263kGw3pd/+Q7JDVLfbQg4H1It9a04ahsFRCxmcFjYbUlHVt7/0dK8MtDGJJsm4sCXFomp3Q5iDe1uSBm0ORrb+TN9ESLgrEX/RcZ6spo/q9SOyLjo620l8cBY3ObVnKyysfxnDlY7L66zqG+vzJnklPBs3WfjE7qa0wnVkc5lwPyIbotUkUKxDgBjhTBw8WHsqfMjYsXx/k18CDACJhvJ23Xt3WQAAAABJRU5ErkJggg==" alt="" />
			</button>
            -->
					</form>
				</div>
			</div>

		</div>

		<!-- <div class="pevent-banner">
    <a href=""><img src="../../assets/css/img/banner01.png" style="width: 100%" alt="" /></a>
</div> -->

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


			<!-- <div class="bo_fx">
        
                <ul class="btn_bo_user">
            <li><a href="./board.php?bo_table=event" class="btn_b01">목록</a></li>                    </ul>
            </div> -->


			<!-- <div class="button-align right">
                                    </div> -->

		</form>






		<!-- <h2 id="container_title">이벤트<span class="sound_only"> 목록</span></h2> -->

		<!-- 게시판 목록 시작 { -->
		<!-- <div id="bo_gall" style="width:100%">

    
    <div class="bo_fx">
        <div id="bo_list_total">
            <span>Total 2건</span>
            1 페이지
        </div>

            </div>

    <form name="fboardlist"  id="fboardlist" action="./board_list_update.php" onsubmit="return fboardlist_submit(this);" method="post">
    <input type="hidden" name="bo_table" value="event">
    <input type="hidden" name="sfl" value="">
    <input type="hidden" name="stx" value="">
    <input type="hidden" name="spt" value="-14">
    <input type="hidden" name="page" value="1">
    <input type="hidden" name="sw" value="">

    
    <ul id="gall_ul">
                <li class="gall_li " style="width:202px">
                        <span class="sound_only">
                2            </span>
            <ul class="gall_con">
                <li class="gall_href">
                    <a href="https://buts.co.kr/bbs/board.php?bo_table=event&amp;wr_id=517&amp;sca=%EC%A7%84%ED%96%89%EC%A4%91">
                    <img src="https://buts.co.kr/data/file/event/thumb-2887721934_rEGtp3YW_67f4ab585c9d73997f6f0088b3f8e6bac9834573_202x150.png" alt="" width="202" height="150">                    </a>
                </li>
                <li class="gall_text_href" style="width:202px">
                                        <a href="https://buts.co.kr/bbs/board.php?bo_table=event&amp;wr_id=517&amp;sca=%EC%A7%84%ED%96%89%EC%A4%91">
                        추천인 이벤트!! 가입 시 추천인 입력 하면 500포인트!                        <span class="sound_only">댓글</span><span class="cnt_cmt">5</span><span class="sound_only">개</span>                    </a>
                    <i class="fa fa-heart" aria-hidden="true"></i>                 </li>
                <li>기간:2021-12-01 ~ 2022-12-31</li>
                <li><span class="gall_subject">조회 </span>2830</li>
            </ul>
        </li>
                <li class="gall_li " style="width:202px">
                        <span class="sound_only">
                1            </span>
            <ul class="gall_con">
                <li class="gall_href">
                    <a href="https://buts.co.kr/bbs/board.php?bo_table=event&amp;wr_id=7&amp;sca=%EC%A7%84%ED%96%89%EC%A4%91">
                    <img src="https://buts.co.kr/data/file/event/thumb-2887722085_TeJnW9H0_8374b714be9f2de7d0b2bad37d6c474ac283bbab_202x150.png" alt="" width="202" height="150">                    </a>
                </li>
                <li class="gall_text_href" style="width:202px">
                                        <a href="https://buts.co.kr/bbs/board.php?bo_table=event&amp;wr_id=7&amp;sca=%EC%A7%84%ED%96%89%EC%A4%91">
                        [출석이벤트] 하루 한번 벗츠에 접속 하세요!                        <span class="sound_only">댓글</span><span class="cnt_cmt">1189</span><span class="sound_only">개</span>                    </a>
                    <i class="fa fa-heart" aria-hidden="true"></i>                 </li>
                <li>기간:2019-10-01 ~ 2023-12-31</li>
                <li><span class="gall_subject">조회 </span>7554</li>
            </ul>
        </li>
                    </ul>

        <div class="bo_fx">
        
                <ul class="btn_bo_user">
            <li><a href="./board.php?bo_table=event" class="btn_b01">목록</a></li>                    </ul>
            </div>
        </form>
</div> -->

		<!--  -->

		<!-- 페이지 -->

		<!-- 게시물 검색 시작 { -->
		<!-- <fieldset id="bo_sch">
    <legend>게시물 검색</legend>

    <form name="fsearch" method="get">
    <input type="hidden" name="bo_table" value="event">
    <input type="hidden" name="sca" value="진행중">
    <input type="hidden" name="sop" value="and">
    <label for="sfl" class="sound_only">검색대상</label>
    <select name="sfl" id="sfl">
        <option value="wr_subject">제목</option>
        <option value="wr_content">내용</option>
        <option value="wr_subject||wr_content">제목+내용</option>
        <option value="mb_id,1">회원아이디</option>
        <option value="mb_id,0">회원아이디(코)</option>
        <option value="wr_name,1">글쓴이</option>
        <option value="wr_name,0">글쓴이(코)</option>
    </select>
    <label for="stx" class="sound_only">검색어<strong class="sound_only"> 필수</strong></label>
    <input type="text" name="stx" value="" required id="stx" class="frm_input required" size="15" maxlength="15">
    <input type="submit" value="검색" class="btn_submit">
    </form>
</fieldset> -->
		<!-- } 게시물 검색 끝 -->

		<!-- } 게시판 목록 끝 -->
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
</body>
</html>
