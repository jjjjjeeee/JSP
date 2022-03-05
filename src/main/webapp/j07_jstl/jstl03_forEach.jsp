<%@page import="java.util.HashMap"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>forEach 반복문</h1>
<c:set var="dan" value="${8 }"/>
<!-- 		변수		시작값 	 종료값 	 증가값(생략하면 1씩증가) -->
<c:forEach var="i" begin="2" end="9" step="1">
	${dan } * ${i } = ${dan*i }<br/>
</c:forEach>

<h1>배열을 이용한 반복문</h1>
<c:set var="arr" value="<%=new int[]{20,34,56,2,61,75,64,81,59} %>"/>

<!-- 				  items:배열 또는 컬렉션 -->
<c:forEach var="data" items="${arr }">
	[${data }],
</c:forEach>

<h1>컬렉션을 이용한 반복문</h1>
<%
	List<String> lst = new ArrayList<String>();
	lst.add("강남구");
	lst.add("송파구");
	lst.add("관악구");
	lst.add("영등포구");
	lst.add("서대문구");	
	
%>
<c:set var="city" value="<%=lst %>"/>
<ol>
<c:forEach var="v" items="${city }">
	<li>${v }</li>
</c:forEach>
</ol>

<ul>
<c:forEach var="vv" items="<%=lst %>">
	<li>${vv }</li>
</c:forEach>
</ul>
<hr/>
<h1>HashMap의 컬렉션으로 반복문 처리</h1>
<%
	HashMap<String, String> hm = new HashMap<String, String>();
	hm.put("userid", "goguma");
	hm.put("username", "고구마");
	hm.put("tel", "010-5656-7878");
	hm.put("addr","서울시 강남구 역삼동");
	
%>
<c:set var="info" value="<%=hm %>"/>
<ol>
<c:forEach var="vvv" items="${info }">
	<li>key: ${vvv.key },value: ${vvv.value }</li>
	
</c:forEach>
</ol>

<ul>
<c:forEach var="vvv" items="${info }">
	<li>key: ${vvv.key },value: ${vvv.value }</li>
	
</c:forEach>
</ul>
</body>
</html>