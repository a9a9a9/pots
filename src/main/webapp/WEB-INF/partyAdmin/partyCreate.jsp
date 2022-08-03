<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:import url="partyIndex.jsp"/> 
<link rel="stylesheet" href="/css/partyAdmin/jquery-ui.css">
<link rel="stylesheet" href="/css/partyAdmin/style.css">
<!-- body -->
<div class="partner-body">
<script>
jQuery(function($){
    $.datepicker.regional["ko"] = {
        closeText: "닫기",
        prevText: "이전달",
        nextText: "다음달",
        currentText: "오늘",
        monthNames: ["1월(JAN)","2월(FEB)","3월(MAR)","4월(APR)","5월(MAY)","6월(JUN)", "7월(JUL)","8월(AUG)","9월(SEP)","10월(OCT)","11월(NOV)","12월(DEC)"],
        monthNamesShort: ["1월","2월","3월","4월","5월","6월", "7월","8월","9월","10월","11월","12월"],
        dayNames: ["일","월","화","수","목","금","토"],
        dayNamesShort: ["일","월","화","수","목","금","토"],
        dayNamesMin: ["일","월","화","수","목","금","토"],
        weekHeader: "Wk",
        dateFormat: "yymmdd",
        firstDay: 0,
        isRTL: false,
        showMonthAfterYear: true,
        yearSuffix: ""
    };
	$.datepicker.setDefaults($.datepicker.regional["ko"]);
});
</script>	
<style>
	.new_win { line-height:1.4; overflow:hidden; }
	.new_win h1 { font-size:16px; font-weight:bold; line-height:60px; margin:0; }
	.new_win h2 { font-size:14px; padding:0px; line-height:40px; margin:0 20px 10px; font-weight:bold; }
	.new_win .anchor { margin:10px 0px !important; }
	.new_win .local_desc { margin-top:-10px; }
	.new_win .tbl_wrap { margin:0 0 20px; }
	.new_win .tbl_wrap label { margin:0; }
	.new_win .tbl_wrap th { text-align:right; padding-left:6px; padding-right:6px; }
	.new_win .tbl_wrap th label { font-weight:bold; }
	.new_win .tbl_wrap caption { display:none; }
	.new_win .compare_wrap { margin:0 0 10px; }
	.new_win .compare_wrap h3 { font-size:14px; font-weight:bold; }
	.new_win td label { font-weight:normal !important; }
	.new_win fieldset legend { display:none !important; }
	#sit_compact { margin:0 0 -1px; }
	#sit_option_addfrm_btn { top:45px; }
</style>
	<div class="new_win">
		<!-- <div style="float:right; margin:20px;">
			<form name="changeitemform">
				<input type="hidden" name="ap" value="item">
				<input type="hidden" name="w" value="">
				<input type="hidden" name="sca" value="">
				<input type="hidden" name="sst" value="">
				<input type="hidden" name="sod"  value="">
				<input type="hidden" name="sfl" value="">
				<input type="hidden" name="stx"  value="">
				<input type="hidden" name="page" value="">

								<select name="fn">
									</select>
				<button type="submit" class="btn_frmline">폼변경</button>
			</form>
		</div> -->

		<!--<h1></h1>-->

		<div style="clear:both;"></div>	

		<form name="fitemform" action="./itemformupdate.php" method="post" enctype="MULTIPART/FORM-DATA" autocomplete="off" onsubmit="return fitemformcheck(this)">
			<input type="hidden" name="codedup" value="1">
			<input type="hidden" name="ap" value="item">
			<input type="hidden" name="w" value="">
			<input type="hidden" name="fn" value="2">
			<input type="hidden" name="sca" value="">
			<input type="hidden" name="sst" value="">
			<input type="hidden" name="sod"  value="">
			<input type="hidden" name="sfl" value="">
			<input type="hidden" name="stx"  value="">
			<input type="hidden" name="page" value="">

			

<!-- [[ 파트너 서비스 등록 ]] -->

<div class="title"><span class="text-purple">파티/판매</span>  등록</div>

<div class="form-list">
	<div class="form-list border partner-fomr-list">
	<ul>
		<li>
			<div class="subject">ㆍ 서비스</div>
						<div class="bo_w_select write_div">
				<select name="ca_id_s" id="ca_id_s" required  onchange="category_main_change(this.form)" class="width-200">
					<option value="">기본 분류를 선택하세요</option>
				<option value="10">영상</option>
