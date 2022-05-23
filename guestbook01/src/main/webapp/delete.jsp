<%@page import="java.io.PrintWriter"%>
<%@page import="com.douzone.guestbook.dao.GuestBookDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
 <%
	request.setCharacterEncoding("UTF-8");
 
	int value = Integer.parseInt(request.getParameter("id"));
	String password = request.getParameter("password");
	
	int result = new GuestBookDao().delete(value, password);
	// response.sendRedirect("index.jsp");
	response.setContentType("text/html; charset=UTF-8"); 
	PrintWriter writer = response.getWriter();	
	if(result == 0){
		writer.println("<script>alert('비밀번호가 틀렸습니다.'); location.href='deleteform.jsp?no="+value+"';</script>");	
	}else{
		writer.println("<script>alert('삭제되었습니다.'); location.href='/guestbook01';</script>");
	}
		 
	writer.flush();

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

 	
</body>
</html>