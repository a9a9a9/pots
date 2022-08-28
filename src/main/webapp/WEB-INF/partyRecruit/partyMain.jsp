<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<style>
.notice_pre {
	
	display: block;
    padding: 7.5px;
    margin: 0 0 -31px;
    font-size: 15px;
    color: #333;
    word-break: break-all;
    word-wrap: break-word;
    border-radius: 4px;
    font-family: 'Noto Sans KR', 'NanumGothic', '나눔고딕', ng, 'Malgun Gothic', Gulim, Dotum, Sans-Serif !important;
    line-height: 40px;
    background-color: transparent;
    border: none;
    }


</style>
<body class="responsive is-pc">
	<div class="wrap wrapper  ko">
		<div class="body">
			<div class="width-container">
<c:set var="p" value="${info }"/>
<script src="https://buts.co.kr/skin/apms/item/Miso-Basic4/shop.js"></script>

<div class="title-wrap border">
	<div class="title">
	<a href="/" class="text">${p.party_service }</a>		</div>
	<c:if test="${sessionScope.partner }">
	<div class="title-right"><a href="/partyCreate" class="button border round button-purple">파티 만들기</a></div>
	</c:if>
</div>

<div class="item-view-title">
	<div class="symbol">
		<img src="/img/partylogobyno/${p.party_subservice }.png"/>
		
	</div>
		<span class="text">${p.party_subservice }</span>
	<div class="subject">${p.party_title }</div>	
</div>

<div class="item-view-row">
	<span class="picture">
		<img src="/img/profile${p.profile }.png" alt="">		
	</span>
	<span>${p.nick}<span class="item-view-grade text-purple">
			
			<a>	</a>
	</span>
	</span>
	
	
<c:if test="${memberChk ==  'checked'}">
	<span class="social v-bar left"> 문의 : ${p.party_tel }</span>
</c:if>


		<span class="right pc-block">파티 번호 : <span class="lightgrey">${p.party_num }</span></span>
</div>

<div class="item-view-row mobile-block">
	<span>파티 번호 : <span class="lightgrey"><span class="lightgrey">${p.party_num }</span></span></span>
	<a href="#popup-policy" class="right fw300 text-purple popup-inline">팟츠 환불 보증 정책 보기</a>
</div>

<div class="item-view-row">
		<span > 종료일 : 
		<c:choose>
			<c:when test="${p.party_left_date <= 0 or p.party_available == '0'}">
				<span class="fw300">종료 되었습니다.</span>		
				<span class="lightgrey">(종료)</span>
			</c:when>
			<c:otherwise>
				<span class="fw300"> ${p.party_end } </span>		
				<span class="lightgrey"> (${p.party_left_date }일 / 일 평균 ${p.party_charge }원)</span>
			</c:otherwise>
		</c:choose>
		</span>
		<c:if test="${p.party_available == '1' && p.party_left_date != 0}">
		<span class="v-bar left">참여 비용 : <span class="price Rajdhani text-purple">${p.party_total_charge }</span><span class="lightgrey"> 원</span></span>
		</c:if>
		
		<c:if test="${memberChk ==  'checked'}">
			<a href="#popup-account" class="item-view-idpw popup-inline button round button-red">아이디/패스워드 보기</a>
	<div id="popup-account" class="popup-magnific mfp-hide white-popup-block">
		<h3><span class="text-purple">계정</span> 정보</h3>
		<div class="popup-table">
			<table>
				<colgroup>
				<col style="width: 30%" />
				<col />
				</colgroup>
				<tbody>
				<tr>
					<th>계정</th>
					<td>
										<input id="myID"  onclick="copyText('myID')" value="${p.party_id }" readonly style="border:0px;"  class="text-purple">				
										</td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td>
										<input id="myPW"  onclick="copyText('myPW')" value="${p.party_pw }" readonly style="border:0px;"  class="text-purple">	
										</td>
				</tr>
				</tbody>
			</table>
		</div>
		<div class="popup-button center">
			<a href="" class="magnific-close button small button-purple">닫기</a>
		</div>
	</div>
	</c:if>
	
	
		
	<a href="#popup-policy" class="right fw300 text-purple pc-block popup-inline">팟츠 환불 보증 정책 보기</a>
	<div id="popup-policy" class="popup-magnific mfp-hide white-popup-block">
		<h3 class="center">환불정책 안내</h3>
		<div class="popup-policy">
		<h4 class="text-purple">환불 진행 절차</h4>
		<ul>
			<li>
			판매자의 귀책사유로 서비스 이용이 제한되는 직 후, 파티장(판매자)에게 문제해결 요청을 반드시 진행 해야하며, 요청 진행 후 24시간 내에 조치가 진행되지 않을 경우 환불이 진행 됩니다.
			<div class="lightgrey">참여자(구매자)가 문제해결 요청한 내용은 분쟁해결 및 환불내용에 자료로 사용 될 수 있습니다.</div>
			</li>
			<li>환불신청은 [결제내역조회] 페이지에서 가능하며, 환불 비용은 환불신청을 진행한 날짜의 +1일로 계산되어 환불이 진행 됩니다.</li>
			<li>위 사항에 해당하는 경우 파티장 의사와 상관없이 팟츠에서 환불비용을 부담하여 제공하고 있으며, 포인트 환불로 진행됩니다.</li>
		</ul>
		<h4 class="text-purple">환불 불가</h4>
		<ul>
			<li>
			구매자의 필요 사항에 의한 요구일 경우 환불이 반려 될 수 있습니다.
			<div class="lightgrey">예) 성인인증 및 핀번호 설정 등 불편하지만 구매자가 직접 설정할 수 있는 영역</div>
			</li>
			<li>
			환불신청은 [결제내역조회] 페이지에서 가능하며, 환불 비용은 환불신청을 진행한 날짜의 +1일로 계산되어 환불이 진행 됩니다.
			<div class="lightgrey">예) 프로그램 오류, 네트워크 환경 불안으로 인한 오류 등</div>
			</li>
			<li>위 사항에 해당하는 경우 파티장 의사와 상관없이 팟츠에서 환불비용을 부담하여 제공하고 있으며, 포인트 환불로 진행됩니다.</li>
		</ul>
		</div>
		<div class="popup-button center">
		<a href="" class="magnific-close button small button-purple">확인</a>
		</div>
	</div>
