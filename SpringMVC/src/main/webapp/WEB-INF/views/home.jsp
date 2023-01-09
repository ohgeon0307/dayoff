<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<html>
<head>
<title>Home</title>
<meta charset="EUC-KR">
</head>
<body>
	<h1>I wanna go home -_-</h1>

	<P>The time on the server is ${serverTime}.</P>
	<a href="<%= request.getContextPath()%>/test.do">test 경로 이동!</a>
	<!--  위 링크를 클릭했을 때 views 폴더에 있는 sample.jsp가 포워드 되도록 구현하세요. -->
	<hr>

	<a href="<%= request.getContextPath()%>/board/list.do">board/list.do</a>
	<a href="<%= request.getContextPath()%>/board/view.do">board/view.do</a>
	<a href="<%= request.getContextPath()%>/board/write.do">board/write.do</a>
	
	<hr>
	<a href="<%= request.getContextPath()%>/oper/calc.do">계산기 바로가기</a>
	
	<a href="<%= request.getContextPath()%>/user/list.do">user/list.do</a>
	<c:if test="${login == null}">
	<a href="<%= request.getContextPath()%>/user/login.do">로그인 하러 가기😜</a>
	</c:if>
	<c:if test="${login != null}">
	<a href="<%= request.getContextPath()%>/user/logout.do">로그아웃 하기 💨 </a>
	</c:if>
	<hr/>
	${login.id }님 환영합니다!
	<hr />
	<c:if test="${login == null }">
	<a href="<%= request.getContextPath() %>/user/join.do">회원가입 !</a>
	</c:if>
	<hr />
	<a href="<%= request.getContextPath() %>/ajax/main.do">ajax 통신하러 가기!</a>
	
	<hr />
	<a href="<%= request.getContextPath() %>/fileupload.do">파일업로드 하러 가기 !</a>
	
</body>
</html>
