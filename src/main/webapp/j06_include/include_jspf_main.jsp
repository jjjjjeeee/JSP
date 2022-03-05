<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#container{
		width:800px;
		margin:0 auto;
		background-color: #ddd;
	}
	
	#footerDiv{
		height:100px;
		background-color:cyan;
	}
	#topDiv{
		height:100px;
		background-color:orange;
	}
</style>
</head>
<body>
<!-- top include -->
<%@ include file="top.jspf" %>
<div id="container">
	<h1>메인 페이지 : jspf조각 파일은 데이터를 호환한다.</h1>
	이름 : <%=name%><br/>
	연락처 : <%=tel %>
</div>
<!-- footer include -->
<%@ include file="footer.jspf" %>
</body>
</html>