</div>
<c:choose>
	<c:when test="${list == null}">
		<div class="empty">
			<div class="icon"><img src="https://buts.co.kr/thema/Buts/colorset/Basic/img/icon-butsicon-big-glay.png" /></div>
			<h5>아직 모집된 인원이 없습니다.</h5>
		</div>
	</c:when>
	<c:otherwise>

	<div class="item-view-user">
		<ul>
	
	<c:forEach var="m" items="${list }">
		<li>
			<div class="picture">
				<img src="/img/icon-butsicon-middle.png" alt="" />			</div>
			<div class="name">
				${m.nick }			</div>
			<div class="date">
							</div>
			<div class="date">
				${m.mystartday } 
				<c:choose>
					<c:when test="${p.party_left_date <= 0 }">
					사용종료
					</c:when>
					<c:otherwise>
					참여		
					</c:otherwise>
				</c:choose>
			</div>
		</li>
						
		</c:forEach>
		<c:if test="${ p.party_now_member != p.party_member}">
			<c:forEach  begin="${p.party_now_member + 1 }" end="${p.party_member }" varStatus="vs">
				<li>
					<div class="picture">
						<img src="/img/icon-butsicon-middle-glay.png" alt="" />				</div>
					<div class="name">
					${p.party_now_member + vs.count }.팟츠
					</div>
					<div class="date">
					모집대기중
					</div>
				</li>
		</c:forEach>
	</c:if>
				</ul>
</div>
	</c:otherwise>
</c:choose>


<div class="item-view-caution">
		<div class="tag">
				<c:if test="${p.party_adult == 1 }">
									<span> 19세 이상 </span>
				</c:if>
									<span> 1인 1회선 </span>
									<span> 1인 1기기 등록 </span>
									<span> 공유 금지 </span>
									<span> 설정 임의변경 불가 </span>
									<span> 프로필 매너 준수 </span>
									<span> 계정양도 불가 </span>
									<span> 개인사정 환불 불가 </span>
									<span> 위반 시 강제 조치 </span>
									<span> 팟츠 닉네임과 동일하게 프로필 닉네임 설정 </span>
									
					</div>
		<div class="text">
		<pre class="notice_pre">${p.party_notice }</pre>
		</div>
</div>

<form name="fitem" method="post" action="/index?formpath=partyOrder?party_num=${p.party_num }" role="form" onsubmit="return fitem_submit(this);">
	<input type="hidden" name="it_id[]" value="1656867366">
	<input type="hidden" name="it_msg1[]" value="">
	<input type="hidden" name="it_msg2[]" value="">
	<input type="hidden" name="it_msg3[]" value="">
	<input type="hidden" name="sw_direct">
	<input type="hidden" name="url">


