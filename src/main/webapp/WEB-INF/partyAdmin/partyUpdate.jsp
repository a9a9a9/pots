<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="now" value="<%=new java.util.Date()%>" />
<c:set var="sysDate"><fmt:formatDate value="${now}" pattern="yyyy-MM-dd" /></c:set> 
<c:import url="partyIndex.jsp" />
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"
    integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ=="
    crossorigin="anonymous" referrerpolicy="no-referrer"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"
    integrity="sha512-uto9mlQzrs59VwILcLiRYeLKPPbS/bT71da/OEBYEwcdNUk8jYIy+D176RYoop1Da+f9mvkYrmj5MCLZWEtQuA=="
    crossorigin="anonymous" referrerpolicy="no-referrer"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css"
    integrity="sha512-aOG0c6nPNzGk+5zjwyJaoRUgCdOrfSDhmMID2u4+OIslr0GjpLKo7Xm0Ao3xmpM4T8AmIouRkqwj1nrdVsLKEQ=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
  <link rel="stylesheet" href="/datepicker/jquery-ui.css">
  <script src="datepicker/jquery-ui.min.js"></script>
  
<script>
	window.onload = function() {
		document.getElementById('partyList').classList.add('active');

	}
</script>
<c:if test="${msg != null}">
${msg }
</c:if>

<!-- body -->

		<div class="partner-body">

<script>
		/* jQuery(function($) {
			$.datepicker.regional["ko"] = {
				closeText : "닫기",
				prevText : "이전달",
				nextText : "다음달",
				currentText : "오늘",
				monthNames : [ "1월(JAN)", "2월(FEB)", "3월(MAR)",
						"4월(APR)", "5월(MAY)", "6월(JUN)", "7월(JUL)",
						"8월(AUG)", "9월(SEP)", "10월(OCT)", "11월(NOV)",
						"12월(DEC)" ],
				monthNamesShort : [ "1월", "2월", "3월", "4월", "5월", "6월",
						"7월", "8월", "9월", "10월", "11월", "12월" ],
				dayNames : [ "일", "월", "화", "수", "목", "금", "토" ],
				dayNamesShort : [ "일", "월", "화", "수", "목", "금", "토" ],
				dayNamesMin : [ "일", "월", "화", "수", "목", "금", "토" ],
				weekHeader : "Wk",
				dateFormat : "yymmdd",
				firstDay : 0,
				isRTL : false,
				showMonthAfterYear : true,
				yearSuffix : ""
			};
			$.datepicker.setDefaults($.datepicker.regional["ko"]);
		});
		

		$(function() {
			$("#pt_day").datepicker({
				changeMonth : true,
				changeYear : true,
				dateFormat : "yy-mm-dd",
				showButtonPanel : true,
				yearRange : "c-99:c+99",
				minDate : "+2d",
				maxDate : "+365d"
			});
		});
		 */
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
			if(i_it_price == "") {
				document.getElementById("i_cash_c").innerHTML = "금액을 입력해 주세요.";
				return false;
			}
			if(i_it_stock_qty == "0"){
				document.getElementById("i_cash_c").innerHTML = "인원을 선택해 주세요.";
				return false;
			}
			if(i_pt_day == "종료날짜"){
				document.getElementById("i_cash_c").innerHTML = "종료날짜를 선택해 주세요.";
				return false;
			}
			console.log("명수", i_it_stock_qty);
			var sendData =  {
					"i_it_price" : i_it_price,
					"i_it_stock_qty" : i_it_stock_qty,
					"i_start_day" : i_start_day,
					"i_pt_day" : i_pt_day
				}
			console.log(sendData);
			
			$.ajax({
			    url:'check_cash'
			    , method : 'POST'
			    , contentType: 'application/json'
			    ,data : JSON.stringify(sendData)
			   	, dataType : 'json'
			    ,  success :function(resp){
			        var ppl = i_it_stock_qty + "인";
			        $("#sp_count").html(ppl);
			        var cash = resp["msg"] + "원";
			        $("#i_cash_c").html(cash);
			    }
			})

		} 

		function check_day() {
			var i_start_day = $.trim($("#start_day").val());
			var i_pt_day = $.trim($("#pt_day").val());
			var sendData = {"start_pt_day" : i_start_day, "end_pt_day" : i_pt_day};
			
			if(i_pt_day == "종료날짜") {
				document.getElementById("lb_enddate").innerHTML = "종료날짜를 선택해 주세요.";
				return false;
			}
			
			$.ajax({
			    url:'check_day'
			    , method : 'POST'
			    , contentType: 'application/json'
			   	, data: JSON.stringify(sendData)
			   	, dataType : 'json'
			    ,  success :function(resp){
			        var respData = "총 " + resp["msg"] + "일"
			        $("#lb_enddate").html(respData);
			    }
			})
		
		}
		
		
