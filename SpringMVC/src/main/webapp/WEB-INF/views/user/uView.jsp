<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>user Mypage입니다.</h2>
	<table border="1">
		<tr>
			<th>유저아이디</th>
			<td>${vo.id }</td>
		</tr>
		<tr>
			<th>유저이름</th>
			<td>${vo.name }</td>
		</tr>
		<tr>
			<th>유저주소</th>
			<td>${vo.addr }</td>
		</tr>
		<tr>
			<th>유저 핸드폰번호</th>
			<td>${vo.phone }</td>
		</tr>
	</table>
	
	<button onclick="location.href='modify.do?uidx=${vo.uidx}'">수정</button>
</body>
</html>