<div id="it_sel_option">
	<ul id="it_opt_added" class="list-group" style="margin:0;">
		<li class="it_opt_list">
			<input type="hidden" name="io_type[1656867366][]" value="0">
			<input type="hidden" name="io_id[1656867366][]" value="">
			<input type="hidden" name="io_value[1656867366][]" value="[정식사업자]신속안전 프리미엄과 뮤직">
			<input type="hidden" class="io_price" value="0">
			<input type="hidden" class="io_stock" value="2">											
			<input type="hidden" name="ct_qty[1656867366][]" value="1" id="ct_qty_7" >																								
		</li>
	</ul>
	<script>
		$(function() {
			price_calculate();
		});
	</script>
</div>
<c:if test="${p.party_available == '1' && sessionScope.id != null }">
<div class="item-view-check">
	<div class="input-check item-view-confirm">
		<input type="checkbox" id="chk_confirm" name="chk_confirm" />
		<label for="chk_confirm">파티 규칙에 대한 내용 확인 및 파티 알림 수신에 동의합니다.</label>
	</div>
</div>
</c:if>
<br>
<div class="item-view-caution" style="border-color:#84cdcf; background-color: #ffffff;">
	<div class="text">
		<b>[팟츠에서 알려 드립니다.]</b><br>
		개인 거래를 유도하여 피해가 생기는 경우가 발생되고 있습니다.<br>
		팟츠를 통하지 않는 <span style="color:#84cdcf;">개인간의 거래 또는 파티장 임의로 제공되는 추가기간에 대해서는 어떠한 경우에도 보상 및 책임지지 않습니다.</span><br>
		연락을 유도하여 개인거래를 진행하거나 타 사이트를 홍보하는 경우 '팟츠'에 신고 부탁 드립니다. (신고 보상 3,000포인트 제공)<br>
	</div>
</div>

<div class="button-align center" style="margin-bottom: 30px;">
	<a href="/" class="button large">목록</a>
	<c:if test="${p.party_available=='1'&& sessionScope.id != null}">
	<button type="submit" onclick="document.pressed=this.value;" class="button large button-purple">참여신청</button>
	</c:if>
</div>

	<input type="hidden" id="it_price" value="50">

</form>


<div class="button-align left border">
			<a href="./item.php?it_id=1593077843&amp;ca_id=10" class="button small border button-purple">다음</a>
		<div class="float-right">
		
		<c:set var="partner" value="${sessionScope.partner }"/>
		<c:if test="${partner != null }">
				<a href="/partyCreate" class="button small button-red" style="background-color: #FF7AA2  ">등록</a>
		</c:if>
</div>
</div>
<script>
function fitem_submit(f) {

	if(document.getElementById("chk_confirm").checked == false){
		alert('안내 및 규칙을 읽고\n체크박스에 체크해 주세요.');
		document.getElementById("chk_confirm").focus();
		return false;
	}else {
		return true;
	}
}


</script>


