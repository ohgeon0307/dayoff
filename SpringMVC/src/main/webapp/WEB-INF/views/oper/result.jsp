<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ page import ="java.util.*" %>
    <%@ page import ="edu.study.vo.CalVo" %>
    
    <%
	int result = (Integer)request.getAttribute("result"); //형변환.
	%>
	<%
	CalVo vo = (CalVo)request.getAttribute("vo");
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


	<h2>result.jsp</h2>

	연산의 결과는 ? <%=result %> <br/>
	숫자1 :  <%=vo.getNum1() %><br/>
	숫자2 :  <%=vo.getNum2() %><br/>
	연산자 :  <%=vo.getOper() %><br/>
</body>
</html>

<!-- 
1. home.jsp에서 계산하러 가기 링크를 클릭시 calculator.jsp 페이지 포워드 
2. calculator.jsp 에서 계산하기 버튼 클릭시 계산의 결과를 result.jsp 에 출력하기
-->