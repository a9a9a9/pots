<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>출금신청</title>
</head>
<body>
<form action="/BillComplete" method="get">
<div>이름: ${session.name }</div><br>
<div>은행 : ${session.account_name }</div><br>
<div>계좌번호 : ${session.account_num }</div><br>
<div>출금예정금액 : ${money }</div>
<input type="hidden" name="bill_charge" value="${money }"/>
<br>
<br>
<br>
위 정보로 출금하시겠습니까?
<br>
<button type="submit"  >확인</button>
<button value="취소" onclick="window.close()">취소</button>
</form>
</body>
</html>