<div class="comment-wrap mg-top" id="comment-wrap mg-top">
			<aside id="it_vc_w">
		<div class="comment-title">팟츠 댓글톡</div>
			<form id="fviewcomment" name="fviewcomment" class="form" role="form" action="commentInsert" onsubmit="return commentSubmit(this);" method="post" autocomplete="off">
				<input type="hidden" name="w" value="c" id="w">
				<input type="hidden" name="it_id" id="it_id" value="${p.party_num }">
				<input type="hidden" name="ca_id" value="10">
				<input type="hidden" name="comment_id" value="" id="comment_id">
				<input type="hidden" name="nick" value="${sessionScope.nick }" id="nick">
				<input type="hidden" name="comment_url" value="" id="comment_url">
				<input type="hidden" name="crows" value="20">
				<input type="hidden" name="page" value="" id="comment_page">
				<div class="comment-wirte">
					<div class="select">
						<select name="wr_1" id="wr_1">
							<c:choose>
							<c:when test="${myParty }">
								<option value="party">파티원 에게</option>	
							</c:when>
							<c:otherwise>
								<option value="${p.nick }">파티장 에게</option>	
							</c:otherwise>
							</c:choose>
							
							<c:if test="${memberChk ==  'checked'}">
								<c:forEach var="m" items="${list }">
									<option value="${m.nick }">${m.nick } 에게</option>	
								</c:forEach>
							</c:if>
								
							<option value="Party">일반</option>	
						</select>
						<div class="input-check secret">
							<input type="checkbox" name="party" value="secret" id="wr_secret" />
							<label for="wr_secret">비밀글</label>
						</div>
					</div>
					<c:choose>
					<c:when test="${sessionScope.id == null }">
						<textarea id="wr_content" name="wr_content" maxlength="10000" readonly placeholder="파티장에게 궁금한 점이 있으면 물어보세요!&#13;&#10;※ 빠른 문의는 파티장 문의 전화번호를 이용해주세요."></textarea>					
						<a href="" onclick="return false;" class="button-apply" id="btn_submit" style="background-color: #cecdd4;" >등록</a>	
					</c:when>
					<c:otherwise>
						<textarea id="wr_content" name="wr_content" maxlength="10000" required   placeholder="파티장에게 궁금한 점이 있으면 물어보세요!&#13;&#10;※ 빠른 문의는 파티장 문의 전화번호를 이용해주세요."></textarea>					
						<input type="button" class="button-apply" id="btn_submit" onclick="commentSubmit()" value="등록" style="border:0px;">
						<!-- <a href="#" class="button-apply" id="btn_submit" >등록</a>	 -->
					</c:otherwise>
					</c:choose>
					<script>
					function apms_comment_onKeyDown() {
							if(event.keyCode == 13) {
							apms_comment('itemcomment');
							}
						}
					
					function commentDelete(str) {
						const this_cmnt = document.getElementById(str); 
						var sendData = {"no_cmnt" : str};
						var url = "commentDelete";
						
						 $.ajax({
							    url : url,                    // 전송 URL
							    method : 'POST',                // POST 방식
							    data : JSON.stringify(sendData) ,
							    dataType : 'json' ,
							    contentType: 'application/json',
							    
				                success: function(jdata){
				                	console.log(jdata);
				                    if(jdata = 1) {
										this_cmnt.remove();
				                    }else {
				                    	alert('삭제실패');
				                    }
				                }
							});
					}				

					function commentSubmit(){
						var url = "commentInsert";    // Controller로 보내고자 하는 URL
						var comment = document.getElementById('wr_content').value;
						var comment_to = document.getElementById('wr_1').value;
						var comment_private = document.getElementById('wr_secret');
						var party_num = document.getElementById('it_id').value;
						var mynick = document.getElementById('nick').value;
						if(comment_private.checked){
							comment_private = "1";
						}else{
							comment_private = "0";
						}
						let today = new Date();
						var comment_date = dateFormat(today);
						console.log(comment_date);
						console.log(comment);
						console.log(comment_to);
						console.log(comment_private);
						
						if (!comment) {
							alert("댓글을 입력하여 주십시오.");
							f.wr_content.focus();
							return false;
						}
					    else{
					    	var sendData = {
					    			"party_num" : party_num, 
					    			"comment" : comment, 
					    			"comment_private" : comment_private, 
					    			"comment_to_nick" : comment_to, 
					    			"comment_date" : comment_date
					    			};
							console.log(sendData);
							var html = "";
							$.ajax({
							    url : url,                    // 전송 URL
							    method : 'POST',                // POST 방식
							    data : JSON.stringify(sendData) ,
							    dataType : 'json' ,
							    contentType: 'application/json',
							    
				                success: function(jdata){
				                    if(jdata != -1) {
				                       // alert("등록되었습니다.");
				                        html += "<li class='right' id='" + jdata + "'>"
			    						html += "<div class='picture'><img src='/img/icon-butsicon-middle.png'/></div>"
			    						html += "<div class='balloon'>"
			    						html += "<div class='to'>" + comment_to + "님 에게</div>"
			    						html += "<div class='speech'>"
			    						if(comment_private == 1)		
			    						html += "<img src='/img/icon_secret.gif'>"
			    								
			    						html += comment
			    						html += "</div> </div> <div class='option'><span class='v-bar'>" + mynick + "</span> <span class='v-bar'>" + comment_date + "</span>"
			    						html += "<a onclick='commentDelete(" + jdata + ")'>삭제</a></div>"
			    						html += "</li>"
			    						
			    						$("#it_vc").prepend(html);
				                        document.getElementById("wr_content").value = "";
				                        
				                    
				                        //location.replace("index?formpath=partyMain?party_num="+ ${p.party_num}) //list 로 페이지 새로고침
				                    }
				                    else{
				                        alert("댓글을 등록하지 못했습니다.");
				                    }
				                }
							});
						} 
					}
					
					function dateFormat(date) {
				        let month = date.getMonth() + 1;
				        let day = date.getDate();
				        let hour = date.getHours();
				        let minute = date.getMinutes();
				        let second = date.getSeconds();

				        month = month >= 10 ? month : '0' + month;
				        day = day >= 10 ? day : '0' + day;
				        hour = hour >= 10 ? hour : '0' + hour;
				        minute = minute >= 10 ? minute : '0' + minute;
				        second = second >= 10 ? second : '0' + second;

				        return date.getFullYear() + '-' + month + '-' + day + ' ' + hour + ':' + minute + ':' + second;
				}
					
					
					</script>			
				</div>
			</form>
		</aside>
		<div class="comment-list" id="itemcomment">
		
				<ul id="it_vc">
			
				<c:if test="${not empty comment}">
					<c:forEach items="${comment }" var="c">
					
					<c:choose>
						<c:when test="${c.nick == sessionScope.nick }">
						<li class="right" id="${c.no_cmnt }">
							<div class="picture">
								<img src="/img/icon-butsicon-middle.png"/>
							</div>
							<div class="balloon">
								<div class="to">${c.comment_to_nick }님 에게</div>
								<div class="speech">
								<c:if test="${c.comment_private == '1'}">
									<img src="/img/icon_secret.gif">
								</c:if>
										 ${c.comment}
								</div>
							</div>
							<div class="option">
								<span class="v-bar">${c.nick }</span> <span class="v-bar">${c.comment_date }</span>
								<a onclick="commentDelete(${c.no_cmnt})">삭제</a>
							</div>
						</li>
						
						</c:when>
						
						<c:when test="${c.nick == p.nick }">
						
						<li class="left" id="c_131787">
							<div class="picture">
								<img
									src="/img/icon-butsicon-middle.png"
									alt="" />
							</div>
							<div class="balloon">
								<div class="to" style="color: #ffffff;">${c.comment_to_nick }님 에게</div>
								<div class="speech">
									<c:if test="${c.comment_private == '1'}">
										<img src="/img/icon_secret.gif">
									</c:if>
								  ${c.comment}
								</div>
							</div>
							<div class="option">
								<span class="v-bar">${c.nick }</span> <span class="v-bar">${c.comment_date }</span>
							</div>
						</li>
						</c:when>
						
						<c:otherwise>
						<li id="c_139245">
							<div class="picture">
								<img
									src="/img/icon-butsicon-middle.png"
									alt="" />
							</div>
							<div class="balloon">
								<div class="to">${c.comment_to_nick }님 에게</div>
								<div class="speech">
									<c:if test="${c.comment_private == '1'}">
										<img src="/img/icon_secret.gif">
									</c:if>
								 ${c.comment}
								</div>
							</div>
							<div class="option">
								<span class="v-bar">${c.nick }</span> <span class="v-bar">${c.comment_date }</span>
							</div>
						</li>
						</c:otherwise>
					
					</c:choose>
				
				</c:forEach>
			</c:if>
				</ul>
            		
			</div>
