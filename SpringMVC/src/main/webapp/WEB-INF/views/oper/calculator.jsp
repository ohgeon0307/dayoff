<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>계산기 입니다.</title>
</head>
<body>
	<h1>calculator.jsp</h1>
	
	<form action="calc.do" method="post">
		숫자1 : <input type="number" name= "num1" required><br/>
		숫자2 : <input type="number" name= "num2" required><br/>
		연산자 : <input type="radio" name="oper" value="plus">+
		<input type="radio" name="oper" value="minus">-
		<input type="radio" name="oper" value="multi">*
		<input type="radio" name="oper" value="div">/
		<br/>
		<button>계산하기</button>
	</form>
</body>
</html>