<option value="20">도서/음악</option>
<option value="30">게임</option>
<option value="60">기타</option>
				</select>
			</div>
			<div class="bo_w_select write_div">
				<select name="ca_id" id="ca_id"  required  onchange="category_sub_change2(this.form)" class="width-200">
					<option value="">기본 분류를 먼저 선택하세요</option>
				</select>
			</div>
						
		</li>
		<li>
			<div class="subject">ㆍ 제목</div>
			<input type="hidden" name="pt_tag" value="" id="pt_tag">
			<input type="text" name="it_name" value="" id="it_name" required class="width-400" size="50"  placeholder="제목을 입력해 주세요" > 	
		</li>
		<li>
			<div class="subject">ㆍ 모집인원</div>
			<select name="it_stock_qty" id="it_stock_qty"class="width-100" value="">
			<option value="0">본인제외</option>
			<option value="0">0</option>
			<option value="1">1</option>
			<option value="2">2</option>
			<option value="3">3</option>
			<option value="4">4</option>
			<option value="5">5</option>
			<option value="6">6</option>
			<option value="7">7</option>
			<option value="8">8</option>
			</select>
			명
		</li>
		<li>
			<div class="subject">ㆍ 진행 형태</div>
			<span class="input-check"  id="view_0">
				<input onclick="fn_check('0');" type="radio" name="viewid_yn" required value="0" id="rdo_idview_0"> 
				<label for="rdo_idview_0">회선 공유</label>
			</span>
			<span class="input-check"  id="view_1">
				<input onclick="fn_check('1');" type="radio" name="viewid_yn" required value="1" id="rdo_idview_1"> 
				<label for="rdo_idview_1">가족 요금제 공유</label>
			</span>
			<span class="input-check"  id="view_2">
				<input onclick="fn_check('2');" type="radio" name="viewid_yn" required value="2" id="rdo_idview_2"> 
				<label for="rdo_idview_2">기기 등록형</label>
			</span>
			<span class="input-check"  id="view_3">
				<input onclick="fn_check('3');" type="radio" name="viewid_yn" required value="3" id="rdo_idview_3"> 
				<label for="rdo_idview_3">기타</label>
			</span>
						<div id="div_idpw">
				<input type="text" name="pt_link1" value="" id="pt_link1" class="width-200" size="20" maxlength="35" placeholder="계정 아이디(이메일)">
				<input type="text" name="pt_link2" value="" id="pt_link2" class="width-200" size="20" maxlength="20" placeholder="패스워드">
				<br />
							</div>
		</li>
		<li>
			<div class="subject w100">ㆍ 연락처(문의처)</div>
			<span class="input-check">
				<input type="radio" name="contact-type" id="contact-type1" onclick="fn_contact('1');"checked="checked" />
				<label for="contact-type1">전화번호</label>
			</span>
			<span class="input-check">
				<input type="radio" name="contact-type" id="contact-type2" onclick="fn_contact('2');" />
				<label for="contact-type2">카카오톡</label>
			</span>
			<div>
				<input type="text" class="width-200" name="kakao_id" id="kakao_id" placeholder="연락받을 곳을 입력해 주세요." required value="010-9256-1042" />
				<div class="lightgrey">이슈 발생 시 대응 가능한 문의정보를 입력해 주세요.</div>
			</div>
		</li>
		<li>
			<div class="subject w100">ㆍ 진행 기간</div>
			<input type="text" name="start_day" id="start_day"  value="2022-08-03" class="width-100" readonly size="8"  maxlength="8"> ~
			<input type="text" name="pt_day" value="종료날짜" id="pt_day" class="width-100" required size="8"  maxlength="8">
			<button type="button" id="btn_enddate" class="button round button-purple" onclick="check_day()">기간 확인</button>
		
			<span id="lb_enddate" class="text-purple"></span>			
		</li>
		<li>
			<div class="subject w100">ㆍ 참여 금액</div>	
			1인 당 1일
			<input type="text" name="it_price" value="" id="it_price" class="width-100" required size="10" placeholder=" 금액입력" maxlength="4">
			원 * 예상 <span id="sp_count" class="text-purple"></span> 수령 금액
			<button type="button" id="btn_cash" class="button round button-purple" onclick="check_cash()">금액 확인하기</button>
		
				<span id="i_cash_c" class="text-purple">예상금액</span>
							
		</li>
		<li>
			<div class="subject w100">ㆍ 기본 규칙</div>
			<span class="input-check">
				<input type="checkbox" id="chk_a" name="chk_a" />
				<label for="chk_a">19세 이상</label>
			</span>
			<span class="input-check">
				<input type="checkbox" id="chk_b" name="chk_b" />
				<label for="chk_b">1인 1회선</label>
			</span>
			<span class="input-check">
				<input type="checkbox" id="chk_c" name="chk_c" />
				<label for="chk_c">1인 1기기 등록</label>
			</span>
			<span class="input-check">
				<input type="checkbox" id="chk_d" name="chk_d" />
				<label for="chk_d">공유 금지</label>
			</span>
			<span class="input-check">
				<input type="checkbox" id="chk_e" name="chk_e" />
				<label for="chk_e">설정 임의변경 불가</label>
			</span>
			<span class="input-check">
				<input type="checkbox" id="chk_f" name="chk_f" />
				<label for="chk_f">프로필 매너 준수</label>
			</span>
			<span class="input-check">
				<input type="checkbox" id="chk_g" name="chk_g" />
				<label for="chk_g">계정양도 불가</label>
			</span>
			<span class="input-check">
				<input type="checkbox" id="chk_h" name="chk_h" />
				<label for="chk_h">개인사정 환불 불가</label>
			</span>
			<span class="input-check">
				<input type="checkbox" id="chk_i" name="chk_i" />
				<label for="chk_i">위반 시 강제 조치</label>
			</span>
			<span class="input-check">
				<input type="checkbox" id="chk_j" name="chk_j" />
				<label for="chk_j">벗츠 닉네임과 동일하게 프로필 닉네임 설정</label>
			</span>
		</li>
		<li>
			<div class="subject w100">ㆍ 공지사항 입력</div>
			<textarea name="it_explan" id="it_explan" rows="10"></textarea>
			<br />
			* 개인 연락처 또는 카카오톡, 개인간 거래 유도 행위는 불법으로 간주하며, 적발시 사전동의 없이 파티장 권한이 중지 됩니다.
			<br />
			* 작성된 정보는 벗츠에 수집되며 진행 중인 파티에 문제가 발생한 경우에 확인 및 해결을 위해 활용 될 수 있습니다.
			<span style="color:red">
								<br />
				* 파티 생성 후 15일이 경과 될때까지 참여자가 없을 경우 파티는 자동 삭제 처리 됩니다.
							</span>
		</li>
	</ul>
	</div>
</div>

<input type="hidden" name="it_maker" value="" id="it_maker" class="frm_input sm">
<input type="hidden" name="it_origin" value="" id="it_origin" class="frm_input sm">
<input type="hidden" name="it_brand" value="" id="it_brand" class="frm_input sm">
<input type="hidden" name="it_model" value="" id="it_model" class="frm_input sm">
<input type="hidden" name="it_use" value="1" id="it_use" >

	<input type="hidden" name="it_id" value="1659510992" id="it_id">

<div class="button-align centerbutton-align center">
<a href="./?&amp;sca=&amp;ap=list&amp;page=" class="button border button-purple">목록</a>
<input type="submit" value="등록" class="button button-purple" accesskey="s"></div>
<script>
var f = document.fitemform;


function codedupcheck(id)
{
    if (!id) {
        alert('상품코드를 입력하십시오.');
        f.it_id.focus();
        return;
    }

    var it_id = id.replace(/[A-Za-z0-9\-_]/g, "");
    if(it_id.length > 0) {
        alert("상품코드는 영문자, 숫자, -, _ 만 사용할 수 있습니다.");
        return false;
    }

    $.post(
        "./codedupcheck.php",
        { it_id: id },
        function(data) {
            if(data.name) {
                alert("코드 '"+data.code+"' 는 '".data.name+"' (으)로 이미 등록되어 있으므로\n\n사용하실 수 없습니다.");
                return false;
            } else {
                alert("'"+data.code+"' 은(는) 등록된 코드가 없으므로 사용하실 수 있습니다.");
                document.fitemform.codedup.value = '';
            }
        }, "json"
    );
}

