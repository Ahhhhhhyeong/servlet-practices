<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- Title tag -->
	<h1>h1</h1>
	<h2>h2</h2>
	<h3>h3</h3>
	<h4>h4</h4>
	<h5>h5</h5>
	<h6>h6</h6>
	
	<!-- 줄 그음 -->
	<hr/>
	
	
	<!-- Table tag -->
	<table border=1>
		<tr>
			<th>글번호</th>
			<th>글제목</th>
			<th>작성자</th>
		</tr>		
		<tr>
			<td>3</td>
			<td>안녕하세요!</td>
			<td>둘리</td>
		</tr>
		<tr>
			<td>2</td>
			<td>반갑습니다.</td>
			<td>고길동</td>
		</tr>
		<tr>
			<td>1</td>
			<td>안녕하세요~</td>
			<td>마이콜</td>
		</tr>
	</table>
	
	<hr/>
	
	<!-- Image tag -->		
	<img src="http://localhost:8080/helloweb/assets/images/zoro.jpg" alt="내남편"/> <br/>
	<img src="/helloweb/assets/images/zoro2.jpg" /> <br/>
	<img src="assets/images/zoro3.jpg" />
	<hr/>
	
	<!-- link tag -->
	<a href="/helloweb/hello">hello로 가기</a>
	</br>
	<a href="form.jsp">폼으로 가기</a>
	
	</hr>
	
	<!-- p tag -->
	<p>
		뢀ㄹ라랄라라라 문장쓰는 태그인데 </br>
		br을 계속 달아줘야 Enter 효과를 볼 수 <b>있습니다</b>
	</p>
	
	
</body>
</html>