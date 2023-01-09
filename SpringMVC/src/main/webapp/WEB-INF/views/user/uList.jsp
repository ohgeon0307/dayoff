<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@ page import="java.util.*" %>
<%@ page import="edu.study.vo.UserVo" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
	List<UserVo> list = (List<UserVo>)request.getAttribute("userlist");
%>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>유저 리스트 입니다.</h2>
	
	<table border="1">
	<c:forEach items="${userlist}" var="vo">
		<tr>
			<td>${vo.uidx }</td>
			<td><a href="view.do?uidx=${vo.uidx}">${vo.id}</a></td>
			<td>${vo.name }</td>
		</tr>
	</c:forEach>
	</table>
</body>
</html>