function fitemformcheck(f)
{
	if (!f.ca_id.value) {
		alert("기본분류를 선택하십시오.");
		f.ca_id.focus();
		return false;
	}

    var var_it_name = f.it_name.value.replace(/[a-zA-Z0-9가-힣 \/\(\)\-\[\]]/g, "");
    if(var_it_name.length > 0) {
        alert("제목은 영문, 한글, 숫자만 사용할 수 있습니다.");
		f.it_name.focus();
        return false;
    }

    if (f.viewid_yn.value == "0") {
		if(!f.pt_link1.value)
		{
        	alert("계정의 아이디를 입력하십시오.");
			f.pt_link1.focus();
			return false;
		}
		
		if(!f.pt_link2.value)
		{
        	alert("계정의 패스워드를 입력하십시오.");
			f.pt_link2.focus();
			return false;
		}
	}	

    var var_kakao_id = f.kakao_id.value.replace(/[A-Za-z0-9\-_.]/g, "");
    if(var_kakao_id.length > 0) {
        alert("연락처(문의처)는 영문, 숫자, 특수문자 빼기(-), 밑줄(_), 마침표(.) 만 사용할 수 있습니다.");
		f.kakao_id.focus();
        return false;
    }


	if(f.pt_day.value == "종료날짜") {
		alert("진행기간을 입력해 주십시오.");
		f.pt_day.focus();
		return false;
	}else if(f.pt_day.value == "종료") {
		alert("진행기간을 입력해 주십시오.");
		f.pt_day.focus();
		return false;
	}

	if(f.it_price.value < 10){
		alert("10원 미만은 등록할수 없습니다.\n파티모집 금액을 변경해 주세요.");
		f.it_price.focus();
		return false;
	}

	
	//넷플릭스 최저가적용
	if(f.ca_id.value == "1010" ){
		if(f.it_price.value < 150){
			alert("하루 최저 사용금액은 150원 이하로는 하실 수 없습니다.\n다시한번 확인 부탁 드립니다.");
			f.it_price.focus();
			return false;
		}
		else if(f.it_price.value > 200){
			alert("하루 최고 사용금액은 200원 이상으로는 하실 수 없습니다.\n다시한번 확인 부탁 드립니다.");
			f.it_price.focus();
			return false;
		}
	}
	else if(f.ca_id.value == "1020"){ //왓챠 최저가적용
		if(f.it_price.value < 100){
			alert("하루 최저 사용금액은 100원 이하로는 하실 수 없습니다.\n다시한번 확인 부탁 드립니다.");
			f.it_price.focus();
			return false;
		}	
	}
	else if(f.ca_id.value == "1030"){ //유튜브 최저가적용
		if(f.it_price.value < 50){
			alert("하루 최저 사용금액은 50 이하로는 하실 수 없습니다.\n다시한번 확인 부탁 드립니다.");
			f.it_price.focus();
			return false;
		}
	}
	else if(f.ca_id.value == "1040"){ //웨이브 최저가적용
		if(f.it_price.value < 120){
			alert("하루 최저 사용금액은 120원 이하로는 하실 수 없습니다.\n다시한번 확인 부탁 드립니다.");
			f.it_price.focus();
			return false;
		}
	}
	else if(f.ca_id.value == "1050"){ //티빙 최저가적용
		if(f.it_price.value < 120){
			alert("하루 최저 사용금액은 120원 이하로는 하실 수 없습니다.\n다시한번 확인 부탁 드립니다.");
			f.it_price.focus();
			return false;
		}
	}
	else if(f.ca_id.value == "1080"){ //디즈니 최저가적용
		if(f.it_price.value < 80){
			alert("하루 최저 사용금액은 80원 이하로는 하실 수 없습니다.\n다시한번 확인 부탁 드립니다.");
			f.it_price.focus();
			return false;
		}
	}
	else if(f.ca_id.value == "1090"){ //라프텔 최저가적용
		if(f.it_price.value < 140){
			alert("하루 최저 사용금액은 140원 이하로는 하실 수 없습니다.\n다시한번 확인 부탁 드립니다.");
			f.it_price.focus();
			return false;
		}
	}

	
	if(f.it_price.value > 300){
		alert("하루 최고 사용금액은 300원을 넘을수 없습니다.\n다시한번 확인 부탁 드립니다.");
		f.it_price.focus();
		return false;
	}

				if(f.it_stock_qty.value < 1){
				alert("모집인원을 0명이상 선택해 주십시오.");
				f.it_stock_qty.focus();
				return false;
		}
		
    if (f.w.value == "") {
        var error = "";
        $.ajax({
            url: "./ajax.it_id.php",
            type: "POST",
            data: {
                "it_id": f.it_id.value
            },
            dataType: "json",
            async: false,
            cache: false,
            success: function(data, textStatus) {
                error = data.error;
            }
        });

        if (error) {
            alert(error);
            return false;
        }
    }

				var var_plus = '0';
			var pt_level = '9';
			var pt_type = '2';
			if(pt_type == "1"){
				var level_plus_cont = 0;
				if		(pt_level == 1)	{ level_plus_cont = 7; }
				else if	(pt_level == 2)	{ level_plus_cont = 4; }
				else if	(pt_level == 3)	{ level_plus_cont = 3; }
				else if	(pt_level == 4)	{ level_plus_cont = 2; }
				else if	(pt_level == 5)	{ level_plus_cont = 2; }
				else if	(pt_level == 6)	{ level_plus_cont = 1; }
				else if	(pt_level == 7)	{ level_plus_cont = 5; }//여기 이하 주 이용수
				else if	(pt_level == 8)	{ level_plus_cont = 3; }
				else if	(pt_level == 9)	{ level_plus_cont = 1; }
				else					{ level_plus_cont = 0; }
				
				var ajax_url = "https://buts.co.kr/shop/partner/ajax.plus_count.php";
		
				$.ajax({
					type: "POST",
					url: ajax_url,
					data: {
						'ca_id'   	: f.ca_id.value,
						'pt_level'  : pt_level
					},
					cache: false,
					async: false,
					dataType: "json",
					success: function(data, textStatus) {
							error = data.error;
					}
				});
			
				if(error >= level_plus_cont){
					if(var_plus  > 0){
						if(pt_level < 7 ){
							if (!confirm("하루 "+level_plus_cont+"회만 무료로 등록 하실수 있습니다.\r\n벗츠PLUS를 사용 하시겠습니까?")){				
								return false;				
							}
						}else if(pt_level < 10 ){
							if (!confirm("주 "+level_plus_cont+"회만 무료로 등록 하실수 있습니다.\r\n벗츠PLUS를 사용 하시겠습니까?")){				
								return false;				
							}
						}else{			
							alert('이용하실수 없습니다. 자세한 안내는 벗츠 운영팀에 문의 부탁 드립니다.');
							return false;	
						}
					}else{
						if(pt_level < 7 ){
							alert('하루 '+level_plus_cont+'회만 무료로 사용하실수 있습니다.\r\n추가로 이용 원하실 경우 벗츠PLUS를 구매 후 이용 부탁드립니다.');
							return false;	
						}else if(pt_level < 10 ){
							alert('주 '+level_plus_cont+'회만 무료로 사용하실수 있습니다.\r\n추가로 이용 원하실 경우 벗츠PLUS를 구매 후 이용 부탁드립니다.');
							return false;
						}else{			
							alert('이용하실수 없습니다. 자세한 안내는 벗츠 운영팀에 문의 부탁 드립니다.');
							return false;	
						}
					}
				}
			}		

	
    return true;
}

