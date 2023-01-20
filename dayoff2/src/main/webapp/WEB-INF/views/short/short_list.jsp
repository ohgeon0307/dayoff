<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>쇼츠갤러리</title>
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css"
    />
    <link href="${path}/resources/css/short_list.css" rel="stylesheet" />
    <link rel="shortcut icon" href="${path}/resources/img/favicon.png" />
    <link
      href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
      rel="stylesheet"
    />
    <link
    rel="stylesheet"
    href="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.css"
  />

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
            <div class="item"><img src="${path}/resources/img/logo.png" alt="" /></div>
            <a href="<%= request.getContextPath()%>/" class="a_tag_color"><div class="item2">커뮤니티</div></a>
            <a href="<%= request.getContextPath()%>/photo/list.do"><div class="item3">포토갤러리</div></a>
          </div>
          <div class="right_header">
            <div class="item">
              <button class="searchBtn">
                <i class="xi-search xi-1x"></i>
              </button>
              <input type="text" placeholder="해시태그로 검색해보세요!" />
            </div>
            <a href="<%= request.getContextPath()%>/login.do" class="login_a"><div class="item">로그인</div></a>
            <div class="bar">&#124;</div>
            <a href="<%= request.getContextPath()%>/join.do" class="join_a"><div class="item">회원가입</div></a>
            <a href="<%= request.getContextPath()%>/short/write.do"><button class="header_write_btn">글쓰기</button></a>
          </div>
        </div>
        <section class="second_section">
          <div class="second_header">
            <a href="<%= request.getContextPath()%>/photo/list.do"><div class="trip_info">포토갤러리</div></a>
            <a href="<%= request.getContextPath()%>/short/list.do"><div class="board">쇼츠갤러리</div></a>
          </div>
        </section>
      </section>
    </header>
    <main>
      <section>
        <div class="pic">
          <img src="${path}/resources/img/Menu_Shop_Backpacks_2000x.progressive.jpg" alt="" />
          <a>여행영상을 공유해봐요!</a>
        </div>
      </section>  
      <div class="wrapper">
        <!-- Swiper -->
        <div class="swiper mySwiper">
          <div class="asdf">
            <p>숏츠갤러리</p>
          </div>
          <div class="swiper-wrapper">
            <div class="swiper-slide">
              <div class="content">
                <div class="title">
                  <p>전주 한옥마을 풍경</p>
                </div>
                <div class="zxcv">
                  <div class="writer">
                    <i class="xi-profile-o"></i><a href="#">sonny</a>
                  </div>
                  <div>
                    <i class="xi-eye-o">1500</i>
                    <a href="#"><i class="xi-heart"></i></a>34
                  </div>
                </div>
              </div>
              <video src="${path}/resources/video/KakaoTalk_20230118_114744891.mp4" controls></video>
            </div>
            <div class="swiper-slide"></div>
            <div class="swiper-slide"></div>
            <div class="swiper-slide"></div>
            <div class="swiper-slide"></div>
            <div class="swiper-slide"></div>
            <div class="swiper-slide"></div>
            <div class="swiper-slide"></div>
            <div class="swiper-slide"></div>
            <div class="swiper-slide"></div>
            <div class="swiper-slide"></div>
            <div class="swiper-slide"></div>
            <div class="swiper-slide"></div>
            <div class="swiper-slide"></div>
            <div class="swiper-slide"></div>
          </div>
          <div class="swiper-pagination"></div>
          <div class="swiper-button-next"></div>
          <div class="swiper-button-prev"></div>
        </div>
        <!--
          <div class="btn-wrapper">
            <button class="auto-start">자동넘기기</button>
            <button class="auto-stop">멈추기</button>
          </div>
        -->
        
      </div>
      <section>
 
      </section>
    </main>
    <footer class="footer">
      <h3>데이오프</h3>
      <div class="footer_calling">
        <div class="phone_number">고객센터 010-3524-4305</div>
        <button>1:1채팅상담</button>
        <div class="consulting">
          실시간 채팅상담 매일 09:00 ~ 24:00 친절 유선 상담 평일 10:00 ~ 19:00
          (12:00-13:00) 제외
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
        <p>
          데이오프는 수강생 프로젝트이며 기업이 아닙니다. 404에러, 500에러의
          책임은 개발자에게 있습니다.
        </p>
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

      <!-- Swiper JS -->
<script src="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script>

<!-- Initialize Swiper -->
<script>
var swiper = new Swiper(".mySwiper", {
  slidesPerView: 1,
  spaceBetween: 30,
  keyboard: {
    enabled: true,
  },
  pagination: {
    el: ".swiper-pagination",
    clickable: true,
  },
  navigation: {
    nextEl: ".swiper-button-next",
    prevEl: ".swiper-button-prev",
  },
});
</script>
    </footer>
</body>
</html>