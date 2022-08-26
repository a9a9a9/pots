<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>출금신청</title>
<style>
@import url(http://api.mobilis.co.kr/webfonts/css/?fontface=NanumGothicWeb);  
@import url(//fonts.googleapis.com/earlyaccess/nanumgothic.css);

.nanumgothic {
 font-family: 'Nanum Gothic', sans-serif;
}

body {
  font-family: 'Noto Sans KR', 'NanumGothic', '나눔고딕', ng, 'Malgun Gothic', Gulim, Dotum, Sans-Serif;
  font-weight: 400;
  margin: 0;
}
#titleimg{
  margin-bottom: 10px;
  text-align: left;
  margin-top: 30px;
  font-size: 17px;
}
#wrapper {
  width: 500px;
  background-color: white;
  text-align: center;
  margin: 0px 20px 0px 80px;
}

.money-table{
  padd-top: 10px;
  text-align: left;
  border: 1px solid #84cdcf;
  margin: auto;
  width: 500px;
  height: 200px;
  border-collapse: collapse;
  font-size: 14px;
}
tr, td {
  border: 1px solid #84cdcf;
}
.content {
  padding-left: 10px;
}
.title {
  padding: 0px 20px;
  width: 35%;
  color: #9F9F9F ;
}
.sure {
  font-size: 15px;
  color: #626262;
  padding-top: 15px;
  padding-bottom:10px;
  font-weight: bold;
}
button {
  border: 0;
  width: 90px;
  height:  40px;
  border-radius: 10px;
  background-color: #84cdcf;
  color: #fff;
  font-weight: bold;
  font-size: 15px;
  margin: 10px;
}
</style>
</head>

<body>
  <div id="wrapper">
<form action="/BillComplete" method="get">
  <div id="titleimg">
    <b class="title-1">출금</b> 정보
  </div>
    
  <table class="money-table">
 
    <tr id="tr-1">
        <td class="title">이름</td>
        <td class="content">${sessionScope.name }</td>
    </tr>
    <tr id="tr-1">
        <td class="title">은행 </td>
        <td class="content">${sessionScope.account_name }</td>
    </tr>
    <tr id="tr-1">
        <td class="title">계좌번호</td>
        <td class="content">${sessionScope.account_num }</td>
    </tr>
    <tr id="tr-1">
        <td class="title">출금예정금액</td>
        <td class="content"> ${money }</td>
    </tr>
    
    
  </table>

<input type="hidden" name="bill_charge" value="${money }"/>
<br/>
  <div class="sure">위 정보로 출금하시겠습니까?</div>

<button value="취소" onclick="window.close()">취소</button>
  <button type="submit">확인</button>
</form>
</div>
</body>
</html>