function fn_rdo_checked(id){	
	document.getElementById('rdo_idview_0').checked = false;
	document.getElementById('rdo_idview_1').checked = false;
	document.getElementById('rdo_idview_2').checked = false;
	document.getElementById('rdo_idview_3').checked = false;
	
	if(id == 0){
		document.getElementById('rdo_idview_0').checked = true;
	}else if(id == 1){
		document.getElementById('rdo_idview_1').checked = true;
	}else if(id == 2){
		document.getElementById('rdo_idview_2').checked = true;
	}else if(id == 3){
		document.getElementById('rdo_idview_3').checked = true;
	}
}

function categorychange(f)
{
    var idx = f.ca_id.value;

    if (f.w.value == "" && idx)
    {
        //f.it_use.checked = ca_use[idx] ? true : false;
        f.it_stock_qty.value = ca_stock_qty[idx];
	}
	
    var idx_main = '';

	if(idx_main == "10"){
		$("#ca_id").html('<option value="1010">&nbsp;&nbsp;&nbsp;#넷플릭스</option><option value="1020">&nbsp;&nbsp;&nbsp;#왓챠</option><option value="1030">&nbsp;&nbsp;&nbsp;#유튜브</option><option value="1040">&nbsp;&nbsp;&nbsp;#웨이브</option><option value="1050">&nbsp;&nbsp;&nbsp;#티빙</option><option value="1080">&nbsp;&nbsp;&nbsp;#디즈니</option><option value="1090">&nbsp;&nbsp;&nbsp;#라프텔</option><option value="10a0">&nbsp;&nbsp;&nbsp;#AppleOne</option><option value="1070">&nbsp;&nbsp;&nbsp;#프라임비디오</option><option value="10b0">&nbsp;&nbsp;&nbsp;#테니스TV</option><option value="1060">&nbsp;&nbsp;&nbsp;기타(영상)</option>');
	}else if(idx_main == "20"){
		$("#ca_id").html('<option value="2010">&nbsp;&nbsp;&nbsp;#리디북스</option><option value="2020">&nbsp;&nbsp;&nbsp;#밀리의서재</option><option value="2030">&nbsp;&nbsp;&nbsp;#YES24</option><option value="2080">&nbsp;&nbsp;&nbsp;#윌라</option><option value="2040">&nbsp;&nbsp;&nbsp;#스포티파이</option><option value="2060">&nbsp;&nbsp;&nbsp;#애플뮤직</option><option value="2090">&nbsp;&nbsp;&nbsp;#케이크</option><option value="2050">&nbsp;&nbsp;&nbsp;기타(도서/음악)</option>');
	}else if(idx_main == "30"){
		$("#ca_id").html('<option value="3010">&nbsp;&nbsp;&nbsp;#닌텐도온라인</option><option value="3030">&nbsp;&nbsp;&nbsp;#스팀</option><option value="3040">&nbsp;&nbsp;&nbsp;#PS4/PS5</option><option value="3050">&nbsp;&nbsp;&nbsp;#XBOX</option><option value="3020">&nbsp;&nbsp;&nbsp;기타</option>');
	}else if(idx_main == "40"){
		$("#ca_id").html('');
	}else if(idx_main == "50"){
		$("#ca_id").html('');
	}else if(idx_main == "60"){
		$("#ca_id").html('<option value="6060">&nbsp;&nbsp;&nbsp;#VPN</option><option value="6050">&nbsp;&nbsp;&nbsp;#맴버쉽</option><option value="6010">&nbsp;&nbsp;&nbsp;#MS Office</option><option value="6020">&nbsp;&nbsp;&nbsp;#그래픽</option><option value="6030">&nbsp;&nbsp;&nbsp;#운영체제</option><option value="6040">&nbsp;&nbsp;&nbsp;기타</option>');
	}else if(idx_main == "70"){
		$("#ca_id").html('');
	}else if(idx_main == "80"){
		$("#ca_id").html('');
	}else if(idx_main == "90"){
		$("#ca_id").html('');
	}
	
	fn_rdo_checked('');	
	
	if(idx == "1010"){//넷플릭스
		$('#view_0').show();
		$('#div_idpw').show();
		$('#view_1').hide();
		$('#view_2').hide();
	}
	else if(idx == "1020"){//왓챠
		$('#view_0').show();
		$('#div_idpw').show();
		$('#view_1').hide();
		$('#view_2').hide();
	}
	else if(idx == "1030"){//유튜브
		$('#view_0').hide();		
		$('#div_idpw').hide();
		$('#view_1').show();		
		$('#view_2').hide();		
		$('#view_3').hide();				
	}
	else if(idx == "1040"){//웨이브
		$('#view_0').show();		
		$('#div_idpw').show();
		$('#view_1').hide();		
		$('#view_2').hide();		
	}
	else if(idx == "1050"){//티빙
		$('#view_0').show();		
		$('#div_idpw').show();
		$('#view_1').hide();		
		$('#view_2').show();		
	}
	else if(idx == "1080"){//디즈니
		$('#view_0').show();
		$('#div_idpw').show();
		$('#view_1').hide();
		$('#view_2').hide();			
	}
	else if(idx == "1090"){//라프텔
		$('#view_0').show();
		$('#div_idpw').show();
		$('#view_1').hide();
		$('#view_2').hide();
	}
	else if(idx == "10a0"){//유튜브
		$('#view_0').hide();		
		$('#div_idpw').hide();
		$('#view_1').show();		
		$('#view_2').hide();		
		$('#view_3').hide();				
	}
	else if(idx == "10b0"){//테니스TV
		$('#view_0').show();
		$('#div_idpw').show();
		$('#view_1').hide();
		$('#view_2').hide();
	}
	else if(idx == "2010"){//리디북스
		$('#view_0').hide();		
		$('#div_idpw').show();
		$('#view_1').hide();		
		$('#view_2').show();		
	}
	else if(idx == "2020"){//밀리의서재
		$('#view_0').hide();		
		$('#div_idpw').show();
		$('#view_1').hide();		
		$('#view_2').show();		
	}
	else if(idx == "2030"){//YES24북클럽
		$('#view_0').show();		
		$('#div_idpw').show();
		$('#view_1').hide();		
		$('#view_2').hide();		
	}
	else if(idx == "2040"){//스포티파이패밀리
		$('#view_0').hide();		
		$('#div_idpw').hide();
		$('#view_1').show();		
		$('#view_2').hide();		
		$('#view_3').hide();			
	}
	else if(idx == "2060"){//애플뮤직
		$('#view_0').hide();		
		$('#div_idpw').hide();
		$('#view_1').show();		
		$('#view_2').hide();		
		$('#view_3').hide();			
	}
	else if(idx == "2070"){//조인스프라임
		$('#view_0').hide();		
		$('#div_idpw').show();
		$('#view_1').hide();		
		$('#view_2').show();		
	}
	else if(idx == "2080"){//윌라
		$('#view_0').hide();		
		$('#div_idpw').hide();
		$('#view_1').show();		
		$('#view_2').hide();		
		$('#view_3').hide();			
	}
	else if(idx == "2090"){//케이크
		$('#view_0').show();
		$('#div_idpw').show();
		$('#view_1').hide();
		$('#view_2').hide();
	}
	else if(idx == "3010"){//닌텐도온라인
		$('#view_0').hide();		
		$('#div_idpw').hide();
		$('#view_1').show();		
		$('#view_2').hide();		
		$('#view_3').hide();			
	}
	else if(idx == "3030"){//스팀
		$('#view_0').show();		
		$('#div_idpw').show();
		$('#view_1').show();		
		$('#view_2').show();		
	}
	else if(idx == "3040"){//PS4/PS5
		$('#view_0').hide();		
		$('#div_idpw').hide();
		$('#view_1').show();		
		$('#view_2').hide();		
		$('#view_3').hide();			
	}
	else if(idx == "3050"){//XBOX
		$('#view_0').hide();		
		$('#div_idpw').hide();
		$('#view_1').show();		
		$('#view_2').hide();		
		$('#view_3').hide();			
	}
	else if(idx == "6010"){//MSOffice
		$('#view_0').hide();		
		$('#div_idpw').hide();
		$('#view_1').show();		
		$('#view_2').hide();		
		$('#view_3').hide();				
	}
	else if(idx == "6020"){//그래픽
		$('#view_0').show();		
		$('#div_idpw').show();
		$('#view_1').show();		
		$('#view_2').show();		
	}
	else if(idx == "6030"){//운영체제
		$('#view_0').hide();		
		$('#div_idpw').hide();
		$('#view_1').show();		
		$('#view_2').hide();		
		$('#view_3').hide();				
	}
	else if(idx == "6050"){//맴버쉽
		$('#view_0').hide();		
		$('#div_idpw').hide();
		$('#view_1').show();		
		$('#view_2').hide();		
		$('#view_3').hide();				
	}
	else if(idx == "6060"){//VPN
		$('#view_0').show();
		$('#div_idpw').show();
		$('#view_1').hide();
		$('#view_2').hide();			
	}
	else{		
		$('#view_0').show();		
		$('#div_idpw').show();
		$('#view_1').show();		
		$('#view_2').show();
		
	}	
}

