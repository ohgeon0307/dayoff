<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="edu.project.vo.BoardVo" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
     <title>마이페이지_계정관리</title>
    <link rel="stylesheet" href="${path }/resources/css/mypage_account.css" />
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css"
    />
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
            <a href="${path }/community.do"><div class="item"><img src="${path }/resources/img/logo.png" alt="" /></div></a>
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
              <input type="text" placeholder="여행지를 찾아보세요!" />
            </div>
            <c:if test="${login == null}">
            <a href="${path }/user/login.do" class="login_a"><div class="item">로그인</div></a>
            <div class="bar">&#124;</div>
            <a href="${path }/user/join.do" class="join_a"><div class="item">회원가입</div></a>
            </c:if>
            <c:if test="${login != null}">
            <a class="login_a" href="<%= request.getContextPath() %>/user/logout.do"><div class="item">로그아웃</div></a>
            <div class="bar">&#124;</div>
            <a href="${path }/myPage" class="join_a"><div class="item">마이페이지</div></a>
            <a href="<%= request.getContextPath()%>/board/write.do"
              ><button class="header_write_btn">글쓰기</button></a> 
            </c:if>
          </div>
        </div>
        <section class="second_section">
          <div class="second_header">
            <div class="home">홈</div>
            <a href="${path }/together.do"><div class="trip_info">동행</div></a>
            <a href="<%= request.getContextPath()%>/board/list.do"><div class="board">게시판</div></a>
          </div>
        </section>
      </section>
    </header>
    <main class="MainLayout" style="background-color: rgb(248, 248, 248)">
      <div class="Layout">
        <div class="MenuSection">
          <div class="ItemDiv">
            <div class="ImgDiv">
              <img src="${path }/resources/img/test.PNG" alt="" />
            </div>
            <p style="margin-left: 5px;">아이디 : ${login.id }</p>
          </div>
          <ul class="MenuBox">
            <li class="Menustyle a">
              <a href="" class="aa">
                <span class="Menustyle_name"> 계정관리 </span>
              </a>
            </li>
            <li class="Menustyle b">
              <a href="${path }/myBoard" class="bb">
                <span class="Menustyle_name"> 내 게시글 </span>
              </a>
            </li>
          </ul>
        </div>
        <div class="ContentSection">
          <h1 class="tit">
            <span>계정관리</span>
          </h1>
          <div class="accountInner">
            <div class="Profile">
                <div class="ProfileImg">
                <label class="profile_label" for="profile_label">
                <i class="xi-camera xi-2x"></i>
                 <input type="file" id="profile_upload" name="profile_upload" />
                </label>
                 
              </div>
              <!-- end: .profileImg -->
            </div>
            <!-- end: .Profile -->
            <div class="InputBox NickName" style="width: 480px">
              <input
                type="text"
                class="EditInput"
                placeholder="닉네임을 입력해주세요.(10자 이내)"
                maxlength="10"
                value= ${login.name }
                style="border-radius: 27px"
              />
            </div>
            <div class="Introduction">
              <span class="DragSapn">소개글</span>
              <div class="InputBox" style="width: 100%">
                <textarea
                  class="EditInput"
                  placeholder="소개글을 입력해주세요.(2000자 이내)"
                  maxlength="2000"
                  style="border-radius: 4px"
                ></textarea>
              </div>
              <span class="DragSapn">SNS 연동</span>
              <div class="InputBox" style="width: 100%">
                <input
                  type="text"
                  class="EditInput"
                  readonly
                  placeholder="@를 제외한 user ID만 입력"
                  maxlength="40"
                  value
                  style="border-radius: 4px"
                />
              </div>
              <span class="DragSapn">회원정보</span>
              <div
                class="InputBox"
                style="
                  display: flex;
                  justify-content: space-between;
                  align-items: center;
                  flex-direction: row;
                "
              >
                <input
                  type="number"
                  placeholder="년(예 1991)"
                  maxlength="4"
                  disabled
                  value="1992"
                  style="width: 177px"
                />
                <span class="DragSpan">년</span>
                <input type="number" disabled value="06" style="width: 115px" />
                <span class="DragSpan">월</span>
                <input type="number" disabled value="08" style="width: 115px" />
                <span class="DragSpan">일</span>
                <input type="text" disabled value="남성" style="width: 115px" />
              </div>
            </div>
            <div class="Setting">
              <span class="Prevent">설정</span>
              <ul class="Account">
                <li class="Account_a">
                  <button class="AccountBtn_a">비밀번호 변경</button>
                </li>
                <li class="AccountLi_b">
                  <button class="AccountBtn_b">휴대폰번호 변경</button>
                </li>
                <li class="AccountLi_c">
                  <button class="AccountBtn_c">회원탈퇴</button>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
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