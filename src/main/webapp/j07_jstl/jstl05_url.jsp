<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- url주소를 가지는 태그 -->
<c:url var="home" value="../Index.jsp"/>
<c:url var="empFrm" value="../j02_response_jdbc/empForm.jsp">
	<c:param name="no" value="999"/>
	<c:param name="name" value="손흥민"/>
</c:url>

<a href="${home}">홈으로 이동하기</a><br/>
<h1>사원등록폼으로 이동하기</h1>
<a href="${empFrm }">사원등록</a>
</body>
</html>