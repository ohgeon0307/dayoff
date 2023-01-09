<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="edu.study.vo.BoardVo" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%
	List<BoardVo> list = (List<BoardVo>)request.getAttribute("datalist"); //형변환.
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
		ul {
			list-style: none;
			width : 30%;
			display: inline-block;
		}
		
		li {
			float: left;
			margin-left : 5px;
		}
	</style>
</head>
<body>
	<h2>L.jsp 입니다!</h2>
	<form action="list.do" method="GET"> <!-- 검색정보를 공유해야하기때문에 GET 방식으로 넘긴다. -->
		<select name="searchType">
			<option value="title" <c:if test="${param.searchType == 'title'}">selected</c:if>>제목</option>
			<option value="content" <c:if test="${param.searchType == 'content'}">selected</c:if>>내용</option>
		</select>
		<input type="text" name="keyword" value="${param.keyword}">
		<button>검색입니다</button>
	</form>
<%-- 	 <table border="1">
	<%
		for(BoardVo vo : list) {
			%>
			<tr>
			 <td><%=vo.getTitle() %></td>
			<td><%=vo.getWriter() %></td>
			<td><%=vo.getContent() %></td>
			</tr>
	<%
		}
	%> 
	</table>
	--%>
	<table border="1">
	<c:forEach items="${datalist}" var="vo">
	 	<tr>
	 		<td>${vo.bidx}</td>
	 		<td><a href="view.do?bidx=${vo.bidx}">${vo.title}</a></td>
	 		<td>${vo.wdate}</td>
	 	</tr>
	</c:forEach>
	</table>
	<c:if test="${login != null }">
	<button onclick="location.href='write.do'">등록</button>
	</c:if>
	<div>
 <ul>
  <c:if test="${pageMaker.prev}">
   <li><a href="list.do?page=${pageMaker.startPage - 1}">이전</a></li>
  </c:if> 
  
  <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
   <li><a href="list.do?page=${idx}">${idx}</a></li>
  </c:forEach>
    
  <c:if test="${pageMaker.next && pageMaker.endPage > 0}">
   <li><a href="list.do?page=${pageMaker.endPage + 1}">다음</a></li>
  </c:if> 
 </ul>
</div>
</body>
</html>