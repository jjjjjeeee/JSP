<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function dataSend(){
		location.href='locationOk.jsp?pageNum=5&searchWord=컴퓨터';
	}
</script>
</head>
<body>
<h1>a태그를 이용하여 서버로 데이터 보내기</h1>
<!-- a태그는 get방식으로만 전송가능 -->
<a href='aLinkOK.jsp?name=오오오&num=120&addr=강남구 역삼동'>클릭하세요</a><br/>
<h1>JavaScript location으로 링크 전송</h1>
<button onClick="dataSend()">click</button>
</body>
</html>