<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>쇼츠갤러리 글쓰기</title>

    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css"/>
    <link rel="stylesheet" href="css/short_write.css" />
    <link rel="shortcut icon" href="../photo/img/favicon.png">


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
            <div class="item"><img src="img/logo.png" alt="" /></div>
            <a href="#"><div class="item">커뮤니티</div></a>
            <div class="item">포토갤러리</div>
          </div>
          <div class="right_header">
            <div class="item">
              <button class="searchBtn">
                <i class="xi-search xi-1x"></i>
              </button>
              <input type="text" placeholder="해시태그로 검색해보세요!" />
            </div>
            <a href="#" class="login_a"><div class="item">로그인</div></a>
            <div class="bar">&#124;</div>
            <a href="#" class="join_a"><div class="item">회원가입</div></a>
            <a href="#"><button class="header_write_btn">글쓰기</button></a>
          </div>
        </div>
        <section class="second_section">
          <div class="second_header">
            <a href="#"><div class="trip_info">포토갤러리</div></a>
            <a href="#"><div class="board">쇼츠갤러리</div></a>
          </div>
        </section>
      </section>
    </header>
      <main>
      <section>
        <div class="pic">
          <img src="img/Menu_Shop_Backpacks_2000x.progressive.jpg" alt="" />
          <a>여행사진들을 공유해봐요!</a>
        </div>
      </section>
  
      <!-- Swiper -->
      <section class="aa">
        <div class="pi">
          <button class="btn1"><i class="xi-image-o xi-4x"></i></button>
          <p>자신의 베스트샷을 넣어주세요!</p>
        </div>
        </section>
  
  <section>
        <div>
          <input type="text" name="title" class="hashtext" placeholder="태그 입력 (띄어쓰기로 구분) (100자 이내)" maxlength="100" value="">
        </div>
        <div class="btn">
          <button class="btn2" style="width: calc(50% - 8px);">취소</button><button class="btn3" style="width: calc(50% - 8px);">등록</button>
        </div>
        </section>
    </main>
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