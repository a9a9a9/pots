<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url var="root" value="/" />


<body class="responsive is-pc">
	<div class="wrap wrapper  ko">
		<div class="body">
			<div class="width-container" style="height: auto;">
				<div class="title-wrap border">
					<div class="title">
						<a href="" class="text">커뮤니티</a>
					</div>
					<div class="title-right">
						<div class="search-bar">
							<form name="fsearch" method="get" role="form">
								<input type="hidden" name="bo_table" value="notice"> <input
									type="hidden" name="sca" value=""> <input type="hidden"
									name="sop" value="and"> <select name="sfl" id="sfl">
									<option value="wr_subject">제목</option>
									<option value="wr_content">내용</option>
									<option value="wr_subject||wr_content">제목+내용</option>
									<option value="mb_id,1">회원아이디</option>
									<option value="mb_id,0">회원아이디(코)</option>
									<option value="wr_name,1">글쓴이</option>
									<option value="wr_name,0">글쓴이(코)</option>
								</select> <input type="text" name="stx" value="" required="" id="stx"
									maxlength="20" placeholder="검색어를 입력해 주세요">
								<button type="submit" class="submit">
									<img src="#" alt="">
								</button>
							</form>
						</div>
					</div>
				</div>

				<form name="fboardlist" id="fboardlist"
					action="./board_list_update.php"
					onsubmit="return fboardlist_submit(this);" method="post"
					role="form" class="form">
					<input type="hidden" name="bo_table" value="notice"> <input
						type="hidden" name="sfl" value=""> <input type="hidden"
						name="stx" value=""> <input type="hidden" name="spt"
						value=""> <input type="hidden" name="sca" value="">
					<input type="hidden" name="sst" value="wr_num, wr_reply"> <input
						type="hidden" name="sod" value=""> <input type="hidden"
						name="page" value="1"> <input type="hidden" name="sw"
						value="">

					<div class="table-list list-wrap">
						<table>

							<thead>
								<tr>
									<th class="pc-table">번호</th>
									<th>제목</th>
									<th>등록일</th>
									<th class="pc-table">조회</th>
								</tr>
							</thead>
							<tbody>
								<tr class="active">
									<td class="pc-table" style="width: 10%">56</td>
									<td>
										<div class="subject notice">
											<a
												href="https://buts.co.kr/bbs/board.php?bo_table=notice&amp;wr_id=84">
												[휴무일 안내] 8월 15일 휴무에 따른 정산일 변경 </a>
										</div>
									</td>
									<td>08.02</td>
									<td class="pc-table" style="width: 10%">11</td>
								</tr>
								<tr class="">
									<td class="pc-table" style="width: 10%">55</td>
									<td>
										<div class="subject">
											<a
												href="https://buts.co.kr/bbs/board.php?bo_table=notice&amp;wr_id=83">
												모집 후 15일이 경과된 파티중 모집인원이 없는 파티 삭제 안내 </a>
										</div>
									</td>
									<td>08.02</td>
									<td class="pc-table" style="width: 10%">28</td>
								</tr>
								<tr class="">
									<td class="pc-table" style="width: 10%">54</td>
									<td>
										<div class="subject">
											<a
												href="https://buts.co.kr/bbs/board.php?bo_table=notice&amp;wr_id=82">
												확인되지 않은 내용의 제목 사용에 대한 제재 안내 <span class="wr-icon wr-hot"></span>
											</a>
										</div>
									</td>
									<td>07.04</td>
									<td class="pc-table" style="width: 10%">158</td>
								</tr>
								<tr class="">
									<td class="pc-table" style="width: 10%">53</td>
									<td>
										<div class="subject">
											<a
												href="https://buts.co.kr/bbs/board.php?bo_table=notice&amp;wr_id=81">
												조인스프라임 서비스 종료 안내 <span class="wr-icon wr-hot"></span>
											</a>
										</div>
									</td>
									<td>06.29</td>
									<td class="pc-table" style="width: 10%">210</td>
								</tr>
								<tr class="">
									<td class="pc-table" style="width: 10%">52</td>
									<td>
										<div class="subject">
											<a
												href="https://buts.co.kr/bbs/board.php?bo_table=notice&amp;wr_id=80">
												판매자 출금신청 프로세스 변경으로 인한 출금중지 안내 <span class="wr-icon wr-hot"></span>
											</a>
										</div>
									</td>
									<td>06.24</td>
									<td class="pc-table" style="width: 10%">310</td>
								</tr>
								<tr class="">
									<td class="pc-table" style="width: 10%">51</td>
									<td>
										<div class="subject">
											<a
												href="https://buts.co.kr/bbs/board.php?bo_table=notice&amp;wr_id=79">
												[휴무일 안내] 6월 6일 휴무에 따른 정산일 변경 <span class="wr-icon wr-hot"></span>
											</a>
										</div>
									</td>
									<td>06.03</td>
									<td class="pc-table" style="width: 10%">164</td>
								</tr>
								<tr class="">
									<td class="pc-table" style="width: 10%">50</td>
									<td>
										<div class="subject">
											<a
												href="https://buts.co.kr/bbs/board.php?bo_table=notice&amp;wr_id=78">
												2022년 7월 신용등급 개편 및 출금방식 변경 안내 <span class="wr-icon wr-hot"></span>
											</a>
										</div>
									</td>
									<td>06.01</td>
									<td class="pc-table" style="width: 10%">604</td>
								</tr>
								<tr class="">
									<td class="pc-table" style="width: 10%">49</td>
									<td>
										<div class="subject">
											<a
												href="https://buts.co.kr/bbs/board.php?bo_table=notice&amp;wr_id=77">
												[휴무일 안내] 6월 1일 휴무에 따른 정산일 변경 <span class="wr-icon wr-hot"></span>
											</a>
										</div>
									</td>
									<td>05.27</td>
									<td class="pc-table" style="width: 10%">166</td>
								</tr>
								<tr class="">
									<td class="pc-table" style="width: 10%">48</td>
									<td>
										<div class="subject">
											<a
												href="https://buts.co.kr/bbs/board.php?bo_table=notice&amp;wr_id=76">
												[카테고리 추가 안내] 테니스TV, 케이크 <span class="wr-icon wr-hot"></span>
											</a>
										</div>
									</td>
									<td>05.27</td>
									<td class="pc-table" style="width: 10%">169</td>
								</tr>
								<tr class="">
									<td class="pc-table" style="width: 10%">47</td>
									<td>
										<div class="subject">
											<a
												href="https://buts.co.kr/bbs/board.php?bo_table=notice&amp;wr_id=75">
												파티모집시 + 추가 서비스에 대한 공지 <span class="wr-icon wr-hot"></span>
											</a>
										</div>
									</td>
									<td>05.23</td>
									<td class="pc-table" style="width: 10%">559</td>
								</tr>
								<tr class="">
									<td class="pc-table" style="width: 10%">46</td>
									<td>
										<div class="subject">
											<a
												href="https://buts.co.kr/bbs/board.php?bo_table=notice&amp;wr_id=74">
												계정정보 오류기재로 개인거래 유도 행위 <span class="wr-icon wr-hot"></span>
											</a>
										</div>
									</td>
									<td>05.19</td>
									<td class="pc-table" style="width: 10%">339</td>
								</tr>
								<tr class="">
									<td class="pc-table" style="width: 10%">45</td>
									<td>
										<div class="subject">
											<a
												href="https://buts.co.kr/bbs/board.php?bo_table=notice&amp;wr_id=73">
												채널톡 오픈 1:1상담은 이곳에서 <span class="wr-icon wr-hot"></span>
											</a>
										</div>
									</td>
									<td>05.18</td>
									<td class="pc-table" style="width: 10%">341</td>
								</tr>
								<tr class="">
									<td class="pc-table" style="width: 10%">44</td>
									<td>
										<div class="subject">
											<a
												href="https://buts.co.kr/bbs/board.php?bo_table=notice&amp;wr_id=72">
												벗츠 '아싸뵤리'님 운영 파티 이슈 안내 <span class="wr-icon wr-hot"></span>
											</a>
										</div>
									</td>
									<td>05.02</td>
									<td class="pc-table" style="width: 10%">2378</td>
								</tr>
								<tr class="">
									<td class="pc-table" style="width: 10%">43</td>
									<td>
										<div class="subject">
											<a
												href="https://buts.co.kr/bbs/board.php?bo_table=notice&amp;wr_id=71">
												[안내] 5월 5일 공휴일에 따른 정산일 변경 <span class="wr-icon wr-hot"></span>
											</a>
										</div>
									</td>
									<td>04.30</td>
									<td class="pc-table" style="width: 10%">403</td>
								</tr>
								<tr class="">
									<td class="pc-table" style="width: 10%">42</td>
									<td>
										<div class="subject">
											<a
												href="https://buts.co.kr/bbs/board.php?bo_table=notice&amp;wr_id=70">
												벗츠의 미래를 함께 이끌어 나갈 열정적이며 훌륭한 당신을 기다립니다. <span
												class="wr-icon wr-hot"></span>
											</a>
										</div>
									</td>
									<td>04.27</td>
									<td class="pc-table" style="width: 10%">589</td>
								</tr>
							</tbody>
						</table>
					</div>

					<div class="page-number">
						<ul>
							<li class="disabled"><a><i
									class="fa fa-angle-double-left"></i></a></li>
							<li class="disabled"><a><i class="fa fa-angle-left"></i></a></li>
							<li class="active"><a>1</a></li>
							<li><a href="./board.php?bo_table=notice&amp;page=2">2</a></li>
							<li><a href="./board.php?bo_table=notice&amp;page=3">3</a></li>
							<li><a href="./board.php?bo_table=notice&amp;page=4">4</a></li>
							<li class="disabled"><a><i class="fa fa-angle-right"></i></a></li>
							<li><a href="./board.php?bo_table=notice&amp;page=4"><i
									class="fa fa-angle-double-right"></i></a></li>
						</ul>
					</div>
					<div class="header-right" style="position: relative; float: right;" >
						<a href="${root}index?formpath=boardWrite" class="header-login">글쓰기</a></li>
					</div>

					<div class="button-align right mg-top-0"></div>

				</form>

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


		</div>

	</div>
	</div>
	</div>
</body>
