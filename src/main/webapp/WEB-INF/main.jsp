<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url var="root" value="/" />
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	var result = "${msg}";
	if(result === "가입 완료"){
		alert(result);
	}
</script>
</head>
<body class="responsive is-pc">
	<div class="wrap wrapper  ko">
		<div class="body">
			<div class="width-container" style="height: auto;">
			</div>
		</div>
	</div>
</body>
</html>