<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
	<h1>회원가입</h1>
	<form action="/helloweb/join.jsp" method="post">
		이메일: <input type="text" name="email" />
		<br/><br/>
		
		비밀번호: <input type="password" name="password" />
		<br/><br/>
		
		생년:
		<select name="birth-year">
			<option value="1996">1996년</option>
			<option value="1997">1997년</option>
			<option value="1998">1998년</option>
			<option value="1999">1999년</option>
		</select>
		<br/><br/>
		S
		성별:
		여<input type="radio" name="gender" value="female" checked="checked" />
		남<input type="radio" name="gender" value="male" />
		<br/><br/>
		
		취미:
		코딩<input type="checkbox" name="hobby" value="coding" />
		술먹기<input type="checkbox" name="hobby" value="drinking" />
		요리<input type="checkbox" name="hobby" value="cook" />
		헬스<input type="checkbox" name="hobby" value="gym" />
		<br/><br/>
		
		자기소개:
		<textarea name="profile"></textarea>
		<br/><br/>
		
		<input type="submit" value="가입" />		
	</form>
</body>
</html>