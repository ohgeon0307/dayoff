<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>W.jsp 입니다~</h2>
	
	<form action="write.do" method = "post"> 
		제목 : <input type="text" name = "title"><br />
		작성자 : <input type="text" value = "${login.name}" readonly></br>
		내용 : <textarea name = "content"></textarea><br/>
		<button>저장</button>
		<!-- 버튼은 부모가 누구냐에 따라서 타입이 변경된다. -->
	</form>
</body>
</html>