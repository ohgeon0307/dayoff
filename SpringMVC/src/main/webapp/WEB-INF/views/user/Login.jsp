<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>로그인하기!</h2>
	<form action="login.do" method="post"> <!-- 로그인을 했을때 추가적인 기능들이 있기때문에 post방식으로 넘김.  -->
		아이디 : <input type="text" name="id">
		<br />
		비밀번호 : <input type="password" name="password">
		<br/>
		<button>로그인</button>
	</form>
</body>
</html>