</div>
<script>
/* function tochange(f)
{
    var idx = f.wr_1.value;
	if(idx == ""){
		$('#opentalk').hide();
		$('.secret').hide();
		f.wr_2.checked = false;
	}else{
		$('#opentalk').show();
		$('.secret').show();
		f.wr_2.checked = true;	
	}
} */
</script>
<script>
$(function() {
	$('.item-tab a[data-toggle="tab"]').on('shown.bs.tab', function (e) {
		var ref = $(e.target).attr("ref") // activated tab
		var tid = $(e.target).attr("tid") // activated tab
		$('.item-tab .nav-tabs li').removeClass('active');
		$('.tab-'+ref).addClass('active');
		if(tid == "1") {
			location.href = "#tspot";
		}
	});
	$("a.view_image").click(function() {
		window.open(this.href, "large_image", "location=yes,links=no,toolbar=no,top=10,left=10,width=10,height=10,resizable=yes,scrollbars=no,status=no");
		return false;
	});
});
$("document").ready(function() {
    $("#chk_submit").submit(function() {
		if(document.getElementById("chk_confirm").checked == false){
			alert('안내 및 규칙을 읽고\n\n체크박스에 체크해 주세요.');
		}
		else{
			document.pressed=this.value;
		}
    });
});
	function fn_chk_confirm()
	{
		if(document.getElementById("chk_confirm").checked == false){
			alert('안내 및 규칙을 읽고\n\n체크박스에 체크해 주세요.');
			document.getElementById("chk_confirm").focus();
        	return false;
		}
		else{
			document.pressed=this.value;
			//document.fitem.submit(this.value);
			//document.fitem.submit();
			document.fitem.submit();
		}
        
		return true;
	}
	function copyText(copy_val) {
		if(copy_val == 'myID'){
			var copyText  = document.getElementById('myID');
			copyText.select();
			copyText.setSelectionRange(0, 99999);
			document.execCommand("Copy");
			alert('계정 ID가 복사 되었습니다.');
		}else{
			var copyText  = document.getElementById('myPW');
			copyText.select();
			copyText.setSelectionRange(0, 99999);
			document.execCommand("Copy");
			alert('계정 PW가 복사 되었습니다.');
		}
	}
