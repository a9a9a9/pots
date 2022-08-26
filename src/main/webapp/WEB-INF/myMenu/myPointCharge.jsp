<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url var="root" value="/" />

<body class="responsive is-pc">
	<div class="wrap wrapper  ko">
		<div class="body" >
			<div class="width-container">
				<form name="forderform" id="forderform" method="post" action="ChargeProc"class="form-horizontal">
					<input type="hidden" name="od_price"    value="">
					<input type="hidden" name="org_od_price"    value="">
					<input type="hidden" name="od_send_cost" value="">
					<input type="hidden" name="check_val" value="">
<!-- 					<input type="hidden" name="" value=""> -->
					<input type="hidden" name="od_coupon" value="0">
					<input type="hidden" name="od_send_coupon" value="0">
				
				<div class="mw-800 mg-top-minus">
					<div class="h3"><span class="text-purple">포인트</span> 충전</div>
					<div class="accordion">
						<ul>
						<li>
							<div class="select">
								<span class="input-check">
									<input type="radio" id="od_9900" name="od_point" value="9900"  onclick="change_view('9900');" checked />
									<label for="od_9900">
										<span class="icon">
										<img src="https://buts.co.kr/thema/Buts/colorset/Basic/img/icon-coin-star-big.png" srcset="https://buts.co.kr/thema/Buts/colorset/Basic/img/2x/icon-coin-star-big.png 2x" alt="" /></span>
										<span class="Rajdhani">9,900</span>
										<span class="tip text-red">(이벤트 기간동안 1인당 1회만 결제가능)</span>
										<span class="right">
											<span class="benefit"><span class="text-purple">+990</span> 추가 포인트</span>
											<span class="button round border button-purple">10% ↑</span>
										</span>
									</label>
								</span>
							</div>
						</li>
						<li>
							<div class="select">
								<span class="input-check">
									<input type="radio" id="od_50000" name="od_point" value="50000"  onclick="change_view('50000');" />
									<label for="od_50000">
										<span class="icon"><img src="https://buts.co.kr/thema/Buts/colorset/Basic/img/icon-coin-star-big.png" srcset="https://buts.co.kr/thema/Buts/colorset/Basic/img/2x/icon-coin-star-big.png 2x" alt="" /></span>
										<span class="Rajdhani">50,000</span>
										<span class="right">
											<span class="benefit"><span class="text-purple">+1,500</span> 추가 포인트</span>
											<span class="button round border button-purple">3% ↑</span>
										</span>
									</label>
								</span>
							</div>
						</li>
						<li>
							<div class="select">
								<span class="input-check">
									<input type="radio"  id="od_70000" name="od_point" value="70000"  onclick="change_view('70000');" />
									<label for="od_70000">
										<span class="icon"><img src="https://buts.co.kr/thema/Buts/colorset/Basic/img/icon-coin-star-big.png" srcset="https://buts.co.kr/thema/Buts/colorset/Basic/img/2x/icon-coin-star-big.png 2x" alt="" /></span>
										<span class="Rajdhani">70,000</span>
										<span class="right">
											<span class="benefit"><span class="text-purple">+2,800</span> 추가 포인트</span>
											<span class="button round border button-purple">4% ↑</span>
										</span>
									</label>
								</span>
							</div>
						</li>
						<li>
							<div class="select">
								<span class="input-check">
									<input type="radio"  id="od_100000" name="od_point" value="100000"  onclick="change_view('100000');" />
									<label for="od_100000">
										<span class="icon"><img src="https://buts.co.kr/thema/Buts/colorset/Basic/img/icon-coin-star-big.png" srcset="https://buts.co.kr/thema/Buts/colorset/Basic/img/2x/icon-coin-star-big.png 2x" alt="" /></span>
										<span class="Rajdhani">100,000</span>
										<span class="right">
											<span class="benefit"><span class="text-purple">+5,000</span> 추가 포인트</span>
											<span class="button round border button-purple">5% ↑</span>
										</span>
									</label>
								</span>
							</div>
						</li>
						</ul>
					</div>
					<div class="caution">
						<strong>유의사항</strong>
						<ul>
						<li>벗츠 포인트는 현금과 동일하게 벗츠 내 에서 사용이 가능합니다.</li>
						<li>포인트로 결제 시 결제 직 후 별도의 확인 절차없이 파티장이 공유한 참여정보 확인이 가능합니다.</li>
						<li>포인트결제는 현금결제로만 가능하며 결제 액수에 따라 포인트가 추가 지급됩니다.</li>
						<li>남은 포인트는 인출신청이 가능하며 인출 진행 시 혜택받은 포인트는 차감된 금액으로 진행됩니다.</li>
						</ul>
					</div>
				
					<div class="h3">결제 정보</div>
					<div class="form-list border border-bottom">
						<ul>
						<li>
							<div class="subject">ㆍ 결재 금액</div>
							<div class="right"><span class="Rajdhani" id="od_tot_price">9,900</span><span class="won">원</span></div>
							<input type="hidden" name="price" value="od_point">
						</li>
						<li>
							<div class="subject">ㆍ 결제방법</div>
							<div class="right">
							<span class="input-check input-radio">
								<input type="radio" id="od_settle_bank" name="od_settle_case" value="무통장" checked />
								<label for="od_settle_bank">계좌이체</label>
							</span>
							</div>
							<div class="account text-right">
								<select name="od_bank_account" id="od_bank_account">
									<option value="우리은행 1002-254-965054 이관리" selected="selected">우리은행 1002-254-965054 이관리</option>
								</select>
								<input type="text" value="${sessionScope.name }" name="od_deposit_name" disabled id="od_deposit_name" size="10" maxlength="20" placeholder="입금자명" />	
							</div>
							<p class="lightgrey text-right">
								*계좌이체 진행시 입금 확인까지 <span class="text-purple">최대 10분 정도 소요</span>됩니다.(단, 해당 은행 점검시간이나 사정에 의하여 늦어질 수 있습니다) <br />
								<span class="text-purple">1시간 이내 미입금시 주문내역이 취소</span> 되실수 있습니다.
							</p>
						</li>
						</ul>
					</div>
				</div>
				<script>
				$(function(){
					 $('.form-payment-agree').css({display: 'block', textAlign: 'center'});
				});
				</script>
				
				<script>
					function change_view(check_val)
					{
						document.getElementById("od_tot_price").innerHTML = number_format(check_val);
					}
					$("#settle_bank").show();
					$("[name=od_deposit_name]").val( "${sessionScope.name}" );
				</script>
				
				<div id="display_pay_button" class="btn_confirm button-align center">
					<a href="ChargeProc?price=${od_point }"/>
				    <input type="submit" value="주문하기" onclick="#" class="btn_pay btn_submit button large button-purple" style="border:0px;">
				    <a href="javascript:history.go(-1);" class="button large">취소</a>
				</div>
				<div id="display_pay_process" style="display:none">
				    <img src="https://buts.co.kr/shop/img/loading.gif" alt="">
				    <span>주문완료 중입니다. 잠시만 기다려 주십시오.</span>
				</div>
				</form>
				<br>
				
				
				<!-- Modal -->
				<div class="modal fade" id="couponModal" tabindex="-1" role="dialog" aria-labelledby="couponModalLabel" aria-hidden="true">
				  <div class="modal-dialog">
				    <div class="modal-content">
				      <div class="modal-body">
						<div id="couponBox"></div>
					  </div>
				    </div>
				  </div>
				</div>
			</div>
		</div>
	</div> 
</body>