function category_main_change(f)
{
    var idx = f.ca_id_s.value;
    var sub_val = '<option value="">서비스를 선택해주세요</option>';

	if(idx == "10"){
		$("#ca_id").html(sub_val + '<option value="1010">&nbsp;&nbsp;&nbsp;#넷플릭스</option><option value="1020">&nbsp;&nbsp;&nbsp;#왓챠</option><option value="1030">&nbsp;&nbsp;&nbsp;#유튜브</option><option value="1040">&nbsp;&nbsp;&nbsp;#웨이브</option><option value="1050">&nbsp;&nbsp;&nbsp;#티빙</option><option value="1080">&nbsp;&nbsp;&nbsp;#디즈니</option><option value="1090">&nbsp;&nbsp;&nbsp;#라프텔</option><option value="10a0">&nbsp;&nbsp;&nbsp;#AppleOne</option><option value="1070">&nbsp;&nbsp;&nbsp;#프라임비디오</option><option value="10b0">&nbsp;&nbsp;&nbsp;#테니스TV</option><option value="1060">&nbsp;&nbsp;&nbsp;기타(영상)</option>');
	}else if(idx == "20"){
		$("#ca_id").html(sub_val + '<option value="2010">&nbsp;&nbsp;&nbsp;#리디북스</option><option value="2020">&nbsp;&nbsp;&nbsp;#밀리의서재</option><option value="2030">&nbsp;&nbsp;&nbsp;#YES24</option><option value="2080">&nbsp;&nbsp;&nbsp;#윌라</option><option value="2040">&nbsp;&nbsp;&nbsp;#스포티파이</option><option value="2060">&nbsp;&nbsp;&nbsp;#애플뮤직</option><option value="2090">&nbsp;&nbsp;&nbsp;#케이크</option><option value="2050">&nbsp;&nbsp;&nbsp;기타(도서/음악)</option>');
	}else if(idx == "30"){
		$("#ca_id").html(sub_val + '<option value="3010">&nbsp;&nbsp;&nbsp;#닌텐도온라인</option><option value="3030">&nbsp;&nbsp;&nbsp;#스팀</option><option value="3040">&nbsp;&nbsp;&nbsp;#PS4/PS5</option><option value="3050">&nbsp;&nbsp;&nbsp;#XBOX</option><option value="3020">&nbsp;&nbsp;&nbsp;기타</option>');
	}else if(idx == "40"){
		$("#ca_id").html(sub_val + '');
	}else if(idx == "50"){
		$("#ca_id").html(sub_val + '');
	}else if(idx == "60"){
		$("#ca_id").html(sub_val + '<option value="6060">&nbsp;&nbsp;&nbsp;#VPN</option><option value="6050">&nbsp;&nbsp;&nbsp;#맴버쉽</option><option value="6010">&nbsp;&nbsp;&nbsp;#MS Office</option><option value="6020">&nbsp;&nbsp;&nbsp;#그래픽</option><option value="6030">&nbsp;&nbsp;&nbsp;#운영체제</option><option value="6040">&nbsp;&nbsp;&nbsp;기타</option>');
	}else if(idx == "70"){
		$("#ca_id").html(sub_val + '');
	}else if(idx == "80"){
		$("#ca_id").html(sub_val + '');
	}else if(idx == "90"){
		$("#ca_id").html(sub_val + '');
	}else{
		$("#ca_id").html('<option value="">기본 분류를 먼저 선택하세요</option>');
	}
}