</script>	
<script>
	var save_before = '';
	var save_html = document.getElementById('it_vc_w').innerHTML;

	function fviewcomment_submit(f)	{
		var pattern = /(^\s*)|(\s*$)/g; // \s 공백 문자
		var subject = "";
		var content = "";
		$.ajax({
			url: g5_bbs_url+"/ajax.filter.php",
			type: "POST",˙
			data: {
				"subject": "",
				"content": f.wr_content.value
			},
			dataType: "json",
			async: false,
			cache: false,
			success: function(data, textStatus) {
				subject = data.subject;
				content = data.content;
			}
		});
		if (content) {
			alert("내용에 금지단어('"+content+"')가 포함되어있습니다");
			f.wr_content.focus();
			return false;
		}
		// 양쪽 공백 없애기
		var pattern = /(^\s*)|(\s*$)/g; // \s 공백 문자
		document.getElementById('wr_content').value = document.getElementById('wr_content').value.replace(pattern, "");
		if (!document.getElementById('wr_content').value) {
			alert("댓글을 입력하여 주십시오.");
			f.wr_content.focus();
			return false;
		}
		if (typeof(f.wr_name) != 'undefined') {
			f.wr_name.value = f.wr_name.value.replace(pattern, "");
			if (f.wr_name.value == '') {
				alert('이름이 입력되지 않았습니다.');
				f.wr_name.focus();
				return false;
			}
		}
		if (typeof(f.wr_password) != 'undefined') {
			f.wr_password.value = f.wr_password.value.replace(pattern, "");
			if (f.wr_password.value == '') {
				alert('비밀번호가 입력되지 않았습니다.');
				f.wr_password.focus();
				return false;
			}
		}
		set_comment_token(f);
		document.getElementById("btn_submit").disabled = "disabled";
		return true;
	}
	
	
	function comment_box(comment_id, work) {
		var el_id;
		// 댓글 아이디가 넘어오면 답변, 수정
		if (comment_id) {
			if (work == 'c')
				el_id = 'reply_' + comment_id;
			else
				el_id = 'edit_' + comment_id;
		}
		else
			el_id = 'it_vc_w';
		if (save_before != el_id) {
			if (save_before) {
				document.getElementById(save_before).style.display = 'none';
				document.getElementById(save_before).innerHTML = '';
			}
			document.getElementById(el_id).style.display = '';
			document.getElementById(el_id).innerHTML = save_html;
			// 댓글 수정
			if (work == 'cu') {
				document.getElementById('wr_content').value = document.getElementById('save_comment_' + comment_id).value;
				if (document.getElementById('secret_comment_'+comment_id).value)
					document.getElementById('wr_secret').checked = true;
				else
					document.getElementById('wr_secret').checked = false;
			}
			document.getElementById('comment_id').value = comment_id;
			document.getElementById('w').value = work;
			// 페이지
			if (comment_id) {
				document.getElementById('comment_page').value = document.getElementById('comment_page_'+comment_id).value;
				document.getElementById('comment_url').value = document.getElementById('comment_url_'+comment_id).value;
			} else {
				document.getElementById('comment_page').value = '';
				document.getElementById('comment_url').value = './itemcomment.php?it_id=1656867366&ca_id=10&crows=20';
			}
			save_before = el_id;
		}
	}
	comment_box('', 'c'); // 댓글 입력폼이 보이도록 처리하기위해서 추가 (root님)
	$(function() {
		$("textarea#wr_content[maxlength]").live("keyup change", function() {
			var str = $(this).val()
			var mx = parseInt($(this).attr("maxlength"))
			if (str.length > mx) {
				$(this).val(str.substr(0, mx));
				return false;
			}
		});
			});
	</script>
</div>
</div>
</div>
</body>