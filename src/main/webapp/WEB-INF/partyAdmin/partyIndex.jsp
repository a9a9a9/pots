<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>

<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet"> 
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:400,300,600,400italic,700,800" type="text/css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway:300,200,100" type="text/css">

<link rel="stylesheet" href="/css/partyAdmin/admin.sub.css">
<link rel="stylesheet" href="/css/partyAdmin/apms.css">
<link rel="stylesheet" href="/css/partyAdmin/basic.css">
<link rel="stylesheet" href="/css/partyAdmin/bootstrap.min.css">
<link rel="stylesheet" href="/css/partyAdmin/partner.css">

<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
<script src="https://kit.fontawesome.com/74860f3084.js" crossorigin="anonymous"></script>
<link rel="icon" href="/img/cicon.png"/>
<title>POTS</title>
</head>
<!--[if lte IE 8]>
<script src="https://buts.co.kr/js/html5.js"></script>
<![endif]-->
<script type="text/javascript" async="" src="/js/ch-plugin-web.js" charset="UTF-8"></script><script>
// 자바스크립트에서 사용하는 전역변수 선언
var g5_url       = "https://buts.co.kr";
var g5_bbs_url   = "https://buts.co.kr/bbs";
var g5_is_member = "1";
var g5_is_admin  = "";
var g5_is_mobile = "";
var g5_bo_table  = "";
var g5_sca       = "";
var g5_pim       = "";
var g5_editor    = "";
var g5_responsive    = "1";
var g5_cookie_domain = "";
var g5_admin_url = "https://buts.co.kr/adm";
</script>
<script src="/js/jquery-1.11.3.min.js"></script>
<script src="/js/jquery-migrate-1.2.1.min.js"></script>
<script src="/js/jquery-ui.min.js"></script>
<script src="https://buts.co.kr/lang/korean/lang.js?ver=180820"></script>
<script src="/js/common.js"></script>
<script src="/js/wrest.js"></script>
<script src="/js/placeholders.min.js"></script>
<script src="/js/apms.js"></script>
<script src="/js/bootstrap.min.js"></script>
<!-- <link rel="stylesheet" href="/css/font-awesome.min.css"> -->
</head>
<body class="responsive is-pc">

<!-- [[ 파트너 페이지 ]] -->

<div class="partner-wrap">
	<!-- header -->
	<div class="partner-header">
		<a class="partner-logo" href="/" style="top: 18px;">
			<img src="/img/logoo1.png" title="">
		</a>
		<ul class="partner-menu">
			<li class="v-bar right">
				<a>${sessionScope.nick}</a>
			</li>
			 
			<li class="v-bar right" style="color:#fff;">
				개인 파티장
			</li>
						<li class="v-bar right">
				<a href="/">팟츠</a>
			</li>
			<li>
				<a href="logout">로그아웃</a>
			</li>
		</ul>
		<a href="" class="partner-toggle"><span class="line"></span></a>
	</div>

	<!-- nav -->
	<div class="partner-shade"></div>
	<div class="partner-nav">
		<ul>
			<li id="partyList" class="">
				<a href="partyList"> 파티관리</a>
			</li>
			<li id="partyCommentList" class="">
				<a href="partyCommentList"> 댓글보기</a>
			</li>
			<li id="partyJoinList" class="">
				<a href="partyJoinList"> 참여정보</a>
			</li>
			<li id="partyCancelReq" class="">
				<a href="partyCancelReq"> 취소요청</a>
			</li>
			<li id="partyCancelList" class="">
				<a href="partyCancelList"> 취소내역</a>
			</li>
			<li id="partyBill" class="">
				<a href="partyBill"> 출금관리</a>
			</li>
			<li id="partyMyInfo" class="">
				<a href="partyMyInfo"> 정보수정</a>
			</li>
								</ul>
	</div>
