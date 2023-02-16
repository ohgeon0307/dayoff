<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>동행글쓰기</title>
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css"
    />
    <link href="${path}/resources/css/together_board_write.css" rel="stylesheet" />
    <link rel="shortcut icon" href="${path}/resources/img/favicon.png">
    <link rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.css"
    />
    <link rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css"
    />
    <script src="${path }/resources/js/script.js"></script>
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
            <a href="home.html"><div class="item"><img src="${path}/resources/img/logo.png" alt="" /></div></a>
         <a href="<%= request.getContextPath() %>/"><div class="item2">커뮤니티</div></a>
            <a href="photo.do" class="a_tag_color"><div class="item3">포토갤러리</div></a>
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
           <c:if test="${login == null}">
            <a href="${path }/user/login.do" class="login_a"><div class="item">로그인</div></a>
            <div class="bar">&#124;</div>
            <a href="${path }/user/join.do" class="join_a"><div class="item">회원가입</div></a>
            </c:if>
            <c:if test="${login != null}">
            <a class="login_a" href="<%= request.getContextPath() %>/user/logout.do"><div class="item">로그아웃</div></a>
            <div class="bar">&#124;</div>
            <a href="${path }/user/join.do" class="join_a"><div class="item">마이페이지</div></a>
            <a href="<%= request.getContextPath()%>/together_write.do"
              ><button class="header_write_btn">글쓰기</button></a>
            </c:if>
          </div>
        </div>
        <section class="second_section">
          <div class="second_header">
            <a href="<%= request.getContextPath() %>/"><div class="home">홈</div></a>
            <a href="together.do"><div class="trip_info">동행</div></a>
            <a href="board/list.do"><div class="board">게시판</div></a>
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
          <section direction="vertical" class="WebSection">
            <div>
              <div class="WebSetionArea">
                <div class="FilterItem">
                  <div class="filterCountry">
                    <div>
                      <div>
                        <button
                          width="auto"
                          font-size="15px"
                          font-weight="400"
                          class="ButtonToggle"
                          style="
                            width: fit-content;
                            justify-content: flex-start;
                          "
                        >
                          서울
                        </button>
                        <button
                          width="auto"
                          font-size="15px"
                          font-weight="400"
                          class="ButtonToggle"
                          style="
                            width: fit-content;
                            justify-content: flex-start;
                          "
                        >
                          강원도
                        </button>
                        <button
                          width="auto"
                          font-size="15px"
                          font-weight="400"
                          class="ButtonToggle"
                          style="
                            width: fit-content;
                            justify-content: flex-start;
                          "
                        >
                          제주도
                        </button>
                        <button
                          width="auto"
                          font-size="15px"
                          font-weight="400"
                          class="ButtonToggle"
                          style="
                            width: fit-content;
                            justify-content: flex-start;
                          "
                        >
                          부산
                        </button>
                        <button
                          width="auto"
                          font-size="15px"
                          font-weight="400"
                          class="ButtonToggle"
                          style="
                            width: fit-content;
                            justify-content: flex-start;
                          "
                        >
                          경기도
                        </button>
                        <button
                          width="auto"
                          font-size="15px"
                          font-weight="400"
                          class="ButtonToggle"
                          style="
                            width: fit-content;
                            justify-content: flex-start;
                          "
                        >
                          인천
                        </button>
                        <button
                          width="auto"
                          font-size="15px"
                          font-weight="400"
                          class="ButtonToggle"
                          style="
                            width: fit-content;
                            justify-content: flex-start;
                          "
                        >
                          충청도
                        </button>
                        <button
                          width="auto"
                          font-size="15px"
                          font-weight="400"
                          class="ButtonToggle"
                          style="
                            width: fit-content;
                            justify-content: flex-start;
                          "
                        >
                          경상도
                        </button>
                        <button
                          width="auto"
                          font-size="15px"
                          font-weight="400"
                          class="ButtonToggle"
                          style="
                            width: fit-content;
                            justify-content: flex-start;
                          "
                        >
                          전라도
                        </button>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </section>
        </section>
      </div>
      <section class="file_upload_section">
      	<form action="write.do" method="post">
	        <div class="container">
	          <img src="${path}/resources/img/picture.png" alt="" />
	          배경 사진을 선택해주세요:
	        </div>
	        <div class="title">
	          <input type="hidden" name="writer" value="${login.name }"/>
	          <input type="hidden" name="uidx" value="${login.uidx }"/>
	          <input
	            type="text"
	            placeholder="ex)높은 산 좋아하시는 분 1~2명 구해봐요!"
	            name="tTitle"
	          />
	        </div>
	        <hr class="slide_hr" />
	        <div>
	          <textarea
	            placeholder="동행을 구할 내용을 작성해주세요! (1000자 이내)"
	            name="tContent"
	          ></textarea>
	        </div>
	        <div class="button_zone">
	          <button class="cancel" type="reset">취소</button>
	          <button class="submit">작성하기</button>
	        </div>
	     </form>
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