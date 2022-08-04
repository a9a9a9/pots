<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>

<link href="/resources/css/buts.css" type="text/css" rel="stylesheet">
<link href="/resources/css/home.css" type="text/css" rel="stylesheet">
<link href="/resources/css/style.css" type="text/css" rel="stylesheet">

<script>
	// 자바스크립트에서 사용하는 전역변수 선언
	var g5_url = "https://buts.co.kr";
	var g5_bbs_url = "https://buts.co.kr/bbs";
	var g5_is_member = "";
	var g5_is_admin = "";
	var g5_is_mobile = "";
	var g5_bo_table = "";
	var g5_sca = "";
	var g5_pim = "";
	var g5_editor = "";
	var g5_responsive = "1";
	var g5_cookie_domain = "";
	var g5_purl = "https://buts.co.kr/";
</script>
<script src="https://buts.co.kr/js/jquery-1.11.3.min.js"></script>
<script src="https://buts.co.kr/js/jquery-migrate-1.2.1.min.js"></script>
<script src="https://buts.co.kr/lang/korean/lang.js?ver=180820"></script>
<script src="https://buts.co.kr/js/common.js?ver=180820"></script>
<script src="https://buts.co.kr/js/wrest.js?ver=180820"></script>
<script src="https://buts.co.kr/js/placeholders.min.js"></script>
<script src="https://buts.co.kr/js/apms.js?ver=180820"></script>
<link rel="stylesheet"
	href="https://buts.co.kr/js/font-awesome/css/font-awesome.min.css">
<script
	src="https://buts.co.kr/plugin/apms/js/jquery.mobile.swipe.min.js"></script>

<!-- JavaScript -->
<script>
	var sub_show = "slide";
	var sub_hide = "";
	var menu_startAt = "0";
	var menu_sub = "";
	var menu_subAt = "0";
</script>
<script
	src="https://buts.co.kr/thema/Buts/assets/bs3/js/bootstrap.min.js"></script>
<script
	src="https://buts.co.kr/thema/Buts/assets/js/jquery.magnific-popup.min.js"></script>
<script src="https://buts.co.kr/thema/Buts/assets/js/sly.min.js"></script>
<script src="https://buts.co.kr/thema/Buts/assets/js/custom.js"></script>
<script src="https://buts.co.kr/thema/Buts/assets/js/buts.js"></script>


</head>
<body>
<c:url var="root" value="/" />
	<!-- topper -->
	<div class="topper">
		<div class="width-container">
			<div class="topper-menu">
				<a href="#" class="v-bar">커뮤니티</a> <a href="#" class="v-bar">이벤트</a>
				<a href="#">공지사항</a>
			</div>
		</div>
	</div>

	<!-- header -->