</script>
<style>
.new_win {
	line-height: 1.4;
	overflow: hidden;
}

.new_win h1 {
	font-size: 16px;
	font-weight: bold;
	line-height: 60px;
	margin: 0;
}

.new_win h2 {
	font-size: 14px;
	padding: 0px;
	line-height: 40px;
	margin: 0 20px 10px;
	font-weight: bold;
}

.new_win .anchor {
	margin: 10px 0px !important;
}

.new_win .local_desc {
	margin-top: -10px;
}

.new_win .tbl_wrap {
	margin: 0 0 20px;
}

.new_win .tbl_wrap label {
	margin: 0;
}

.new_win .tbl_wrap th {
	text-align: right;
	padding-left: 6px;
	padding-right: 6px;
}

.new_win .tbl_wrap th label {
	font-weight: bold;
}

.new_win .tbl_wrap caption {
	display: none;
}

.new_win .compare_wrap {
	margin: 0 0 10px;
}

.new_win .compare_wrap h3 {
	font-size: 14px;
	font-weight: bold;
}

.new_win td label {
	font-weight: normal !important;
}

.new_win fieldset legend {
	display: none !important;
}

#sit_compact {
	margin: 0 0 -1px;
}

#sit_option_addfrm_btn {
	top: 45px;
}
</style>

		<div class="new_win">
			

			<div style="clear: both;"></div>

			<form name="fitemform" action="partyUpdate" method="post" onsubmit="return fitemformcheck(this)">
			<input type="hidden" name="id" value="${sessionScope.id }"/>
			<input type="hidden" name="party_num" value="${p.party_num }">
				<!-- [[ 파트너 서비스 등록 ]] -->

				<div class="title">
					<span class="text-purple">파티/판매</span> 등록
				</div>

				<div class="form-list">
					<div class="form-list border partner-fomr-list">
						<ul>
							<li>
								<div class="subject" style="color:#c0c0c0;">ㆍ 서비스</div>
								<div class="bo_w_select write_div">
									<select name="party_service" id="ca_id_s" disabled required class="width-200">
										<option value="10">${p.party_service }</option>
									</select>
								</div>
								<div class="bo_w_select write_div">
									<select name="party_subservice" id="ca_id" disabled class="width-200">
										<option value="1010">${p.party_subservice }</option>
									</select>
								</div>

							</li>
							<li>
								<div class="subject">ㆍ 제목</div> 
								<input type="hidden" name="pt_tag" id="pt_tag"> 
								<input type="text" name="party_title" id="it_name" required class="width-400" size="50" value="${p.party_title }">
							</li>
							<li>
								<div class="subject" style="color:#c0c0c0;">ㆍ 모집인원</div>
								<select name="party_member" id="it_stock_qty"class="width-100">
								<option value="${p.party_member }">${p.party_member }</option>
								</select>
								명
							</li>
							<li>
								<div class="subject">ㆍ 계정 정보</div> 
								
								<div id="div_idpw" style="display: block;">
									<input type="text" name="party_id" id="pt_link1" class="width-200" size="20" maxlength="35" value="${p.party_id }"> 
									<input type="text"
										name="party_pw" id="pt_link2" class="width-200"
										size="20" maxlength="20" value="${p.party_pw }"> <br>
								</div>
							</li>
							<li>
								<div class="subject w100">ㆍ 연락처(문의처)</div> 
								<div>
									<input type="text" class="width-200" name="party_tel"
										id="kakao_id" placeholder="연락받을 곳을 입력해 주세요." required
										value="${p.party_tel }">
									<div class="lightgrey">이슈 발생 시 대응 가능한 문의정보를 입력해 주세요.</div>
								</div>
							</li>
							<li>
								<div class="subject w100" style="color:#c0c0c0;">ㆍ 진행 기간</div> 
								<input type="text" name="party_start" id="start_day" value="${sysDate }" class="width-100" readonly size="8" maxlength="8"> ~
								<input type="text" name="party_end"  id="pt_day" value="${p.party_end }" style="width:100px;" readonly required size="8" maxlength="8">
								<button type="button" id="btn_enddate" class="button round button-purple" onclick="check_day()">
								기간확인</button> 
								<span id="lb_enddate" class="text-purple"></span>
							</li>
							<li>
								<div class="subject w100" style="color:#c0c0c0;">ㆍ 참여 금액</div> 
								1인 당 1일 
								<input type="text" name="party_charge" id="it_price"
								class="width-100" required size="10" value="${p.party_charge }" readonly maxlength="4"> 
								원 * 예상 
								<span id="sp_count" class="text-purple"></span> 
								수령 금액
								<button type="button" id="btn_cash" class="button round button-purple" onclick="check_cash()">
								금액 확인하기</button> 
								<span id="i_cash_c" class="text-purple">예상금액</span>

							</li>
							<li>
								<div class="subject w100">ㆍ 기본 규칙</div> 
								<span class="input-check"> 
									<input type="checkbox" id="chk_a" name="party_adult" value="1"> 
									<label for="chk_a">19세 이상</label>
								</span> 
							</li>
							<li>
								<div class="subject w100">ㆍ 공지사항 입력</div> 
								<textarea name="party_notice" id="it_explan" rows="10" style="white-space:pre;">${p.party_notice }</textarea> 
							</li>
						</ul>
					</div>
				</div>

				<!-- <input type="hidden" name="it_maker" value="" id="it_maker" class="frm_input sm"> 
				<input type="hidden" name="it_origin" value="" id="it_origin" class="frm_input sm">
				<input type="hidden" name="it_brand" value="" id="it_brand" class="frm_input sm"> 
				<input type="hidden" name="it_model" value="" id="it_model" class="frm_input sm"> 
				<input type="hidden" name="it_use" value="1" id="it_use"> 
				<input type="hidden" name="it_id" value="1659696660" id="it_id">
				
				 -->
				
				

				<div class="button-align centerbutton-align center">
					<a href="index?formpath=partyMain?party_num=${p.party_num }" target="blank" class="button button-purple" >파티방보기</a>
					<a href="partyList"class="button border button-purple">목록</a> 
					<input type="submit" value="등록" class="button button-purple">
				</div>
				<script>
				
					var f = document.fitemform;
					function fitemformcheck(f) {
						console.log("잘 안되는거 같은데요 보이나요");
						
						var var_it_name = f.it_name.value.replace(
								/[a-zA-Z0-9가-힣 \/\(\)\-\[\]]/g, "");
						if (var_it_name.length > 0) {
							alert("제목은 영문, 한글, 숫자만 사용할 수 있습니다.");
							f.it_name.focus();
							return false;
						}

						
						if (!f.pt_link1.value) {
							alert("계정의 아이디를 입력하십시오.");
							f.pt_link1.focus();
							return false;
						}

						if (!f.pt_link2.value) {
							alert("계정의 패스워드를 입력하십시오.");
							f.pt_link2.focus();
							return false;
						}
						

						var var_kakao_id = f.kakao_id.value.replace(
								/[A-Za-z0-9\-_.]/g, "");
						if (var_kakao_id.length > 0) {
							alert("연락처(문의처)는 영문, 숫자, 특수문자 빼기(-), 밑줄(_), 마침표(.) 만 사용할 수 있습니다.");
							f.kakao_id.focus();
							return false;
						}

						return true;
					}


					

					/* function fn_rdo_checked(id) {
						document.getElementById('rdo_idview_0').checked = false;
						document.getElementById('rdo_idview_1').checked = false;
						document.getElementById('rdo_idview_2').checked = false;
						document.getElementById('rdo_idview_3').checked = false;

						if (id == 0) {
							document.getElementById('rdo_idview_0').checked = true;
						} else if (id == 1) {
							document.getElementById('rdo_idview_1').checked = true;
						} else if (id == 2) {
							document.getElementById('rdo_idview_2').checked = true;
						} else if (id == 3) {
							document.getElementById('rdo_idview_3').checked = true;
						}
					} */

					function categorychange(f) {
						var idx = f.ca_id.value;

						/* if (f.w.value == "" && idx) {
							//f.it_use.checked = ca_use[idx] ? true : false;
							f.it_stock_qty.value = ca_stock_qty[idx];
						} */

						var idx_main = '';

						if (idx_main == "10") {
							$("#ca_id")
									.html(
											'<option value="1010">   #넷플릭스</option><option value="1020">   #왓챠</option><option value="1030">   #유튜브</option><option value="1040">   #웨이브</option><option value="1050">   #티빙</option><option value="1080">   #디즈니</option>');
						} else if (idx_main == "20") {
							$("#ca_id")
									.html(
											'<option value="2010">   #리디북스</option><option value="2020">   #밀리의서재</option><option value="2030">   #YES24</option><option value="2040">   #스포티파이');
						} else if (idx_main == "30") {
							$("#ca_id")
									.html(
											'<option value="3010">   #닌텐도온라인</option><option value="3050">   #XBOX</option>');
						} else if (idx_main == "40") {
							$("#ca_id").html('');
						} else if (idx_main == "50") {
							$("#ca_id").html('');
						} else if (idx_main == "60") {
							$("#ca_id")
									.html(
											'<option value="6060">   #VPN</option><option value="6050">   #맴버쉽</option><option value="6010">   #MS Office</option>');
						} else if (idx_main == "70") {
							$("#ca_id").html('');
						} else if (idx_main == "80") {
							$("#ca_id").html('');
						} else if (idx_main == "90") {
							$("#ca_id").html('');
						}

						
					}

					function category_main_change(f) {
						var idx = f.ca_id_s.value;
						var sub_val = '<option value="">서비스를 선택해주세요</option>';

						if (idx == "10") {
							$("#ca_id")
									.html(
											sub_val
													+ '<option value="1010">   #넷플릭스</option><option value="1020">   #왓챠</option><option value="1030">   #유튜브</option><option value="1040">   #웨이브</option><option value="1050">   #티빙</option><option value="1080">   #디즈니</option>');
						} else if (idx == "20") {
							$("#ca_id")
									.html(
											sub_val
													+ '<option value="2010">   #리디북스</option><option value="2020">   #밀리의서재</option><option value="2030">   #YES24</option><option value="2040">   #스포티파이</option>');
						} else if (idx == "30") {
							$("#ca_id")
									.html(
											sub_val
													+ '<option value="3010">   #닌텐도온라인</option><option value="3050">   #XBOX</option>');
						} else if (idx == "40") {
							$("#ca_id").html(sub_val + '');
						} else if (idx == "50") {
							$("#ca_id").html(sub_val + '');
						} else if (idx == "60") {
							$("#ca_id")
									.html(
											sub_val
													+ '<option value="6050">   #맴버쉽</option><option value="6010">   #MS Office</option>');
						} else if (idx == "70") {
							$("#ca_id").html(sub_val + '');
						} else if (idx == "80") {
							$("#ca_id").html(sub_val + '');
						} else if (idx == "90") {
							$("#ca_id").html(sub_val + '');
						} else {
							$("#ca_id")
									.html(
											'<option value="">기본 분류를 먼저 선택하세요</option>');
						}
					}

					function category_sub_change2(f) {
						var idx = f.ca_id.value;

						/* if (f.w.value == "" && idx) {
							//f.it_use.checked = ca_use[idx] ? true : false;
							//f.it_stock_qty.value = ca_stock_qty[idx];
						} */
						$('#view_3').show();
						//fn_rdo_checked('99');

						if (idx == "1010") {
							document.getElementById('pt_tag').value = "넷플릭스 프리미엄";
							document.getElementById('it_name').value = "넷플릭스";
							fn_check('0');

							$('#view_0').show();
							$('#div_idpw').show();
							$('#view_1').hide();
							$('#view_2').hide();
						} else if (idx == "1020") {
							document.getElementById('pt_tag').value = "왓챠 프리미엄";
							document.getElementById('it_name').value = "왓챠";
							fn_check('0');

							$('#view_0').show();
							$('#div_idpw').show();
							$('#view_1').hide();
							$('#view_2').hide();
						} else if (idx == "1030") {
							document.getElementById('pt_tag').value = "유튜브 프리미엄";
							document.getElementById('it_name').value = "유튜브";
							fn_check('1');

							$('#view_0').show();
							$('#div_idpw').show();
							$('#view_1').hide();
							$('#view_2').hide();
						} else if (idx == "1040") {
							document.getElementById('pt_tag').value = "WAVVE 프리미엄";
							document.getElementById('it_name').value = "웨이브";
							fn_check('0');

							$('#view_0').show();
							$('#div_idpw').show();
							$('#view_1').hide();
							$('#view_2').hide();
						} else if (idx == "1050") {
							document.getElementById('pt_tag').value = "티빙 무제한 플러스";
							document.getElementById('it_name').value = "티빙";
							fn_check('0');

							$('#view_0').show();
							$('#div_idpw').show();
							$('#view_1').hide();
							$('#view_2').hide();
						} else if (idx == "1080") {
							document.getElementById('pt_tag').value = "디즈니";
							document.getElementById('it_name').value = "디즈니플러스";
							fn_check('0');

							$('#view_0').show();
							$('#div_idpw').show();
							$('#view_1').hide();
							$('#view_2').hide();
						} else if (idx == "2010") {
							document.getElementById('pt_tag').value = "리디북스 셀렉트";
							document.getElementById('it_name').value = "리디북스";
							fn_check('2');

							$('#view_0').show();
							$('#div_idpw').show();
							$('#view_1').hide();
							$('#view_2').hide();
						} else if (idx == "2020") {
							document.getElementById('pt_tag').value = "밀리 정기구독";
							document.getElementById('it_name').value = "밀리의서재";
							fn_check('2');

							$('#view_0').show();
							$('#div_idpw').show();
							$('#view_1').hide();
							$('#view_2').hide();
						} else if (idx == "2030") {
							document.getElementById('pt_tag').value = "YES24 북클럽";
							document.getElementById('it_name').value = "YES24";
							fn_check('2');

							$('#view_0').show();
							$('#div_idpw').show();
							$('#view_1').hide();
							$('#view_2').hide();
						} else if (idx == "2040") {
							document.getElementById('pt_tag').value = "스포티파이 패밀리";
							document.getElementById('it_name').value = "스포티파이";
							fn_check('1');

							$('#view_0').show();
							$('#div_idpw').show();
							$('#view_1').hide();
							$('#view_2').hide();
						} else if (idx == "3010") {
							document.getElementById('pt_tag').value = "닌텐도온라인";
							document.getElementById('it_name').value = "닌텐도온라인";
							fn_check('1');

							$('#view_0').show();
							$('#div_idpw').show();
							$('#view_1').hide();
							$('#view_2').hide();
						} else if (idx == "3050") {
							document.getElementById('pt_tag').value = "XBOX";
							document.getElementById('it_name').value = "XBOX";
							fn_check('1');

							$('#view_0').show();
							$('#div_idpw').show();
							$('#view_1').hide();
							$('#view_2').hide();
						} else if (idx == "6010") {
							document.getElementById('pt_tag').value = "오피스365";
							document.getElementById('it_name').value = "오피스365";
							fn_check('1');

							$('#view_0').show();
							$('#div_idpw').show();
							$('#view_1').hide();
							$('#view_2').hide();
						} else if (idx == "6050") {
							document.getElementById('pt_tag').value = "맴버쉽";
							document.getElementById('it_name').value = "맴버쉽";
							fn_check('1');

							$('#view_0').show();
							$('#div_idpw').show();
							$('#view_1').hide();
							$('#view_2').hide();
						} else {
							document.getElementById('pt_tag').value = "기타";
							document.getElementById('it_name').value = "";
							fn_check('3');

							$('#view_0').show();
							$('#div_idpw').show();
							$('#view_1').hide();
							$('#view_2').hide();
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
							type : "POST",
							url : ajax_url,
							data : {
								'v_it_id' : var_it_id
							},
							cache : false,
							async : false,
							dataType : "json",
							success : function(data, textStatus) {
								error = data.error;
							}
						});
						if (error) {
							alert(error);
							return false;
						}
					}

					
					/* function fn_check(val_c) {
						var default_chk = '';
						var var_display = '';
						var var_it_explan = '';
						var var_vardisplay = '';

						if (val_c == "0") {
							var_display = 'block';
							default_chk = 'bcdefghij';
							var_it_explan = '- 프로필은 생성(선택) 후 닉네임을 변경하여 사용해 주세요.\n- 반드시 본인의 프로필으로 컨텐츠를 이용해 주세요.\n- 1인 1회선 사용 원칙으로 합니다.\n- 다양한 디바이스에서 접속은 가능하지만 본인이  여러대의 기기에서 동시접속은 불가합니다.\n- 다수가 사용하는 계정인만큼 불쾌감을 줄 수 있는 프로필 이미지나 닉네임은 피해주세요.\n- 계정정보는 본인만 이용하며 절대 타인에게 노출하지 않습니다.';
							document.getElementById('it_explan').value = var_it_explan;
						} else if (val_c == "1") {
							var_display = 'none';
							default_chk = 'dehi';
							var_it_explan = '- 신청 시 가족그룹에 등록이 가능한 계정을 적어주세요.\n- 등록이 늦어 질 경우 카톡으로 로그인 가능한 이메일이나 아이디(로그인 계정) 보내주시면 승인 요청 보내드립니다. \n- 신청 이후 메일에서 내용 확인 후 승인하시면 사용 가능합니다.';
							document.getElementById('it_explan').value = var_it_explan;
						} else if (val_c == "2") {
							var_display = 'block';
							default_chk = 'bcdehi';
							var_it_explan = '- 1인 1회선 사용 원칙으로 합니다.\n- 기본적으로 1인 1기기 등록(협의)을 원칙으로 하며, 기기 변경은 기본 월 1회(협의)로 제한 됩니다.\n- 계정정보는 본인만 이용하며 절대 타인에게 노출하지 않습니다. ';
							document.getElementById('it_explan').value = var_it_explan;
						} else if (val_c == "3") {
							var_display = 'block';
							default_chk = '';
							var_it_explan = '';
							document.getElementById('it_explan').value = var_it_explan;
						} else {
							if (var_vardisplay == '1') {
								var_display = 'none';
							} else {
								var_display = 'block';
							}
							default_chk = '';
						}

						document.getElementById('div_idpw').style.display = var_display;
						 fn_chkbox(default_chk);
					}
					*/
					
					fn_check('3');

					/* function fn_chkbox(var_chk) {
						del_chk = 'abcdefghij';
						for (i = 0; i < del_chk.length; i++) {
							document.getElementById('chk_'
									+ del_chk.substr(i, 1)).checked = false;
						}

						for (i = 0; i < var_chk.length; i++) {
							document.getElementById('chk_'
									+ var_chk.substr(i, 1)).checked = true;
						}
					} */

					function fn_contact(var_no) {
						if (var_no == "1") {
							document.getElementById('kakao_id').disabled = true;
							document.getElementById('kakao_id').value = ${sessionScope.tel};
						} else {
							document.getElementById('kakao_id').disabled = false;
							document.getElementById('kakao_id').value = '';
						}
					}

					
				</script>
			</form>
		</div>
	</div>
	<!-- /#page-wrapper -->
