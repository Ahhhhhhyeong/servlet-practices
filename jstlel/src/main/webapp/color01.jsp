<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"  %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String color = request.getParameter("c");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		if("r".equals(color)){
	%>
		<h1 style='color:red'>HelloWorld</h1>
	<%
		} else if("b".equals(color)){		
	%>
		<h1 style='color:blue'>HelloWorld</h1>
	<%
		} else if("g".equals(color)){
	%>
		<h1 style='color:green'>HelloWorld</h1>
	<% 
		} else { 
	%>
		<h1 >HelloWorld</h1>
	<% 
		}
	%>
</body>
</html>