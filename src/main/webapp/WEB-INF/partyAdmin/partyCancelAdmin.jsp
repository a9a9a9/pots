<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="imagetoolbar" content="no">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<title>취소사유 > Buts</title>
<link rel="stylesheet" href="https://buts.co.kr/adm/css/admin.sub.css">
<link rel="stylesheet" href="https://buts.co.kr/css/apms.css?ver=180820">
<link rel="stylesheet" href="https://buts.co.kr/thema/Buts/colorset/Basic/popup.form.css?time=1660895065" >
<link rel="stylesheet" href="https://buts.co.kr/css/level/basic.css?ver=180820">
<!--[if lte IE 8]>
<script src="https://buts.co.kr/js/html5.js"></script>
<![endif]-->
<script>
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
<script src="https://buts.co.kr/js/jquery-1.11.3.min.js"></script>
<script src="https://buts.co.kr/js/jquery-migrate-1.2.1.min.js"></script>
<script src="https://buts.co.kr/lang/korean/lang.js?ver=180820"></script>
<script src="https://buts.co.kr/js/common.js?ver=180820"></script>
<script src="https://buts.co.kr/js/wrest.js?ver=180820"></script>
<script src="https://buts.co.kr/js/placeholders.min.js"></script>
<script src="https://buts.co.kr/js/apms.js?ver=180820"></script>
<link rel="stylesheet" href="https://buts.co.kr/js/font-awesome/css/font-awesome.min.css">
</head>
<body class="responsive is-pc">


<style>
.input-check input[type='radio'] + label:before {
	width: 18px;
	height: 18px;
}
h3 {
	font-size: 14px;
	color: #333;
	margin: 0;
	margin-bottom: 20px;
}
.input-check {
	margin-right: 10px;
	color: #333 !important;
}
</style>


<div class="dialog">
	<div class="dialog-title"><span class="text-purple">환불 취소/승인</span>  관리</div>
	<div class="dialog-body" style="padding-top: 30px; border-top: 1px solid #333">
		<h3>사용자 취소사유</h3>
		<span class="input-check">
			<input onclick="div_view('1');" type="radio" name="cc_flag" value="2" id="rdo_cc_flag_1" >
			<label for="rdo_cc_flag_1">환불신청 승인</label>
		</span>
		<span class="input-check">
			<input onclick="div_view('2');" type="radio" name="cc_flag" value="11" id="rdo_cc_flag_2" >
			<label for="rdo_cc_flag_2">환불신청 반려</label>
		</span>

		<div>
			<div class="dialog-caution">
				<ul>
					환불 사유 : test				</ul>
			</div>
		</div>
		</br>
		
		<div id="div_txt">
			<div class="dialog-caution">
				<ul>
					<li>남은 서비스 기간에 해당하는 비용을 벗츠에서 직접 참여자에게 환불해드리며,</li>
					<li>해당금액은 추 후, 모집자의 충전금액에서 차감(충전금이 있을 경우) 및 청구됩니다.</li>
				</ul>
			</div>
		</div>
		<div style="display:none; margin-top: 24px;" id="div_memo">
			<textarea name="m_memo" disabled id="m_memo" rows="5" style="width: calc(100% - 32px); height: 59px;" required></textarea>
		</div>
		<div class="dialog-caution">
			<ul style="padding-left: 20px; list-style: disc">
				<li>정당한 이유없이 정상적인 서비스가 이루어지지 않을 시 환불요청을 진행합니다.</li>
				<li>이슈가 발생 되었더라도 만 24시간 내 해결 된 경우 환불이 반려 될 수 있습니다.</li>
				<li>단순 변심에 의한 환불 요청은 서비스 특성상(계정노출) 환불 되지않습니다.</li>
			</ul>
		</div>
		<div class="input-check" style="margin-top: 5px">
			<input type="checkbox"  id="chk_confirm" name="chk_confirm" />
			<label for="chk_confirm">서비스 제공자의 가입약관과 상기 정보제공에 동의합니다.</label>
		</div>
	</div>
	<div class="dialog-buttons">
		<button type="button"  onclick="window.close();" class="button small">닫기</button>
				<button type="button" id="btn_cancel_return" class="button small button-purple" onclick="cancel_check()" >확인</button>
			</div>
</div>

<script>
	function div_view(val_c) {
		if(val_c == "1"){
			document.getElementById('m_memo').disabled = true;
			document.getElementById('div_txt').style.display = 'block';
			document.getElementById('div_memo').style.display = 'none';
			document.getElementById('check_all').style.visibility = 'visible';
			document.getElementById('check_bb').style.visibility = 'visible';
			document.getElementById('rdo_bb_flag_1').checked = true;
		}
		else{
			document.getElementById('m_memo').disabled = false;
			document.getElementById('div_txt').style.display = 'none';
			document.getElementById('div_memo').style.display = 'block';
			document.getElementById('check_all').style.visibility = 'hidden';
			document.getElementById('check_bb').style.visibility = 'hidden';
			document.getElementById('bb_txt').style.display = 'none';
		}
	}
	function div_view2(val_c) {
		if(val_c == "all"){
			document.getElementById('bb_txt').style.display = 'none';
		}
		else{
			document.getElementById('bb_txt').style.display = 'block';
		}
	}
	function cancel_check() {
		var var_cc_id = '16500';
		var ajax_url = "./ajax.set_order_cancel.php";
		var var_memo = '';
		var check_val = $('input:radio[name="cc_flag"]:checked').val();
		
		if(document.getElementById("chk_confirm").checked == false){
			alert('안내사항을 읽어보신 후 \n체크박스에 체크해 주세요.');
			document.getElementById("chk_confirm").focus();
			return false;
		}

		if(!check_val)
		{
			alert("환불 진행을 선택해 주세요.");
			return false;
		}
		else if(check_val == '2')
		{
			if (!confirm("환불 처리를 진행 하시겠습니까?\n환불비용은 남은 기간 만큼 벗츠에서 참여자에게 지급되며,\n모집자에게는 SMS/이메일을 통하여 재 청구됩니다.") == true){	
				return false;
			}	
		}
		else
		{
			if (!confirm("반려처리 하시겠습니까?\n문제가 해결되지 않은 채 반려한 경우 환불조치가 진행 될 수 있습니다.") == true){
				return false;
			}
			else{
				if (document.getElementById("m_memo").value < 5) {
					alert("반려 사유를 5자이상 입력해 주세요.");
					return false;						
				}
			}
			
			var_memo =  $("#m_memo").val();
		}
		
		$.ajax({
			type: "POST",
			url: ajax_url,
			data: {
				'var_cc_id'   : var_cc_id,
				'cc_type'   : check_val,
				'm_memo' : var_memo
			},
			cache: false,
			async: false,
			dataType: "json",
			success: function(data) {
			}
		});

		if(check_val == '2'){
			alert("처리 되었습니다.\n참여자에게 24시간 이내 환불 됩니다.");
		}else{
			alert("처리되었습니다.");
		}

		window.close();
	}	
</script>

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