function category_sub_change2(f)
{
    var idx = f.ca_id.value;

    if (f.w.value == "" && idx)
    {
        //f.it_use.checked = ca_use[idx] ? true : false;
        //f.it_stock_qty.value = ca_stock_qty[idx];
			}	
	$('#view_3').show();		
	fn_rdo_checked('99');

	if(idx == "1010"){
		document.getElementById('pt_tag').value = "넷플릭스 프리미엄";
		document.getElementById('it_name').value = "넷플릭스";
		fn_check('0');

		$('#view_0').show();		
		$('#div_idpw').show();
		$('#view_1').hide();		
		$('#view_2').hide();		
	}
	else if(idx == "1020"){
		document.getElementById('pt_tag').value = "왓챠 프리미엄";
		document.getElementById('it_name').value = "왓챠";
		fn_check('0');

		$('#view_0').show();		
		$('#div_idpw').show();
		$('#view_1').hide();		
		$('#view_2').hide();		
	}
	else if(idx == "1030"){
		document.getElementById('pt_tag').value = "유튜브 프리미엄";
		document.getElementById('it_name').value = "유튜브";
		fn_check('1');

		$('#view_0').hide();		
		$('#div_idpw').hide();
		$('#view_1').show();		
		$('#view_2').hide();		
		$('#view_3').hide();			
	}
	else if(idx == "1040"){
		document.getElementById('pt_tag').value = "WAVVE 프리미엄";
		document.getElementById('it_name').value = "웨이브";
		fn_check('0');

		$('#view_0').show();		
		$('#div_idpw').show();
		$('#view_1').hide();		
		$('#view_2').hide();		
	}
	else if(idx == "1050"){	
		document.getElementById('pt_tag').value = "티빙 무제한 플러스";
		document.getElementById('it_name').value = "티빙";
		fn_check('0');

		$('#view_0').show();		
		$('#div_idpw').show();
		$('#view_1').hide();		
		$('#view_2').show();		
	}
	else if(idx == "1070"){	
		document.getElementById('pt_tag').value = "프라임비디오";
		document.getElementById('it_name').value = "프라임비디오";
		fn_check('0');

		$('#view_0').show();		
		$('#div_idpw').show();
		$('#view_1').hide();		
		$('#view_2').show();		
	}
	else if(idx == "1080"){	
		document.getElementById('pt_tag').value = "디즈니";
		document.getElementById('it_name').value = "디즈니플러스";
		fn_check('0');

		$('#view_0').show();		
		$('#div_idpw').show();
		$('#view_1').hide();		
		$('#view_2').hide();		
	}
	else if(idx == "1090"){
		document.getElementById('pt_tag').value = "라프텔 프리미엄";
		document.getElementById('it_name').value = "라프텔";
		fn_check('0');

		$('#view_0').show();		
		$('#div_idpw').show();
		$('#view_1').hide();		
		$('#view_2').hide();		
	}
	else if(idx == "10a0"){
		document.getElementById('pt_tag').value = "AppleOne";
		document.getElementById('it_name').value = "AppleOne";
		fn_check('1');

		$('#view_0').hide();		
		$('#div_idpw').hide();
		$('#view_1').show();		
		$('#view_2').hide();		
		$('#view_3').hide();			
	}
	else if(idx == "10b0"){
		document.getElementById('pt_tag').value = "테니스TV";
		document.getElementById('it_name').value = "테니스TV";
		fn_check('0');

		$('#view_0').show();		
		$('#div_idpw').show();
		$('#view_1').hide();		
		$('#view_2').hide();		
	}
	else if(idx == "2010"){
		document.getElementById('pt_tag').value = "리디북스 셀렉트";
		document.getElementById('it_name').value = "리디북스";
		fn_check('2');

		$('#view_0').hide();		
		$('#div_idpw').show();
		$('#view_1').hide();		
		$('#view_2').show();		
	}
	else if(idx == "2020"){
		document.getElementById('pt_tag').value = "밀리 정기구독";
		document.getElementById('it_name').value = "밀리의서재";
		fn_check('2');

		$('#view_0').hide();		
		$('#div_idpw').show();
		$('#view_1').hide();		
		$('#view_2').show();		
	}
	else if(idx == "2030"){
		document.getElementById('pt_tag').value = "YES24 북클럽";
		document.getElementById('it_name').value = "YES24";
		fn_check('2');

		$('#view_0').show();		
		$('#div_idpw').show();
		$('#view_1').hide();		
		$('#view_2').hide();		
	}
	else if(idx == "2040"){
		document.getElementById('pt_tag').value = "스포티파이 패밀리";
		document.getElementById('it_name').value = "스포티파이";
		fn_check('1');

		$('#view_0').hide();		
		$('#div_idpw').hide();
		$('#view_1').show();		
		$('#view_2').hide();		
		$('#view_3').hide();			
	}
	else if(idx == "2060"){
		document.getElementById('pt_tag').value = "애플뮤직";
		document.getElementById('it_name').value = "애플뮤직";
		fn_check('1');

		$('#view_0').hide();		
		$('#div_idpw').hide();
		$('#view_1').show();		
		$('#view_2').hide();		
		$('#view_3').hide();			
	}
	else if(idx == "2070"){
		document.getElementById('pt_tag').value = "조인스프라임";
		document.getElementById('it_name').value = "조인스프라임";
		fn_check('2');

		$('#view_0').show();		
		$('#div_idpw').show();
		$('#view_1').hide();		
		$('#view_2').hide();		
	}
	else if(idx == "2080"){
		document.getElementById('pt_tag').value = "윌라";
		document.getElementById('it_name').value = "윌라";
		fn_check('1');

		$('#view_0').hide();		
		$('#div_idpw').hide();
		$('#view_1').show();		
		$('#view_2').hide();			
	}
	else if(idx == "2090"){
		document.getElementById('pt_tag').value = "케이크 패밀리";
		document.getElementById('it_name').value = "케이크";
		fn_check('0');

		$('#view_0').show();		
		$('#div_idpw').show();
		$('#view_1').hide();		
		$('#view_2').hide();		
	}
	else if(idx == "3010"){
		document.getElementById('pt_tag').value = "닌텐도온라인";
		document.getElementById('it_name').value = "닌텐도온라인";
		fn_check('1');

		$('#view_0').hide();		
		$('#div_idpw').hide();
		$('#view_1').show();		
		$('#view_2').hide();		
		$('#view_3').hide();			
	}
	else if(idx == "3030"){
		document.getElementById('pt_tag').value = "스팀";
		document.getElementById('it_name').value = "스팀";
		fn_check('1');

		$('#view_0').hide();		
		$('#div_idpw').hide();
		$('#view_1').show();		
		$('#view_2').hide();		
		$('#view_3').hide();			
	}
	else if(idx == "3040"){
		document.getElementById('pt_tag').value = "PS4/PS5";
		document.getElementById('it_name').value = "PS4/PS5";
		fn_check('1');

		$('#view_0').hide();		
		$('#div_idpw').hide();
		$('#view_1').show();		
		$('#view_2').hide();		
		$('#view_3').hide();			
	}
	else if(idx == "3050"){
		document.getElementById('pt_tag').value = "XBOX";
		document.getElementById('it_name').value = "XBOX";
		fn_check('1');

		$('#view_0').hide();		
		$('#div_idpw').hide();
		$('#view_1').show();		
		$('#view_2').hide();		
		$('#view_3').hide();			
	}
	else if(idx == "6010"){
		document.getElementById('pt_tag').value = "오피스365";
		document.getElementById('it_name').value = "오피스365";
		fn_check('1');

		$('#view_0').hide();		
		$('#div_idpw').hide();
		$('#view_1').show();		
		$('#view_2').hide();		
		$('#view_3').hide();			
	}
	else if(idx == "6020"){
		document.getElementById('pt_tag').value = "그래픽";
		document.getElementById('it_name').value = "그래픽";
		fn_check('1');

		$('#view_0').show();		
		$('#div_idpw').show();
		$('#view_1').show();		
		$('#view_2').show();		
	}
	else if(idx == "6030"){
		document.getElementById('pt_tag').value = "운영체제";
		document.getElementById('it_name').value = "운영체제";
		fn_check('1');

		$('#view_0').hide();		
		$('#div_idpw').hide();
		$('#view_1').show();		
		$('#view_2').hide();		
		$('#view_3').hide();			
	}
	else if(idx == "6050"){
		document.getElementById('pt_tag').value = "맴버쉽";
		document.getElementById('it_name').value = "맴버쉽";
		fn_check('1');

		$('#view_0').hide();		
		$('#div_idpw').hide();
		$('#view_1').show();		
		$('#view_2').hide();		
		$('#view_3').hide();			
	}
	else if(idx == "6060"){
		document.getElementById('pt_tag').value = "VPN";
		document.getElementById('it_name').value = "VPN";
		fn_check('0');

		$('#view_0').show();		
		$('#div_idpw').show();
		$('#view_1').hide();		
		$('#view_2').hide();		
	}
	else{		
		document.getElementById('pt_tag').value = "기타";
		document.getElementById('it_name').value = "";
		fn_check('3');

		$('#view_0').show();		
		$('#div_idpw').show();
		$('#view_1').show();		
		$('#view_2').show();		
	}	
}
function apms_show(id) {
	$(".anc-section").hide();
	$("#" + id).show();
}

