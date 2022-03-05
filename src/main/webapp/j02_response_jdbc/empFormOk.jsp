<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- 에러가 발생하면 이동할 페이지 주소를 지시부에 명시한다. -->
<%@page errorPage="../j05_error_page/errorPage.jsp" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page import="java.net.http.HttpHeaders"%>

<%!

	// 2. 드라이브 로딩하기	
	
	public Connection getConnection(){
		Connection con = null;
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://127.0.0.1/demo","root","Qlalfqjsgh11");
		}catch(Exception e){
			System.out.println("DB 연결 에러 발생...");
			e.printStackTrace();
		}
		return con;
	}
%>
<%
	request.setCharacterEncoding("UTF-8");

	// 1. 폼의 데이터를 서버로 가져오기 : request
	int empno = Integer.parseInt(request.getParameter("empno"));
	String ename = request.getParameter("ename");
	int deptno = Integer.parseInt(request.getParameter("deptno"));
	
	// 3. DB연결하기
	
	Connection conn = getConnection();
	
	// 4. preparedStatement만들기(sql)
	String sql = "insert into emp(empno, ename, deptno) values(?,?,?)";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setInt(1,empno);
	pstmt.setString(2,ename);
	pstmt.setInt(3,deptno);
	
	// 5. 실행하기  
	// insert, delete, update 일때는 executeUpdate()사용 => int
	// select 일때는 executeQuery()사용 => ResultSet
	int cnt = pstmt.executeUpdate();
	System.out.println("cnt => "+cnt);
	
	// 6. DB닫기
	pstmt.close();
	conn.close();
	
	// 7. 페이지 이동하기	
	/*
	if(cnt>0){ // db에 레코드가 추가됨(사원이 등록됨)
		// 홈페이지 이동
		response.sendRedirect(request.getContextPath()+"/Index.jsp");
	}else{	// 사원등록 실패
		// 사원등록 폼으로 이동
		response.sendRedirect(request.getContextPath()+"/j02_response_jdbc/empForm.jsp");
	}
	*/
	// javascript
	if(cnt>0){
	%>
		<script>
			alert("사원등록되었습니다.");
			location.href="<%=request.getContextPath()%>/Index.jsp";
		</script>
		
	<%}else{%>
		<script>
			alert("사원등록실패하였습니다.");
			history.back();
			location.href="<%=request.getContextPath()%>/j02_response_jdbc/empForm.jsp";
		</script>
	<%}

%>