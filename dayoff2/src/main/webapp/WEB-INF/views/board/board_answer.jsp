<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 답변하기</title>
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css"
    />
    <link href="css/board_answer.css" rel="stylesheet" />
    <link
      href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
      rel="stylesheet"
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
            <a href="home.html"
              ><div class="item"><img src="img/logo.png" alt="" /></div
            ></a>
            <div class="item">커뮤니티</div>
            <a href="#" class="a_tag_color"
              ><div class="item">포토갤러리</div></a
            >
          </div>
          <div class="right_header">
            <div class="item">
              <button class="searchBtn">
                <i class="xi-search xi-1x"></i>
              </button>
              <input
                type="text"
                placeholder="여행지를 찾아보세요!"
                class="header_input"
              />
            </div>
            <a href="#" class="login_a"><div class="item">로그인</div></a>
            <div class="bar">&#124;</div>
            <a href="#" class="join_a"><div class="item">회원가입</div></a>
            <a href="#"><button class="header_write_btn">글쓰기</button></a>
          </div>
        </div>
        <section class="second_section">
          <div class="second_header">
            <a href="home.html"><div class="home">홈</div></a>
            <a href="#"><div class="trip_info">동행</div></a>
            <a href="#"><div class="board">게시판</div></a>
          </div>
        </section>
      </section>
    </header>
    <main
      class="LayoutItem"
      id="contents"
      style="background-color: rgb(248, 248, 248); padding-bottom: 320px"
    >
      <section class="FullSection">
        <div class="FullSectionWrapper">
          <p class="TopSection">나와 맞는 여행동행과 이야기를 나누어 보아요!</p>
          <p class="TopSection">여행친구찾기</p>
        </div>
      </section>
      <div class="LayoutContentWrap">
        <section
          direction="vertical"
          class="WebSection"
          style="margin-top: 65px"
        >
          <div class="que">
            <div class="titleq">
              <i class="xi-quicktime"></i>&nbsp;
              <p>국내 자유여행</p>
            </div>
            <div class="content">
              <p>
                2월 1일 출발해서 2월 3일 까지 놀수 있는 지역 추천부탁드립니다.
              </p>
            </div>
            <div class="profile">
              <i class="xi-profile-o"></i><a href="#">sonny</a>
            </div>
          </div>
        </section>
      </div>
      <section class="file_upload_section">
        <hr class="slide_hr" />
        <div>
          <textarea
            placeholder="내용을 입력해주세요! (1000자 이내🤩)"
          ></textarea>
        </div>
        <div class="button_zone">
          <button class="cancel">취소</button>
          <button class="submit">작성하기</button>
        </div>
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
    </footer>
</body>
</html>