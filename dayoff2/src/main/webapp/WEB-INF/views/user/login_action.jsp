<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
   <title>로그인</title>
    <link href="${path }/resources/css/login_action.css" rel="stylesheet">
</head>
<body>
    <div class="frame">
    <form action="login.do" method="post">
        <fieldset>
            <h3 class="login">로그인</h3>
            <div class="row">
                <input type="text" name="id" class="inp" placeholder="아이디">
            </div>
            <div class="row">
                <input type="password" name="password" placeholder="비밀번호">
            </div>
            <label class="checkbox" style="margin-top: 12px;">
                <input type="checkbox" name="autoLoginYn">
                <span>
                    로그인 상태 유지
                </span>
            </label>
            <button class="btn">로그인</button>
            <div class="aaa">
                <a href="" class="btn_text">이메일 찾기</a>
                <button class="searchPwd">비밀번호 찾기</button>
                <a href="" class="aa">회원가입</a>
            </div>
        </fieldset>
        </form>
    </div>
</body>
</html>