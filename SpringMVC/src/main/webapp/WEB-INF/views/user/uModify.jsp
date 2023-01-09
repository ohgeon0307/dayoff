<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>UserModify.jsp 입니다 *</h2>
	<form action="modify.do" method="post">
		<input type="hidden" name="uidx" value="${vo.uidx }">
		<table border="1">
			<tr>
				<th>아이디</th>
				<td><input type="text" name="id" value="${vo.id }"></td>
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
				<th>유저핸드폰번호</th>
				<td><textarea name="phone">${vo.phone }</textarea></td>
			</tr>
		</table>
		<button>저장</button>
	</form>
	<!-- 
		상세페이지에서 수정버튼 클릭시 해당 jsp가 포워드 될 수 있도록 구현한다.
		이때 수정버튼을 클릭한 게시글에 대한 상세 정보가 페이지에 출력되어야 한다.
	 -->
</body>
</html>