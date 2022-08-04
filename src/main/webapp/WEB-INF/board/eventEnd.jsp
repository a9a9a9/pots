<%@ page contentType="text/html; charset=UTF-8"%>

<html>

<body>

	<div class="width-container">

		<div class="title-wrap">
			<div class="title">이벤트</div>

			<div class="title-right">
				<div class="search-bar">
					<form name="fsearch" method="get" role="form">
						<input type="hidden" name="bo_table" value="event"> <input
							type="hidden" name="sca" value="종료"> <input type="hidden"
							name="sop" value="and">
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
            <span>Total 10건</span>
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
                10            </span>
            <ul class="gall_con">
                <li class="gall_href">
                    <a href="https://buts.co.kr/bbs/board.php?bo_table=event&amp;wr_id=1980&amp;sca=%EC%A2%85%EB%A3%8C">
                    <img src="https://buts.co.kr/data/file/event/thumb-2887721934_BT6dV9jc_0a6d18c52e09d62fe7bcd556fb451613d9b51533_202x150.png" alt="" width="202" height="150">                    </a>
                </li>
                <li class="gall_text_href" style="width:202px">
                                        <a href="https://buts.co.kr/bbs/board.php?bo_table=event&amp;wr_id=1980&amp;sca=%EC%A2%85%EB%A3%8C">
                        6월 신규가입 100% 당첨 이벤트                        <span class="sound_only">댓글</span><span class="cnt_cmt">788</span><span class="sound_only">개</span>                    </a>
                    <i class="fa fa-heart" aria-hidden="true"></i>                 </li>
                <li>기간:2022-06-02 ~ 2022-06-10</li>
                <li><span class="gall_subject">조회 </span>7239</li>
            </ul>
        </li>
                <li class="gall_li " style="width:202px">
                        <span class="sound_only">
                9            </span>
            <ul class="gall_con">
                <li class="gall_href">
                    <a href="https://buts.co.kr/bbs/board.php?bo_table=event&amp;wr_id=783&amp;sca=%EC%A2%85%EB%A3%8C">
                    <img src="https://buts.co.kr/data/file/event/thumb-2887722500_p6M0OJVA_3e85f6e2bbe7afa1c90b14d276fdb967712985f8_202x150.png" alt="" width="202" height="150">                    </a>
                </li>
                <li class="gall_text_href" style="width:202px">
                                        <a href="https://buts.co.kr/bbs/board.php?bo_table=event&amp;wr_id=783&amp;sca=%EC%A2%85%EB%A3%8C">
                        5월 신규가입 100% 당첨 이벤트                        <span class="sound_only">댓글</span><span class="cnt_cmt">1029</span><span class="sound_only">개</span>                    </a>
                    <i class="fa fa-heart" aria-hidden="true"></i>                 </li>
                <li>기간:2022-05-17 ~ 2022-05-31</li>
                <li><span class="gall_subject">조회 </span>8607</li>
            </ul>
        </li>
                <li class="gall_li " style="width:202px">
                        <span class="sound_only">
                8            </span>
            <ul class="gall_con">
                <li class="gall_href">
                    <a href="https://buts.co.kr/bbs/board.php?bo_table=event&amp;wr_id=283&amp;sca=%EC%A2%85%EB%A3%8C">
                    <img src="https://buts.co.kr/data/file/event/thumb-2887716608_jzv6SQeN_086e932e86ac36b9eb2ed3ab5423ec9ba5de79f1_202x150.png" alt="" width="202" height="150">                    </a>
                </li>
                <li class="gall_text_href" style="width:202px">
                                        <a href="https://buts.co.kr/bbs/board.php?bo_table=event&amp;wr_id=283&amp;sca=%EC%A2%85%EB%A3%8C">
                        [8월의 이벤트] 가입즉시 2,000포인트, 추천인 입력 시 서로 서로 1,000 포인트 추가 지급                        <span class="sound_only">댓글</span><span class="cnt_cmt">2</span><span class="sound_only">개</span>                    </a>
                    <i class="fa fa-heart" aria-hidden="true"></i>                 </li>
                <li>기간:2021-06-11 ~ 2021-08-31</li>
                <li><span class="gall_subject">조회 </span>2920</li>
            </ul>
        </li>
                <li class="gall_li " style="margin:0 !important;width:202px">
                        <span class="sound_only">
                7            </span>
            <ul class="gall_con">
                <li class="gall_href">
                    <a href="https://buts.co.kr/bbs/board.php?bo_table=event&amp;wr_id=247&amp;sca=%EC%A2%85%EB%A3%8C">
                    <img src="https://buts.co.kr/data/file/event/thumb-2887716608_aXJ7p2rW_8bc1817776398af0806b4905c0d96e1315aad17b_202x150.png" alt="" width="202" height="150">                    </a>
                </li>
                <li class="gall_text_href" style="width:202px">
                                        <a href="https://buts.co.kr/bbs/board.php?bo_table=event&amp;wr_id=247&amp;sca=%EC%A2%85%EB%A3%8C">
                        [5월의 이벤트] 가입만 해도 추천 받아도~ 에어팟프로, 아이패드 획득의 기회가!                        <span class="sound_only">댓글</span><span class="cnt_cmt">29</span><span class="sound_only">개</span>                    </a>
                    <i class="fa fa-heart" aria-hidden="true"></i>                 </li>
                <li>기간:2021-05-01 ~ 2021-05-31</li>
                <li><span class="gall_subject">조회 </span>9465</li>
            </ul>
        </li>
                <li class="gall_li " style="clear:both;width:202px">
                        <span class="sound_only">
                6            </span>
            <ul class="gall_con">
                <li class="gall_href">
                    <a href="https://buts.co.kr/bbs/board.php?bo_table=event&amp;wr_id=219&amp;sca=%EC%A2%85%EB%A3%8C">
                    <img src="https://buts.co.kr/data/file/event/thumb-2887716608_17Dv9qmL_cb7e5ae5a8e236b86223f5e9059f2b93ceba388b_202x150.png" alt="" width="202" height="150">                    </a>
                </li>
                <li class="gall_text_href" style="width:202px">
                                        <a href="https://buts.co.kr/bbs/board.php?bo_table=event&amp;wr_id=219&amp;sca=%EC%A2%85%EB%A3%8C">
                        [4월의 이벤트] 추천인 포인트 3배 적립 이벤트                        <span class="sound_only">댓글</span><span class="cnt_cmt">26</span><span class="sound_only">개</span>                    </a>
                    <i class="fa fa-heart" aria-hidden="true"></i>                 </li>
                <li>기간:2021-04-06 ~ 2021-04-30</li>
                <li><span class="gall_subject">조회 </span>2228</li>
            </ul>
        </li>
                <li class="gall_li " style="width:202px">
                        <span class="sound_only">
                5            </span>
            <ul class="gall_con">
                <li class="gall_href">
                    <a href="https://buts.co.kr/bbs/board.php?bo_table=event&amp;wr_id=22&amp;sca=%EC%A2%85%EB%A3%8C">
                    <img src="https://buts.co.kr/data/file/event/thumb-2887723625_8lveuzZk_a57e797fd00baa7e83d083408f16401e01901920_202x150.png" alt="" width="202" height="150">                    </a>
                </li>
                <li class="gall_text_href" style="width:202px">
                                        <a href="https://buts.co.kr/bbs/board.php?bo_table=event&amp;wr_id=22&amp;sca=%EC%A2%85%EB%A3%8C">
                        [3월의 이벤트] 벗츠 포스팅 이벤트                        <span class="sound_only">댓글</span><span class="cnt_cmt">156</span><span class="sound_only">개</span>                    </a>
                    <i class="fa fa-heart" aria-hidden="true"></i>                 </li>
                <li>기간:2021-02-18 ~ 2021-03-18</li>
                <li><span class="gall_subject">조회 </span>3603</li>
            </ul>
        </li>
                <li class="gall_li " style="width:202px">
                        <span class="sound_only">
                4            </span>
            <ul class="gall_con">
                <li class="gall_href">
                    <a href="https://buts.co.kr/bbs/board.php?bo_table=event&amp;wr_id=14&amp;sca=%EC%A2%85%EB%A3%8C">
                    <img src="https://buts.co.kr/data/file/event/thumb-2887723625_V3q5CQyG_88f393058be3e1deed1627330c0d673b2abc64c3_202x150.png" alt="" width="202" height="150">                    </a>
                </li>
                <li class="gall_text_href" style="width:202px">
                                        <a href="https://buts.co.kr/bbs/board.php?bo_table=event&amp;wr_id=14&amp;sca=%EC%A2%85%EB%A3%8C">
                        [1월의 이벤트] 스타벅스 카페 아메리카노 100% 지급 이벤트                                            </a>
                    <i class="fa fa-heart" aria-hidden="true"></i>                 </li>
                <li>기간:2021-01-07 ~ 2021-01-24</li>
                <li><span class="gall_subject">조회 </span>1557</li>
            </ul>
        </li>
                <li class="gall_li " style="margin:0 !important;width:202px">
                        <span class="sound_only">
                3            </span>
            <ul class="gall_con">
                <li class="gall_href">
                    <a href="https://buts.co.kr/bbs/board.php?bo_table=event&amp;wr_id=10&amp;sca=%EC%A2%85%EB%A3%8C">
                    <img src="https://buts.co.kr/data/file/event/thumb-2887722085_5LYfT64v_6e63c323b6256a4c459b837adf4cbddc7e4cc428_202x150.png" alt="" width="202" height="150">                    </a>
                </li>
                <li class="gall_text_href" style="width:202px">
                                        <a href="https://buts.co.kr/bbs/board.php?bo_table=event&amp;wr_id=10&amp;sca=%EC%A2%85%EB%A3%8C">
                        추천인 이벤트!! 가입 시 추천인 입력 하면 500포인트!                                            </a>
                    <i class="fa fa-heart" aria-hidden="true"></i>                 </li>
                <li>기간:2019-10-01 ~ 2021-12-31</li>
                <li><span class="gall_subject">조회 </span>5485</li>
            </ul>
        </li>
                <li class="gall_li " style="clear:both;width:202px">
                        <span class="sound_only">
                2            </span>
            <ul class="gall_con">
                <li class="gall_href">
                    <a href="https://buts.co.kr/bbs/board.php?bo_table=event&amp;wr_id=6&amp;sca=%EC%A2%85%EB%A3%8C">
                    <img src="https://buts.co.kr/data/file/event/thumb-2887722085_8EKL9XQc_66656d69a60bc6ced5f6299d3052dcf20efd5581_202x150.png" alt="" width="202" height="150">                    </a>
                </li>
                <li class="gall_text_href" style="width:202px">
                                        <a href="https://buts.co.kr/bbs/board.php?bo_table=event&amp;wr_id=6&amp;sca=%EC%A2%85%EB%A3%8C">
                        포인트 시스템 OPEN!! 가입자 전원에게 1,000포인트 쏩니다!                                            </a>
                    <i class="fa fa-heart" aria-hidden="true"></i>                 </li>
                <li>기간:2021-09-01 ~ 2021-09-30</li>
                <li><span class="gall_subject">조회 </span>4519</li>
            </ul>
        </li>
                <li class="gall_li " style="width:202px">
                        <span class="sound_only">
                1            </span>
            <ul class="gall_con">
                <li class="gall_href">
                    <a href="https://buts.co.kr/bbs/board.php?bo_table=event&amp;wr_id=4&amp;sca=%EC%A2%85%EB%A3%8C">
                    <img src="https://buts.co.kr/data/file/event/thumb-2887722085_RvBksnNY_055e88173940d386b7ba38ea725481bae19dd0b5_202x150.png" alt="" width="202" height="150">                    </a>
                </li>
                <li class="gall_text_href" style="width:202px">
                                        <a href="https://buts.co.kr/bbs/board.php?bo_table=event&amp;wr_id=4&amp;sca=%EC%A2%85%EB%A3%8C">
                        2020년 2월 이벤트!! 게릴라 무료 모집!!                                            </a>
                    <i class="fa fa-heart" aria-hidden="true"></i>                 </li>
                <li>기간:2021-02-01 ~ 2020-02-29</li>
                <li><span class="gall_subject">조회 </span>1044</li>
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
    <input type="hidden" name="sca" value="종료">
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