</div>
<!-- /#wrapper -->

<!-- JavaScript -->
<!-- 	<script type="text/javascript"
		src="https://buts.co.kr/shop/partner/skin/Basic/assets/js/bootstrap.min.js"></script> -->
<script>
	$(function() {
		var $window = $(window), $partnerToggle = $('.partner-toggle'), $partnerShade = $('.partner-shade'), $partnerNav = $('.partner-nav');

		function navToggle() {
			if ($partnerShade.hasClass('close')) {
				$partnerShade.add($partnerNav).removeClass('close')
						.addClass('open');
				$partnerNav.css({
					left : '-220px'
				}).animate({
					left : '0'
				}, 200);
			} else {
				$partnerNav.animate({
					left : '-220px'
				}, 200, function() {
					$partnerNav.css({
						left : ''
					});
					$partnerShade.add($partnerNav).removeClass('open')
							.addClass('close');
				});
			}
		}

		function resize() {
			if ($window.outerWidth() <= 943) {
				$partnerShade.add($partnerNav).removeClass('open')
						.addClass('close');
			} else {
				$partnerShade.add($partnerNav).removeClass('close open');
			}
		}

		$partnerToggle.add($partnerShade).on('click', function(e) {
			e.preventDefault();
			navToggle();
		});

		$window.on('resize', function() {
			resize();
		});

		resize();
	});
</script>

	



	
</body>
</html>