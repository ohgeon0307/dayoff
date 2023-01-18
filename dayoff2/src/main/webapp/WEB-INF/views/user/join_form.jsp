<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <title>회원가입</title>
  <link href="${path}/resources/css/join_form.css" rel="stylesheet">
</head>
<body>
  <main>
    <form>
      <h2>회원가입하기</h2>
      <div class="layout">
        <div class="mandat">입력사항<span style="color: rgb(0, 206, 124);">(필수)</span></div>
      <div class="box">
        <input type="email" placeholder="이메일 주소"><br>
        <input type="password" placeholder="비밀번호(8자~12자, 영문+숫자+특수문자 사용)"><br>
        <input type="text" placeholder="이름"><br>
        <input type="tel" placeholder="휴대폰 번호(-없이 입력해주세요)"><br>
        <select>
          <option>성별</option>
          <option>남자</option>
          <option>여자</option>
        </select><br>
        <input type="date">
      </div>
      <div class="agreement"><label>
          <input type="checkbox">이용약관 전체 동의</label>
          <hr>
          <div class="details">
            <label><input type="checkbox">(필수) 서비스 이용약관 동의</label>
            <label><input type="checkbox">(필수) 개인정보처리방침 동의</label>
            <label><input type="checkbox">(필수) 위치기반서비스 동의</label>
            <label><input type="checkbox">(선택) 마케팅 정보 활용 동의</label>
            <label><input type="checkbox">(필수) 만 14세 이상입니다.</label>
          </div>
      </div>
        <button>회원가입</button>
      </div>
    </form>
  </main>
  <hr>

</body>
</html>