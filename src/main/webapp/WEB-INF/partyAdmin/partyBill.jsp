<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:import url="partyIndex.jsp"/> 
<!-- body -->
	<div class="partner-body">

<!-- [[ 파트너 출금관리 ]] -->
<div class="title"><span class="text-purple">출금</span> 관리</div>

<div class="form-half left">
	<div class="table-list" style="border-top: 1px solid #7e69fe">
		<table>
			<thead>
			<tr>
				<th width="30%" scope="col">구분</th>
				<th width="24%" scope="col">금액(원)</th>
				<th scope="col">비고</th>
			</tr>
			</thead>
			<tbody>
			<tr>
				<td><span class="subject">1.판매총액</span></td>
				<td>0원</td>
				<td class="text-left"><span class="lightgrey">총 판매합산 금액(수수료 제외)</span></td>
			</tr>
			<!--
			<tr>
				<td><span class="subject">2.누적수수료</span></td>
				<td>0원</td>
									<td class="text-left"><span class="lightgrey">판매수수료가 없습니다.</span></td>
							</tr>
				-->
			<tr>
				<td><span class="subject">2.지급금액</span></td>
				<td>0원</td>
				<td class="text-left"><span class="lightgrey">신청금액 기준</span></td>
			</tr>
			<tr class=" bg-grey">
				<td><span class="subject">3.예수금①</span></td>
				<td>0원</td>
				<td class="text-left"><span class="lightgrey">연장 파티의 비공개 기간 동안 발생한 비용</span></td>
			</tr>
				<tr class=" bg-grey">
					<td><span class="subject">4.예수금②(D+7)</span></td>
					<td>0원</td>
					<td class="text-left"><span class="lightgrey">판매금은 예수금으로 전환되며 7일 후 출금신청 가능</span></td>
				</tr>
				<tr class=" bg-grey">
					<td><span class="subject">5.미발생 판매금</span></td>
					<td>0원</td>
					<td class="text-left"><span class="lightgrey">진행 중 파티의 남은 기간에 해당하는 비용</span></td>
				</tr>
				<tr class="bg-grey">
					<td><span class="subject">6.지급 요청 금액</span></td>
					<td><span class="text-purple">0원</span></td>
					<td class="text-left"></td>
				</tr>
				<tr class="emphasis bg-grey">
					<td><span class="subject">7.출금 가능 금액</span></td>
					<td><span class="text-purple">0원</span></td>
					<td class="text-left">1-2-3-4-5-6 = 7</td>
				</tr>
			</tbody>
		</table>
	</div>
</div>

<div class="form-half right form-half-withdraw">
	<div class="table-list" style="border-top: 1px solid #7e69fe">
	<table>
		<thead>
		<tr>
			<th scope="col">정산/입금안내</th>
		</tr>
		</thead>
		<tbody>
		<tr>
			<td>
				<span class="subject">입금 계좌</span>
				<input type="text" class="account" disabled placeholder="신한은행 110486730257 " />
				<!-- <input type="text" class="account" placeholder="농협 8732-0204-056137" /> -->
			</td>
		</tr>
		<tr>
			<td style="padding: 0">
			<p class="guide">
				<span class="lightgrey">※ 정산유형 : 개인 파티장은 수수료가 없습니다.</span><br />
				<span class="lightgrey">※ 전문 파티장은 판매 수수료를 제한 금액에 대해 출금신청이 가능합니다.</span>
			</p>
			<div class="withdraw-price">최대 <strong>0</strong>원까지 신청할 수 있습니다.</div>			
			<div class="withdraw-account">
				<form class="form" role="form" name="frm_amount" action="./payconfirm.php" onsubmit="return frm_submit(this);" method="post">
				<input type="hidden" name="ap" value="paylist">
				<input type="hidden" name="pp_field" value="0">
					<select name="pp_means" id="pp_means">
						<option value="0">통장입금</option>
					</select>
					<input type="text" name="pp_amount" value="" id="pp_amount" required placeholder="출금할 금액을 입력해 주세요">
					<span>원</span>
					<p class="guide">
						<span class="lightgrey">※ 하루에 한번 만 신청 할 수 있습니다.</span><br />
						<span class="lightgrey">※ 모든 은행 출금 수수료는 1,000원으로 동일하게 부과됩니다.(등급별 무료 출금 혜택적용) </span>
						<br />
						<span class="lightgrey">※ 하루 최대 <strong>5,000,000원</strong>(오백만원)만 출금 가능합니다.</span><br />
						<span class="lightgrey">※ 출금 신청 시 영업일 기준 <strong>최대 3일</strong>이 소요 될 수 있습니다. (토요일, 일요일, 공휴일 제외)</span>
					</p>
					<button type="submit" id="btn_submit" class="button button-purple button-withdraw">출금 신청</button>
				</form>
			</div>
			</td>
		</tr>
		</tbody>
	</table>
	</div>
</div>

<script>
	function frm_right(str, n){
		if (n <= 0)
			return "";
		else if (n > String(str).length)
			return str;
		else {
			var iLen = String(str).length;
			return String(str).substring(iLen, iLen - n);
		}
	}

	function frm_submit(f) {
		var pp_netsale = "0";
		var pp_amount = f.pp_amount.value;
		var pp_unit = String(frm_right(pp_amount, 3));


		if (pp_netsale > 0) {
			;
		} else {
			alert("출금가능한 잔액이 없습니다.");
			f.pp_amount.focus();
			return false;
		}

		if (pp_amount > 0) {
			;
		} else {
			alert("신청금액은 숫자로 입력하셔야 합니다.");
			f.pp_amount.focus();
			return false;
		}

		var day_price = "0";

		if (pp_amount > parseInt(day_price)) {
			alert("출금가능한 잔액보다 큰 금액을 신청하셨습니다.");
			f.pp_amount.focus();
			return false;
		}


		if(pp_unit == "000") {
			;
		} else {						
			//alert("신청금액을 1,000원 단위로 입력해 주세요.");
			//f.pp_amount.focus();
			//return false;
		}

		newWin = window.open("about:blank", "_frm", "width=500,height=600,scrollbars=yes,resizable=yes");

		f.target = "_frm";
		f.submit();

		return false;
	}
</script>

<div class="table-list scroll padding">
	<table >
	<thead>
		<tr>
						<th scope="col">상태</th>
			<th scope="col">접수번호</th>
			<th scope="col">신청일</th>
			<th scope="col">출금방법</th>
			<th scope="col">신청금액(수수료)</th>
			<th scope="col">실지급액</th>
			<th scope="col">메모</th>
			<th scope="col">비고</th>
		</tr>
	</thead>
	<tbody>
							<tr>
				<td colspan="10">
					<div class="empty">
						<div class="icon"><img src="https://buts.co.kr/thema/Buts/colorset/Basic/img/icon-butsicon-big-glay.png" /></div>
						<h5>등록된 내용이 없습니다.</h5>
					</div>
				</td>
			</tr>
			</tbody>
	</table>
</div>

<script>
$(function () {
  $('[data-toggle="popover"]').popover()
})
 </script>



	</div><!-- /#page-wrapper -->
</div><!-- /#wrapper -->

<!-- JavaScript -->
<script type="text/javascript" src="https://buts.co.kr/shop/partner/skin/Basic/assets/js/bootstrap.min.js"></script>
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
