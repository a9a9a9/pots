<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
출금이 완료되었습니다<br>
<button onclick="toggle()">닫기</button>
<script>
function toggle(){
	opener.parent.location.reload();
	window.close();
}

</script>
</body>
</html>