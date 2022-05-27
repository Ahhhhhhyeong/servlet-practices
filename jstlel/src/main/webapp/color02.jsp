<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:choose>
		<c:when test='${param.c == "r"}'>
			<h1 style='color: red'>HelloWorld</h1>
		</c:when>
		<c:when test='${param.c == "b" }'>
			<h1 style='color:blue'>HelloWorld</h1>
		</c:when>
		<c:when test='${param.c == "g" }'>
			<h1 style='color:green'>HelloWorld</h1>
		</c:when>
		<c:otherwise>
			<h1>HelloWorld</h1>
		</c:otherwise>
	</c:choose>
	
	
</body>
</html>