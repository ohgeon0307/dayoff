<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>Document</title>
     <link rel="stylesheet" href="${path}/resources/css/index.css" />
    <script src="index.js"></script>
  </head>
  <body>
    <main class="main">
      <div class="logo_text">Day off</div>
      <section class="text_section">
        <!-- <div class="text_area">가볍게</div>
        <div class="text_area">빠르게</div>
        <div class="text_area">떠나고싶을때</div> -->
        <div class="container">
          <h1>가볍게,빠르게,여행가고 싶을땐,</h1>
          <h1>DayOff.</h1>
        </div>
      </section>
      <section class="second_section">
        <p class="move">지금, 떠나보세요.</p>
        <a href="<%= request.getContextPath()%>/community.do"><button class="community">커뮤니티</button></a>
        <a href="<%= request.getContextPath()%>/photo/list.do"><button class="trip_info">포토갤러리</button></a>
      </section>
    </main>
</body>
</html>