categorychange(document.fitemform);
apms_show('anc_sitfrm_ini');

function date_up() {
	var var_it_id = '';
	var ajax_url = "https://buts.co.kr/shop/partner/ajax.date_up.php";

	$.ajax({
		type: "POST",
		url: ajax_url,
		data: {
			'v_it_id'   : var_it_id
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
		return false;
	}
}	

function check_cash() {
	var i_it_price = $.trim($("#it_price").val());
	var i_it_stock_qty = $.trim($("#it_stock_qty").val());
	var i_start_day = $.trim($("#start_day").val());	
	var i_pt_day = $.trim($("#pt_day").val());
	var pt_type = '2';
	var i_sum;
	var regNumbers = /^[0-9]*$/;
	if (!regNumbers.test(i_it_stock_qty)) {
		alert("인원은 숫자만 입력할 수 있습니다.");
		return false;
	}
	if (!regNumbers.test(i_it_price)) {
		alert("참여금액은 숫자만 입력할 수 있습니다.");
		return false;
	}
	var ajax_url = "https://buts.co.kr/shop/partner/ajax.checkcash.php";

	$.ajax({
		type: "POST",
		url: ajax_url,
		data: {
			'i_it_price'   		: i_it_price,
			'i_it_stock_qty'   	: i_it_stock_qty,
			'i_start_day'   	: i_start_day,
			'i_pt_day'   		: i_pt_day,
			'pt_type'   		: pt_type
		},
		cache: false,
		async: false,
		dataType: "json",
		success: function(data, textStatus) {
                error = data.error;
		}
	});
	document.getElementById("i_cash_c").innerHTML = error +" 원";
	document.getElementById("sp_count").innerHTML = $.trim($("#it_stock_qty").val()) + "인";
	
}	

function check_day() {
	var i_start_day = $.trim($("#start_day").val());
	var i_pt_day = $.trim($("#pt_day").val());
	var ajax_url = "https://buts.co.kr/shop/partner/ajax.check_day.php";

	$.ajax({
		type: "POST",
		url: ajax_url,
		data: {
			'start_pt_day'   	: i_start_day,
			'end_pt_day'   		: i_pt_day
		},
		cache: false,
		async: false,
		dataType: "json",
		success: function(data, textStatus) {
                error = data.error;
		}
	});
	document.getElementById("lb_enddate").innerHTML = "총 " +error+"일";
}	

function check_idpw() {
	var var_pt_link1 = $("#pt_link1").val();
	var var_pt_link2 = $("#pt_link2").val();

	if(var_pt_link1 == "" ) {
		alert("ID를 입력해 주세요.");
		return false;
	}

	if(var_pt_link2 == "") {
		alert("PW를 입력해 주세요.");
		return false;
	}						

	var var_it_id = '';
	var ajax_url = "https://buts.co.kr/shop/partner/ajax.set_idpw.php";

	$.ajax({
		type: "POST",
		url: ajax_url,
		data: {
			'v_it_id'   : var_it_id,
			'v_pt_link1': var_pt_link1,
			'v_pt_link2': var_pt_link2
		},
		cache: false,
		async: false,
		dataType: "json",
		success: function(data) {
		}
	});
	alert("변경되었습니다.");
}	

function fn_check(val_c) {
	var default_chk = '';
	var var_display = '';
	var var_it_explan = '';
	var var_vardisplay = '';
	
	if(val_c == "0"){
		var_display = 'block';
		default_chk = 'bcdefghij';		
		var_it_explan = '- 프로필은 생성(선택) 후 닉네임을 변경하여 사용해 주세요.\n- 반드시 본인의 프로필으로 컨텐츠를 이용해 주세요.\n- 1인 1회선 사용 원칙으로 합니다.\n- 다양한 디바이스에서 접속은 가능하지만 본인이  여러대의 기기에서 동시접속은 불가합니다.\n- 다수가 사용하는 계정인만큼 불쾌감을 줄 수 있는 프로필 이미지나 닉네임은 피해주세요.\n- 계정정보는 본인만 이용하며 절대 타인에게 노출하지 않습니다.';
		document.getElementById('it_explan').value = var_it_explan;
	}
	else if(val_c == "1"){
		var_display = 'none';
		default_chk = 'dehi';
		var_it_explan = '- 신청 시 가족그룹에 등록이 가능한 계정을 적어주세요.\n- 등록이 늦어 질 경우 카톡으로 로그인 가능한 이메일이나 아이디(로그인 계정) 보내주시면 승인 요청 보내드립니다. \n- 신청 이후 메일에서 내용 확인 후 승인하시면 사용 가능합니다.';
		document.getElementById('it_explan').value = var_it_explan;
	}
	else if(val_c == "2"){
		var_display = 'block';
		default_chk = 'bcdehi';
		var_it_explan = '- 1인 1회선 사용 원칙으로 합니다.\n- 기본적으로 1인 1기기 등록(협의)을 원칙으로 하며, 기기 변경은 기본 월 1회(협의)로 제한 됩니다.\n- 계정정보는 본인만 이용하며 절대 타인에게 노출하지 않습니다. ';
		document.getElementById('it_explan').value = var_it_explan;
	}
	else if(val_c == "3"){
		var_display = 'block';
		default_chk = '';
		var_it_explan = '';
		document.getElementById('it_explan').value = var_it_explan;
	}
	else{
		if(var_vardisplay == '1'){
		var_display = 'none';
		}
		else{var_display = 'block';}
		default_chk = '';
	}

	document.getElementById('div_idpw').style.display = var_display;
	fn_chkbox(default_chk);
}	

	fn_check('3');

function fn_chkbox(var_chk){
	del_chk ='abcdefghij';
	for(i = 0; i < del_chk.length; i++)
	{
		document.getElementById('chk_'+del_chk.substr(i,1)).checked = false;
	}

	for(i = 0; i < var_chk.length; i++)
	{
		document.getElementById('chk_'+var_chk.substr(i,1)).checked = true;
	}
}

function fn_contact(var_no)
{
	if(var_no == "1"){
		document.getElementById('kakao_id').disabled=true;
		document.getElementById('kakao_id').value = '010-9256-1042';
	}
	else{
		document.getElementById('kakao_id').disabled=false;
		document.getElementById('kakao_id').value = '';
	}
}

$(function() {
    $("#pt_day").datepicker({
        changeMonth: true,
        changeYear: true,
        dateFormat: "yy-mm-dd",
        showButtonPanel: true,
        yearRange: "c-99:c+99",
		minDate: "+2d",
maxDate: "+365d"    });
});

</script>
		</form>
	</div>
	</div><!-- /#page-wrapper -->
</div><!-- /#wrapper -->

<!-- JavaScript -->
<script type="text/javascript" src="/js/bootstrap.min.js"></script>
<script>
$(function () {
  var $window = $(window),
    $partnerToggle = $('.partner-toggle'),
    $partnerShade = $('.partner-shade'),
    $partnerNav = $('.partner-nav');

  function navToggle() {
    if ($partnerShade.hasClass('close')) {
      $partnerShade.add($partnerNav).removeClass('close').addClass('open');
      $partnerNav.css({ left: '-220px' }).animate({ left: '0' }, 200);
    } else {
      $partnerNav.animate({ left: '-220px' }, 200, function () {
        $partnerNav.css({ left: '' });
        $partnerShade.add($partnerNav).removeClass('open').addClass('close');
      });
    }
  }

  function resize(){
    if ($window.outerWidth() <= 943) {
      $partnerShade.add($partnerNav).removeClass('open').addClass('close');
    } else {
      $partnerShade.add($partnerNav).removeClass('close open');
    }
  }

  $partnerToggle.add($partnerShade).on('click', function (e) {
    e.preventDefault();
    navToggle();
  });

  $window.on('resize', function () {
    resize();
  });

  resize();
});
</script>

<!-- Channel Plugin Scripts -->
<script>
  (function() {
    var w = window;
    if (w.ChannelIO) {
      return (window.console.error || window.console.log || function(){})('ChannelIO script included twice.');
    }
    var ch = function() {
      ch.c(arguments);
    };
    ch.q = [];
    ch.c = function(args) {
      ch.q.push(args);
    };
    w.ChannelIO = ch;
    function l() {
      if (w.ChannelIOInitialized) {
        return;
      }
      w.ChannelIOInitialized = true;
      var s = document.createElement('script');
      s.type = 'text/javascript';
      s.async = true;
      s.src = 'https://cdn.channel.io/plugin/ch-plugin-web.js';
      s.charset = 'UTF-8';
      var x = document.getElementsByTagName('script')[0];
      x.parentNode.insertBefore(s, x);
    }
    if (document.readyState === 'complete') {
      l();
    } else if (window.attachEvent) {
      window.attachEvent('onload', l);
    } else {
      window.addEventListener('DOMContentLoaded', l, false);
      window.addEventListener('load', l, false);
    }
  })();
  ChannelIO('boot', {
    "pluginKey": "d3d063c0-7d5d-48f8-8535-0ac91305c985"
  });
</script>
<!-- End Channel Plugin -->
<!-- ie6,7에서 사이드뷰가 게시판 목록에서 아래 사이드뷰에 가려지는 현상 수정 -->
<!--[if lte IE 7]>
<script>
$(function() {
    var $sv_use = $(".sv_use");
    var count = $sv_use.length;

    $sv_use.each(function() {
        $(this).css("z-index", count);
        $(this).css("position", "relative");
        count = count - 1;
    });
});
</script>
<![endif]-->

</body>
</html>