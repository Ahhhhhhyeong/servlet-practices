<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"  %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h4>JSTL(forEach Tag) Test</h4>	
	<!-- 값 저장 -->
	<c:set var='count' value='${fn:length(list) }' />
	<!-- 값 반복 -->
	<c:forEach items='${list }' var='vo' varStatus='status'>
		<strong>[${fn:length(list)-status.index }]</strong> 
		<span>(${status.index }:${status.count })[${vo.no }:${vo.name }]</span>
		<br/>
	</c:forEach>

</body>
</html>