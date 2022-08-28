<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:import url="partyIndex.jsp" />
<script>
	window.onload = function() {
		document.getElementById('partyList').classList.add('active');
	}
</script>
<!-- body -->
<div class="partner-body">
	<!-- <script src="./script.js"></script> -->

	<!-- [[ 파트너 파티 관리 ]] -->

	<form class="form" role="form" name="flist" action="partySearch" method="GET">

		<div class="partner-well">
			<select name="sel1" id="sca">
				<option value="">카테고리</option>
				<option value="10">영상</option>
				<option value="1010">&nbsp;&nbsp;&nbsp;#넷플릭스</option>
				<option value="1020">&nbsp;&nbsp;&nbsp;#왓챠</option>
				<option value="1030">&nbsp;&nbsp;&nbsp;#유튜브</option>
				<option value="1040">&nbsp;&nbsp;&nbsp;#웨이브</option>
				<option value="1050">&nbsp;&nbsp;&nbsp;#티빙</option>
				<option value="1080">&nbsp;&nbsp;&nbsp;#디즈니</option>
				<option value="20">도서/음악</option>
				<option value="2010">&nbsp;&nbsp;&nbsp;#리디북스</option>
				<option value="2020">&nbsp;&nbsp;&nbsp;#밀리의서재</option>
				<option value="2030">&nbsp;&nbsp;&nbsp;#YES24</option>
				<option value="2040">&nbsp;&nbsp;&nbsp;#스포티파이</option>
				<option value="30">게임</option>
				<option value="3010">&nbsp;&nbsp;&nbsp;#닌텐도온라인</option>
				<option value="3050">&nbsp;&nbsp;&nbsp;#XBOX</option>
				<option value="60">기타</option>
				<option value="6050">&nbsp;&nbsp;&nbsp;#맴버쉽</option>
				<option value="6010">&nbsp;&nbsp;&nbsp;#MS Office</option>
			</select>
			
			<script>
				document.getElementById("sca").value = "";
				
			</script>
			
			<select name="sel2" id="sfl">
				<option value="num">파티번호</option>
				<option value="id">계정ID</option>
			</select> 
			
			<input type="text" name="searchWord" value="" id="stx" class="search" placeholder="파티번호 검색어">
			<button type="submit" class="button mini border button-purple">검색</button>
			<a href="partyCreate" class="button mini button-purple">파티생성</a>
		</div>

	</form>


	<div class="title">
		<span class="text-purple">파티/판매</span> 목록

		<div class="title2">
			<span> <a class="text-purple">최신순</a>
			<!-- </span> <span class=" v-bar left" style="top: -5px;"> </span> <span>
				<a href="./?ap=list&amp;sort=p">모집중 파티</a>
			</span> <span class=" v-bar left" style="top: -5px;"> </span> <span>
				<a href="./?ap=list&amp;sort=e">연장가능 파티</a>
			</span> -->
		</div>
	</div>
	
	<!-- 등록된 내용이 없는 경우 -->
	<form class="form" role="form" name="fitemlistupdate" method="post" onsubmit="return fitemlist_submit(this);" autocomplete="off">
		<!-- <input type="hidden" name="ap" value=""> <input type="hidden"
			name="sca" value=""> <input type="hidden" name="sst" value="">
		<input type="hidden" name="sod" value=""> <input type="hidden"
			name="sfl" value=""> <input type="hidden" name="stx" value="">
		<input type="hidden" name="page" value="1"> -->

		<div class="table-list scroll">
			<table>
				<thead>
					<tr>
						<th scope="col">
							<div class="input-check" style="margin-right: -8px;">
								<input type="checkbox" name="chkall" value="1" id="chkall"
									> <label for="chkall"></label>
							</div>
						</th>
						<th scope="col">제목</th>
						<th width="10%" scope="col">총금액(일금액)</th>
						<th width="10%" scope="col">모집중(총 인원)</th>
						<th width="8%" scope="col">남은기간(상태)</th>
						<th width="10%" scope="col">종료일</th>
						<th width="10%" scope="col">파티생성일</th>
						<th width="15%" scope="col">관리</th>
					</tr>
				</thead>
				<tbody>
			
			<c:choose>
				<c:when test="${empty list }" >
				<!-- 등록된 내용이 없는 경우 -->
				
					<tr>
						<td colspan="12">
							<div class="empty">
								<div class="icon">
									<img src="/img/icon-butsicon-big-glay.png" />
								</div>
								<h5>등록된 내용이 없습니다.</h5>
							</div>
						</td>
					</tr>
				
				</c:when>
				<c:otherwise>
				
				<!-- 등록된 내용이 있는 경우 -->
					<c:forEach var="pl" items="${list }" begin="${paging.start }" end="${paging.end }" varStatus="vs">
					<input type="hidden" name="${pl.party_num }" value="${pl.party_left_member }">
						<tr>
								<td>
									<div class="input-check" style="margin-right: -8px;">
										<input type="checkbox" name="chk" value="${pl.party_num }" id="chk_${vs.index }">
										
										<label for="chk_${vs.index }"></label>
									</div> 
									<input type="hidden" name="it_id[${vs.index }]" value="${pl.party_num }">
								</td>
								<td>
									<a href="index?formpath=partyMain?party_num=${ pl.party_num}" class="item-name"> 
									<span class="brand">
									<img src="${pl.logo }" alt=""></span> 
									<span class="name">${ pl.party_title}</span> 
									<span class="lightgrey"> 파티번호 : ${ pl.party_num} / ${ pl.party_service} / ${ pl.party_subservice} </span>
								</a></td>
								<td><strong>${pl.party_total_charge }</strong>원(<strong>${ pl.party_charge}</strong>원)</td>
								<td><strong>${pl.party_left_member }명(총 ${pl.party_member }명)</strong></td>
								<td><strong>${pl.party_left_date }</strong>일</td>
								<c:choose>
									<c:when test="${pl.party_left_date <= 0 }">
										<td><span class="lightgrey"> 종료 </span></td>
									
									</c:when>
									<c:otherwise>
										<td><span class="lightgrey"> ${pl.party_end } </span></td>
									</c:otherwise>
								</c:choose>
								
								<td class="text-center">${pl.party_regdate }</td>
								
								<td class="text-center">
								<c:if test="${pl.party_left_date > 0 }">
									<a href="partyUpdate?party_num=${pl.party_num }" class="button round border button-purple">수정</a>
								</c:if>
								</td>
							</tr>
						</c:forEach>
				</c:otherwise>
			</c:choose>
				</tbody>
			</table>
		</div>
		
		<c:set var="paging" value="${paging }"/>
		<c:if test="${not empty list }">
		<div class="page-number" style="border-top: 0">
			<ul>
				<li class="disabled">
					<a href = "/partyList?nowPage=1"><i class="fa fa-angle-double-left"></i></a>
				</li>
				
				<li class="disabled">
					<a href = "/partyList?nowPage=${paging.nowPage -1}"><i class="fa fa-angle-left"></i></a>
				</li>
				
				<c:forEach begin="1" end="${paging.endPage }" var="p">
					<c:choose>
						<c:when test="${p == paging.nowPage }">
							<li class="active">
								<a>${p }</a>
							</li>
						</c:when>
						<c:when test="${p != paging.nowPage }">
							<li><a href="/partyList?nowPage=${p }">${p }</a></li>
						</c:when>
					</c:choose>
				</c:forEach>	
				
				<li class="disabled">
					<a href = "/partyList?nowPage=${paging.nowPage + 1}"><i class="fa fa-angle-right"></i></a>
				</li>
				
				<li class="disabled">
					<a href = "/partyList?nowPage=${paging.endPage}"><i class="fa fa-angle-double-right"></i></a>
				</li>
			</ul>
		</div>
		</c:if>


		<div class="button-align left mg-top-0">
			<input type="button" name="act_button" value="선택삭제" onclick="deleteValue()" class="button round border button-purple"> 
			<input type="button" name="act_button" value="선택마감" onclick="closeValue()" class="button round border button-purple">
		</div>

	</form>
	

	<script>
		function fitemlist_submit(f) {
			if (!is_checked("chk")) {
				alert(document.pressed + " 하실 항목을 하나 이상 선택하세요.");
				return false;
			}

			if (document.pressed == "선택삭제") {
				if (!confirm("선택한 자료를 정말 삭제하시겠습니까?")) {
					return false;
				}
			}

			if (document.pressed == "선택마감") {
				if (!confirm("선택한 자료를 정말 마감하시겠습니까?")) {
					return false;
				}
			}

			return true;
		}
		
		
		function deleteValue(){
			var url = "deleteproc";    // Controller로 보내고자 하는 URL
			var valueArr = new Array();
		    var list = $("input[name='chk']");
		    for(var i = 0; i < list.length; i++){
		        if(list[i].checked){ //선택되어 있으면 배열에 값을 저장함
		        	var tmp = $("input[name='" + list[i].value + "']");
		        	if(tmp != 0){
		        		alert("모집 인원이 한 명 이상 존재할 경우 삭제할 수 없습니다.");
		        		return false;
		        	}
		        	
		            valueArr.push(list[i].value);
		        }
		    }
		    if (valueArr.length == 0){
		    	alert("선택된 파티가 없습니다.");
		    }
		    else{
				var chk = confirm("정말 삭제하시겠습니까?");
				var sendData = JSON.stringify(valueArr);
				$.ajax({
				    url : url,                    // 전송 URL
				    method : 'POST',                // POST 방식
				    data : sendData ,
				    dataType : 'json' ,
				    contentType: 'application/json',
				    
	                success: function(jdata){
	                    if(jdata = 1) {
	                        alert("선택된 파티가 삭제되었습니다.");
	                        location.replace("partyList") //list 로 페이지 새로고침
	                    }
	                    else{
	                        alert("선택된 파티를 삭제하지 못했습니다.");
	                    }
	                }
				});
			}
		}
		
		function closeValue(){
			var url = "closeproc";    // Controller로 보내고자 하는 URL
			var valueArr = new Array();
		    var list = $("input[name='chk']");
		    for(var i = 0; i < list.length; i++){
		        if(list[i].checked){ //선택되어 있으면 배열에 값을 저장함
		            valueArr.push(list[i].value);
		        }
		    }
		    if (valueArr.length == 0){
		    	alert("선택된 파티가 없습니다.");
		    }
		    else{
				var sendData = JSON.stringify(valueArr);
				$.ajax({
				    url : url,                    // 전송 URL
				    method : 'POST',                // POST 방식
				    data : sendData ,
				    dataType : 'json' ,
				    contentType: 'application/json',
				    
	                success: function(jdata){
	                    if(jdata = 1) {
	                        alert("선택된 파티가 마감되었습니다.");
	                        location.replace("partyList") //list 로 페이지 새로고침
	                    }
	                    else{
	                        alert("해당 파티를 마감시키지 못했습니다.");
	                    }
	                }
				});
			}
		}
	</script>
	
	<script type="text/javascript">
		$(document).ready(function() {
			$("#chkall").click(function() {
				if($("#chkall").is(":checked")) $("input[name=chk]").prop("checked", true);
				else $("input[name=chk]").prop("checked", false);
			});
			
			$("input[name=chk]").click(function() {
				var total = $("input[name=chk]").length;
				var checked = $("input[name=chk]:checked").length;
				
				if(total != checked) $("#chkall").prop("checked", false);
				else $("#chkall").prop("checked", true); 
			});
		});
	</script>
	
</div>
<!-- /#page-wrapper -->
</div>
<!-- /#wrapper -->

<!-- JavaScript -->
<script type="text/javascript" src="/js/bootstrap.min.js"></script>
<script>
	$(function() {
		var $window = $(window), $partnerToggle = $('.partner-toggle'), $partnerShade = $('.partner-shade'), $partnerNav = $('.partner-nav');

		function navToggle() {
			if ($partnerShade.hasClass('close')) {
				$partnerShade.add($partnerNav).removeClass('close').addClass(
						'open');
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
				$partnerShade.add($partnerNav).removeClass('open').addClass(
						'close');
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