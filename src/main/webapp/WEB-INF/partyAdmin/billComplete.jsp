<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
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

#wrapper {
  width: 500px;
  height: 300px;
  background-color: white;
  text-align: center;
  margin: 0 20px 0 80px;
}

.content {
  padding: 160px 0 60px 0;
  font-size: 24px;
}

button {
  border: 0;
  width: 90px;
  height:  40px;
  border-radius: 10px;
  background-color: #84cdcf;
  color: #fff;
  font-weight: bold;
  font-size: 20px;
  margin: 10px;
}
</style>
</head>
<body>
  <div id="wrapper">
    <div class="content"><b>출금</b>이 완료되었습니다</div>
    <button onclick="toggle()">닫기</button>
    </div>
<script>
function toggle(){
	opener.parent.location.reload();
	window.close();
}

</script>
</body>
</html>