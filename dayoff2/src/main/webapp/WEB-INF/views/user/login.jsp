<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <title>로그인하기</title>
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css"
    />
    <link href="${path }/resources/css/login.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
    <script>
        (function () {
          var w = window;
          if (w.ChannelIO) {
            return (window.console.error || window.console.log || function () {})(
              "ChannelIO script included twice."
            );
          }
          var ch = function () {
            ch.c(arguments);
          };
          ch.q = [];
          ch.c = function (args) {
            ch.q.push(args);
          };
          w.ChannelIO = ch;
          function l() {
            if (w.ChannelIOInitialized) {
              return;
            }
            w.ChannelIOInitialized = true;
            var s = document.createElement("script");
            s.type = "text/javascript";
            s.async = true;
            s.src = "https://cdn.channel.io/plugin/ch-plugin-web.js";
            s.charset = "UTF-8";
            var x = document.getElementsByTagName("script")[0];
            x.parentNode.insertBefore(s, x);
          }
          if (document.readyState === "complete") {
            l();
          } else if (window.attachEvent) {
            window.attachEvent("onload", l);
          } else {
            window.addEventListener("DOMContentLoaded", l, false);
            window.addEventListener("load", l, false);
          }
        })();
        ChannelIO("boot", {
          pluginKey: "440ad304-9963-448a-9d8e-8efd8dfa9576",
        });
      </script>
</head>
<body>
  <header>
    <section class="first_section">
      <div class="header">
        <div class="left_header">
          <div class="item"><a href="${ path}/"><img src="${path }/resources/img/logo.png" alt="" /></a></div>
          <div class="item">커뮤니티</div>
          <a href="#"><div class="item">포토갤러리</div></a>
        </div>
        <div class="right_header">
          <div class="item">
            <button class="searchBtn">
              <i class="xi-search xi-1x"></i>
            </button>
            <input type="text" placeholder="여행지를 찾아보세요!" />
          </div>
          <a href="${path }/user/login.do" class="login_a"><div class="item">로그인</div></a>
          <div class="bar">&#124;</div>
          <a href="${path }/user/join_form.do" class="join_a"><div class="item">회원가입</div></a>
          <a href="#"><button class="header_write_btn">글쓰기</button></a>
        </div>
      </div>
      <section class="second_section">
        <div class="second_header">
          <div class="home">홈</div>
          <a href="#"><div class="trip_info">동행</div></a>
          <a href="#"><div class="board">게시판</div></a>
        </div>
      </section>
    </section>
</header>
    <div class="joinFrame">
        <div class="join">
            <p class="text_desc">동행부터 계획까지</p>
            <p class="text_desc">마음에 쏙 드는 여행 참 어렵죠?</p>
            <img class="logo" src="${path }/resources/img/login_logo.png" alt="" style="width:230px;">
            <p>내 취향에 딱 맞는 여행, DAY OFF</p>
            <button class="btn_join join_kakao">
                <p>카카오로 간편 로그인</p>
            </button>
            <button class="btn_join join_email">
                <a href="${path }/user/join.do"><p>이메일 또는 전화번호로 로그인</p></a>
            </button>
            <div class="ask">
                <p class="exist">아직 계정이 없으신가요?</p>
                <button class="btn_login">
                <a href="${path }/user/join_form.do"><p>회원가입</p></a>
                </button>
            </div>
        </div>
    </div>
    <footer class="footer">
        <h3>데이오프</h3>
        <div class="footer_calling">
          <div class="phone_number">고객센터 010-3524-4305</div>
          <button>1:1채팅상담</button>
          <div class="consulting">실시간 채팅상담 매일 09:00 ~ 24:00
            친절 유선 상담 평일 10:00 ~ 19:00 (12:00-13:00) 제외
          </div>
        </div>
        <div class="team_info">
        <span>프로젝트 데이오프</span>
        <span class="margin_left">팀원 오건</span>
        <span class="margin_left">팀원 김은준</span>
        <span class="margin_left">팀원 김충언</span>
        <span class="margin_left">팀원 임낙훈</span>
        </div>
        <div class="footer_addr">
          <span>즉시취업 신고번호 2022-09-19-전주이젠-0919</span>
          <span class="margin_left">전라북도 전주시 덕진구 금암1동 667-52</span>
          <span class="margin_left">ogeon@gmail.com</span>
        </div>
        <div class="footer_terms">
          <span class="gray">개인정보 처리방침</span>
          <span class="margin_left">이용약관</span>
          <span class="margin_left">위치기반 서비스 이용 약관</span>
          <span class="margin_left">취소 및 환불정책</span>
          <span class="margin_left">파트너 입점</span>
        </div>
        <div class="footer_last_text">
          <p>자사 프로젝트는 전주 이젠컴퓨터학원의 프로젝트입니다.</p>
          <p>데이오프는 수강생 프로젝트이며 기업이 아닙니다. 404에러, 500에러의 책임은 개발자에게 있습니다.</p>
          <p>Copyright ⓒ DayOff Inc. All Rights Reserved.</p>
        </div>
        <div id="sns">
          <ul>
            <li>
              <a href="#"><i class="xi-instagram xi-2x"></i></a>
            </li>
            <li>
              <a href="#"><i class="xi-facebook xi-2x"></i></a>
            </li>
            <li>
              <a href="#"><i class="xi-kakaotalk xi-2x"></i></a>
            </li>
          </ul>
        </div>
      </footer>
</body>
</html>