<c:url var="root" value="/" />
	<div class="header">
		<div class="width-container">
			<div class="header-logo">
				<a href="https://buts.co.kr"><img src="https://buts.co.kr/thema/Buts/colorset/Basic/img/small-butslogo.png" 
					srcset="https://buts.co.kr/thema/Buts/colorset/Basic/img/2x/small-butslogo.png 2x" alt="" /></a>
			</div>
			<div class="header-right">
				<a href="${root }index?formpath=login" class="header-login">로그인</a>
			</div>
		</div>

		<div class="header-menu pc">
			<ul>
				<li class="menu-li off"><a href="#" class="menu-a"> <!-- 영상 -->
						영상 <span class="menu_new"></span>
				</a>
					<div class="sub-menu" style="display: none">
						<div class="sub-width">
							<div class="sub-tip">
								<span class="text-purple">영상</span> 인기 카테고리 <a
									href="javascript:;" class="ttip"> <img
									src="https://buts.co.kr/thema/Buts/colorset/Basic/img/tip.png"
									alt="" /> <span class="ttip-text"
									style="left: 0; width: 166px"> 많이 생성된 파티방 및 인기 검색어 기준으로
										노출됩니다. </span>
								</a>
							</div>
							<ul>
								<li class="sub-li off"><a href="#" class="sub-a"> #넷플릭스
										<span class="sub-1new2"></span>
								</a></li>
								<li class="sub-li off"><a href="#" class="sub-a"> #디즈니
										<span class="sub-1new2"></span>
								</a></li>
								<li class="sub-li off"><a href="#" class="sub-a"> #왓챠 </a>
								</li>
								<li class="sub-li off"><a href="#" class="sub-a"> #유튜브
										<span class="sub-1new2"></span>
								</a></li>
								<li class="sub-li off"><a href="#" class="sub-a"> #웨이브
										<span class="sub-1new2"></span>
								</a></li>
								<li class="sub-li off"><a href="#" class="sub-a"> #티빙 <span
										class="sub-1new2"></span>
								</a></li>
								<li class="sub-li off"><a href="#" class="sub-a"> #라프텔
								</a></li>
								<li class="sub-li off"><a href="#" class="sub-a">
										#AppleOne </a></li>
								<li class="sub-li off"><a href="#" class="sub-a">
										#프라임비디오 </a></li>
								<li class="sub-li off"><a href="#" class="sub-a">
										#테니스TV </a></li>
								<li class="sub-li off"><a href="#" class="sub-a">
										기타(영상) </a></li>
							</ul>
							<!-- 메뉴 검색바
					<div class="sub-search">
						<img
							src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABQAAAAUCAYAAACNiR0NAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAA3NpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuNi1jMTQ1IDc5LjE2MzQ5OSwgMjAxOC8wOC8xMy0xNjo0MDoyMiAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VSZWYjIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtcE1NOk9yaWdpbmFsRG9jdW1lbnRJRD0ieG1wLmRpZDphZmI0MzBlOS0xMjYwLWU0NDQtYmI3OS02YjA5NGRhMzgzMjMiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6MjYxNjIxQjY1MzIyMTFFQjhCQTNEQjdGMjA3OUQyOTciIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6MjYxNjIxQjU1MzIyMTFFQjhCQTNEQjdGMjA3OUQyOTciIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIDIxLjAgKFdpbmRvd3MpIj4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6Y2FjMjYzZDAtYjg5Ny02YjQzLWI4MDItZjZlZjg4NzdiOGNlIiBzdFJlZjpkb2N1bWVudElEPSJ4bXAuZGlkOmFmYjQzMGU5LTEyNjAtZTQ0NC1iYjc5LTZiMDk0ZGEzODMyMyIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1wbWV0YT4gPD94cGFja2V0IGVuZD0iciI/PtQoGnYAAAFoSURBVHjarNTNK0RRGMfxM9yFko2XKNmoa2VHXhPFio2UxJSslTS3LGz9AchKSnlbYqJsZGGiSUpZ29l5G+yUoet761HXnXPce42nPjVT5/zmOW+TsG1b+crCuGhDFe5whk0cqZCyfJ+bsIdm3GAXr6jDAEZxjCSewgK9Ni+QxwjSgXGlmMIysujGoy6wREL38SbLTGvGfWIdfajHhqlDL3BCljmN25AtusI8BtFjChyTPTtQ0WoVLzJPG9iBjIpe77hEiymwEjkVr3JypbSB93I14lQtnk2B5+iXqxG1qmWeNnAbDZiMEdiFOVPgoRzKElpDgnoxI3fWNQW6cgW8PTlFCmWBcRVYwAlW5McTvz0972Da5QUsyuSsnGYNOlGOHXnfszIvFezU/+fgvc0hWVZSlt+IB6xhC9cyNi9hBaGWputMhIvu+MJ+hFrq7+UEwrzvbjGBuk6dYgMLOv2PwO/QDwx/CTAAGKtO40+dSq8AAAAASUVORK5CYII="
							alt=""
						/>
						<input type="text" placeholder="검색어를 입력해주세요" />
					</div> -->
						</div>
					</div></li>
				<li class="menu-li off"><a href="#" class="menu-a"> <!-- 영상 -->
						도서/음악
				</a>
					<div class="sub-menu" style="display: none">
						<div class="sub-width">
							<div class="sub-tip">
								<span class="text-purple">도서/음악</span> 인기 카테고리 <a
									href="javascript:;" class="ttip"> <img
									src="https://buts.co.kr/thema/Buts/colorset/Basic/img/tip.png"
									alt="" /> <span class="ttip-text"
									style="left: 0; width: 166px"> 많이 생성된 파티방 및 인기 검색어 기준으로
										노출됩니다. </span>
								</a>
							</div>
							<ul>
								<li class="sub-li off"><a href="#" class="sub-a"> #리디북스
								</a></li>
								<li class="sub-li off"><a href="#" class="sub-a">
										#밀리의서재 </a></li>
								<li class="sub-li off"><a href="#" class="sub-a">
										#YES24 </a></li>
								<li class="sub-li off"><a href="#" class="sub-a"> #윌라 </a>
								</li>
								<li class="sub-li off"><a href="#" class="sub-a">
										#스포티파이 </a></li>
								<li class="sub-li off"><a href="#" class="sub-a"> #애플뮤직
								</a></li>
								<li class="sub-li off"><a href="#" class="sub-a"> #케이크
								</a></li>
								<li class="sub-li off"><a href="#" class="sub-a">
										기타(도서/음악) </a></li>
							</ul>
							<!-- 메뉴 검색바
					<div class="sub-search">
						<img
							src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABQAAAAUCAYAAACNiR0NAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAA3NpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuNi1jMTQ1IDc5LjE2MzQ5OSwgMjAxOC8wOC8xMy0xNjo0MDoyMiAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VSZWYjIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtcE1NOk9yaWdpbmFsRG9jdW1lbnRJRD0ieG1wLmRpZDphZmI0MzBlOS0xMjYwLWU0NDQtYmI3OS02YjA5NGRhMzgzMjMiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6MjYxNjIxQjY1MzIyMTFFQjhCQTNEQjdGMjA3OUQyOTciIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6MjYxNjIxQjU1MzIyMTFFQjhCQTNEQjdGMjA3OUQyOTciIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIDIxLjAgKFdpbmRvd3MpIj4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6Y2FjMjYzZDAtYjg5Ny02YjQzLWI4MDItZjZlZjg4NzdiOGNlIiBzdFJlZjpkb2N1bWVudElEPSJ4bXAuZGlkOmFmYjQzMGU5LTEyNjAtZTQ0NC1iYjc5LTZiMDk0ZGEzODMyMyIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1wbWV0YT4gPD94cGFja2V0IGVuZD0iciI/PtQoGnYAAAFoSURBVHjarNTNK0RRGMfxM9yFko2XKNmoa2VHXhPFio2UxJSslTS3LGz9AchKSnlbYqJsZGGiSUpZ29l5G+yUoet761HXnXPce42nPjVT5/zmOW+TsG1b+crCuGhDFe5whk0cqZCyfJ+bsIdm3GAXr6jDAEZxjCSewgK9Ni+QxwjSgXGlmMIysujGoy6wREL38SbLTGvGfWIdfajHhqlDL3BCljmN25AtusI8BtFjChyTPTtQ0WoVLzJPG9iBjIpe77hEiymwEjkVr3JypbSB93I14lQtnk2B5+iXqxG1qmWeNnAbDZiMEdiFOVPgoRzKElpDgnoxI3fWNQW6cgW8PTlFCmWBcRVYwAlW5McTvz0972Da5QUsyuSsnGYNOlGOHXnfszIvFezU/+fgvc0hWVZSlt+IB6xhC9cyNi9hBaGWputMhIvu+MJ+hFrq7+UEwrzvbjGBuk6dYgMLOv2PwO/QDwx/CTAAGKtO40+dSq8AAAAASUVORK5CYII="
							alt=""
						/>
						<input type="text" placeholder="검색어를 입력해주세요" />
					</div> -->
						</div>
					</div></li>
				<li class="menu-li off"><a href="#" class="menu-a"> <!-- 영상 -->
						게임
				</a>
					<div class="sub-menu" style="display: none">
						<div class="sub-width">
							<div class="sub-tip">
								<span class="text-purple">게임</span> 인기 카테고리 <a
									href="javascript:;" class="ttip"> <img
									src="https://buts.co.kr/thema/Buts/colorset/Basic/img/tip.png"
									alt="" /> <span class="ttip-text"
									style="left: 0; width: 166px"> 많이 생성된 파티방 및 인기 검색어 기준으로
										노출됩니다. </span>
								</a>
							</div>
							<ul>
								<li class="sub-li off"><a href="#" class="sub-a">
										#닌텐도온라인 </a></li>
								<li class="sub-li off"><a href="#" class="sub-a"> #스팀 </a>
								</li>
								<li class="sub-li off"><a href="#" class="sub-a">
										#PS4/PS5 </a></li>
								<li class="sub-li off"><a href="#" class="sub-a"> #XBOX
								</a></li>
								<li class="sub-li off"><a href="#" class="sub-a"> 기타 </a></li>
							</ul>
							<!-- 메뉴 검색바
					<div class="sub-search">
						<img
							src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABQAAAAUCAYAAACNiR0NAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAA3NpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuNi1jMTQ1IDc5LjE2MzQ5OSwgMjAxOC8wOC8xMy0xNjo0MDoyMiAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VSZWYjIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtcE1NOk9yaWdpbmFsRG9jdW1lbnRJRD0ieG1wLmRpZDphZmI0MzBlOS0xMjYwLWU0NDQtYmI3OS02YjA5NGRhMzgzMjMiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6MjYxNjIxQjY1MzIyMTFFQjhCQTNEQjdGMjA3OUQyOTciIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6MjYxNjIxQjU1MzIyMTFFQjhCQTNEQjdGMjA3OUQyOTciIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIDIxLjAgKFdpbmRvd3MpIj4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6Y2FjMjYzZDAtYjg5Ny02YjQzLWI4MDItZjZlZjg4NzdiOGNlIiBzdFJlZjpkb2N1bWVudElEPSJ4bXAuZGlkOmFmYjQzMGU5LTEyNjAtZTQ0NC1iYjc5LTZiMDk0ZGEzODMyMyIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1wbWV0YT4gPD94cGFja2V0IGVuZD0iciI/PtQoGnYAAAFoSURBVHjarNTNK0RRGMfxM9yFko2XKNmoa2VHXhPFio2UxJSslTS3LGz9AchKSnlbYqJsZGGiSUpZ29l5G+yUoet761HXnXPce42nPjVT5/zmOW+TsG1b+crCuGhDFe5whk0cqZCyfJ+bsIdm3GAXr6jDAEZxjCSewgK9Ni+QxwjSgXGlmMIysujGoy6wREL38SbLTGvGfWIdfajHhqlDL3BCljmN25AtusI8BtFjChyTPTtQ0WoVLzJPG9iBjIpe77hEiymwEjkVr3JypbSB93I14lQtnk2B5+iXqxG1qmWeNnAbDZiMEdiFOVPgoRzKElpDgnoxI3fWNQW6cgW8PTlFCmWBcRVYwAlW5McTvz0972Da5QUsyuSsnGYNOlGOHXnfszIvFezU/+fgvc0hWVZSlt+IB6xhC9cyNi9hBaGWputMhIvu+MJ+hFrq7+UEwrzvbjGBuk6dYgMLOv2PwO/QDwx/CTAAGKtO40+dSq8AAAAASUVORK5CYII="
							alt=""
						/>
						<input type="text" placeholder="검색어를 입력해주세요" />
					</div> -->
						</div>
					</div></li>
				<li class="menu-li off"><a href="#" class="menu-a"> <!-- 영상 -->
						기타 <span class="menu_new"></span>
				</a>
					<div class="sub-menu" style="display: none">
						<div class="sub-width">
							<div class="sub-tip">
								<span class="text-purple">기타</span> 인기 카테고리 <a
									href="javascript:;" class="ttip"> <img
									src="https://buts.co.kr/thema/Buts/colorset/Basic/img/tip.png"
									alt="" /> <span class="ttip-text"
									style="left: 0; width: 166px"> 많이 생성된 파티방 및 인기 검색어 기준으로
										노출됩니다. </span>
								</a>
							</div>
							<ul>
								<li class="sub-li off"><a href="#" class="sub-a"> #맴버쉽
										<span class="sub-1new2"></span>
								</a></li>
								<li class="sub-li off"><a href="#" class="sub-a"> #MS
										Office </a></li>
								<li class="sub-li off"><a href="#" class="sub-a"> #그래픽
								</a></li>
								<li class="sub-li off"><a href="#" class="sub-a"> #운영체제
								</a></li>
								<li class="sub-li off"><a href="#" class="sub-a"> #VPN
								</a></li>
								<li class="sub-li off"><a href="#" class="sub-a"> 기타 </a></li>
							</ul>
							<!-- 메뉴 검색바
					<div class="sub-search">
						<img
							src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABQAAAAUCAYAAACNiR0NAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAA3NpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuNi1jMTQ1IDc5LjE2MzQ5OSwgMjAxOC8wOC8xMy0xNjo0MDoyMiAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VSZWYjIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtcE1NOk9yaWdpbmFsRG9jdW1lbnRJRD0ieG1wLmRpZDphZmI0MzBlOS0xMjYwLWU0NDQtYmI3OS02YjA5NGRhMzgzMjMiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6MjYxNjIxQjY1MzIyMTFFQjhCQTNEQjdGMjA3OUQyOTciIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6MjYxNjIxQjU1MzIyMTFFQjhCQTNEQjdGMjA3OUQyOTciIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIDIxLjAgKFdpbmRvd3MpIj4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6Y2FjMjYzZDAtYjg5Ny02YjQzLWI4MDItZjZlZjg4NzdiOGNlIiBzdFJlZjpkb2N1bWVudElEPSJ4bXAuZGlkOmFmYjQzMGU5LTEyNjAtZTQ0NC1iYjc5LTZiMDk0ZGEzODMyMyIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1wbWV0YT4gPD94cGFja2V0IGVuZD0iciI/PtQoGnYAAAFoSURBVHjarNTNK0RRGMfxM9yFko2XKNmoa2VHXhPFio2UxJSslTS3LGz9AchKSnlbYqJsZGGiSUpZ29l5G+yUoet761HXnXPce42nPjVT5/zmOW+TsG1b+crCuGhDFe5whk0cqZCyfJ+bsIdm3GAXr6jDAEZxjCSewgK9Ni+QxwjSgXGlmMIysujGoy6wREL38SbLTGvGfWIdfajHhqlDL3BCljmN25AtusI8BtFjChyTPTtQ0WoVLzJPG9iBjIpe77hEiymwEjkVr3JypbSB93I14lQtnk2B5+iXqxG1qmWeNnAbDZiMEdiFOVPgoRzKElpDgnoxI3fWNQW6cgW8PTlFCmWBcRVYwAlW5McTvz0972Da5QUsyuSsnGYNOlGOHXnfszIvFezU/+fgvc0hWVZSlt+IB6xhC9cyNi9hBaGWputMhIvu+MJ+hFrq7+UEwrzvbjGBuk6dYgMLOv2PwO/QDwx/CTAAGKtO40+dSq8AAAAASUVORK5CYII="
							alt=""
						/>
						<input type="text" placeholder="검색어를 입력해주세요" />
					</div> -->
						</div>
					</div></li>
			</ul>
		</div>
		<div class="header-menu mobile">
			<ul>
				<li class="menu-li off"><a href="#" class="menu-a"> 영상 </a></li>
				<li class="menu-li off"><a href="#" class="menu-a"> 도서/음악 </a>
				</li>
				<li class="menu-li off"><a href="#" class="menu-a"> 게임 </a></li>
				<li class="menu-li off"><a href="#" class="menu-a"> 기타 </a></li>
			</ul>

		</div>
	</div>
</body>
</html>