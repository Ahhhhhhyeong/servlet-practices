<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h4>Scope객체의 저장범위 테스트</h4>
	${vo.no }<br/>
	${vo.name }<br/>
	
	=============================================<br/>
	<!-- 같은이름의 vo에 Scope객체를 저장해서 앞에 명시를 해줌.
		 보통은 생략 -->
	${sessionScope.vo.no }<br/>
	${sessionScope.vo.name }<br/>
	
	
</body>
</html>