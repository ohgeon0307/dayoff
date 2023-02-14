<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page import="java.util.*" %>
<%@ page import="edu.project.vo.TogetherVo" %>
<%

	List<TogetherVo> list2 = (List<TogetherVo>)request.getAttribute("togetherlist");

%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>동행home</title>
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css"
    />
    <link href="${path}/resources/css/together_home.css" rel="stylesheet" />
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
           <a href="${path }/community.do"><div class="item"><img src="${path}/resources/img/logo.png" alt="" /></div></a>
           <a href="<%= request.getContextPath() %>/community.do"><div class="item2">커뮤니티</div></a>
            <a href="<%= request.getContextPath()%>/photo/list.do" class="a_tag_color"><div class="item3">포토갤러리</div></a>
          </div>
          <div class="right_header">
            <div class="item">
              <button class="searchBtn">
                <i class="xi-search xi-1x"></i>
              </button>
              <input type="text" placeholder="여행지를 찾아보세요!" />
            </div>
             <c:if test="${login == null}">
            <a href="login.do" class="login_a"><div class="item">로그인</div></a>
            <div class="bar">&#124;</div>
            <a href="${path }/user/join.do" class="join_a"><div class="item">회원가입</div></a>
            </c:if>
            <c:if test="${login != null}">
            <a class="login_a" href="<%= request.getContextPath() %>/user/logout.do"><div class="item">로그아웃</div></a>
            <div class="bar">&#124;</div>
            <a href="${path }/user/join.do" class="join_a"><div class="item">마이페이지</div></a>
            </c:if>
            <a href="<%= request.getContextPath() %>/together_write.do"
              ><button class="header_write_btn">글쓰기</button></a
            >
          </div>
        </div>
        <section class="second_section">
          <div class="second_header">
            <a href="<%= request.getContextPath() %>/community.do"><div class="home">홈</div></a>
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
        <section
          direction="vertical"
          class="WebSection"
          style="margin-top: 65px"
        >
          <div class="WebSectionArea">
            <button
              width="auto"
              font-size="16px"
              font-weight="700"
              class="ButtonWrapper"
              style="border-radius: 30px"
            >
              모집중인 글만 보기 
            </button>
            <div
              class="SelectItem"
              style="
                width: 82px;
                height: 37px;
                padding: 0 7px;
                margin: 0 10px 0 0;
              "
            >
              <select class="SelectWrapper">
                <option value="time" class="SelectOption">최신순</option>
                <option value="view" class="SelectOption">조회순</option>
              </select>
            </div>
            <p class="SearchFilter">정렬</p>
          </div>
          <ul class="Accompany" type="portrait">
          	<% 
          		for(TogetherVo vo : list2){
          	%>
	            <div type="portrait" class="AccompanyItem">
	              <div>
	                <a href="together_view.do?tidx=<%=vo.getTidx() %>">
	               <%
          		}
            %>
				<c:forEach var="vo" items="${togetherlist}" varStatus="status">
	                <img
	                  src="'<spring:url value="/image/${image[status.index].uploadPath}/${image[status.index].uuid}_${image[status.index].fileName}"/>'"
	                  alt=""
	                /></a>
	                <div type="portrait" class="DateWrapper">
	                  <div>
	                    <div class="AreaWrapper">
	                      <div
	                        style="
	                          width: 21px;
	                          height: 21px;
	                          background-color: rgb(248, 248, 248);
	                          border-radius: 11px;
	                          display: inline-flex;
	                          align-items: center;
	                          justify-content: center;
	                        "
	                      >
	                        <svg
	                          width="9"
	                          height="13"
	                          viewBox="0 0 9 13"
	                          fill="null"
	                        >
	                          <path
	                            d="M4.03748 12.4779C0.633075 7.35238 0.000785276 6.82628 0.000785276 4.942C-0.0217027 3.72595 0.439589 2.55072 1.28327 1.67465C2.12694 0.798575 3.28396 0.293348 4.5 0.27002C5.71604 0.293348 6.87306 0.798575 7.71673 1.67465C8.56041 2.55072 9.0217 3.72595 8.99922 4.942C8.99922 6.82568 8.36693 7.35178 4.96252 12.4779C4.91259 12.5551 4.8441 12.6187 4.76331 12.6627C4.68251 12.7066 4.59199 12.7297 4.5 12.7297C4.40801 12.7297 4.31749 12.7066 4.23669 12.6627C4.1559 12.6187 4.08741 12.5551 4.03748 12.4779ZM4.5 6.88926C5.00667 6.87949 5.48873 6.66896 5.84025 6.30394C6.19177 5.93893 6.38399 5.44928 6.37467 4.9426C6.38415 4.43583 6.192 3.94603 5.84046 3.58088C5.48892 3.21573 5.00677 3.00512 4.5 2.99534C3.99333 3.00512 3.51127 3.21564 3.15975 3.58066C2.80823 3.94568 2.61601 4.43533 2.62533 4.942C2.61585 5.44878 2.808 5.93858 3.15954 6.30373C3.51108 6.66888 3.99323 6.87949 4.5 6.88926Z"
	                          ></path>
	                        </svg>
	                      </div>
	                      <p class="Prevent" style="color: rgb(255, 255, 255)">
	                        서울
	                      </p>
	                    </div>
	                  </div>
	                </div>
	              </div>
	              </div>
	              <div class="ContentWrapper" type="portrait">
	                <div class="TitleWrapper">
	                  <b class="PreVentDragB">모집중</b>
	                  ${vo.tTitle}
	                </div>
	                <p type="portrait" class="DescWrapper">
	                  ${vo.tContent }
	                </p>
	                <div class="ViewWrapper">
	                  <div font-size="16px;" class="ProfileWrapper">
	                    <img
	                      src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMjEyMzFfMTg3%2FMDAxNjcyNDUxMDI1NTE1.VLx626NrysZ3NOZkloI0gsuuuJTxd923KppKsuE4mfYg.CsnHVbqztSzOHmooQ4uVOq3wcEOwZ84NKcnHX55fnJQg.JPEG.qhrjtmhey%2FScreenshot_2022-12-31_at_10.43.00.JPG&type=sc960_832"
	                      alt="프로필"
	                    />
	                    <div>
	                      <p class="ProfileDragP">${ vo.Writer}</p>
	                    </div>
	                  </div>
	                  <div class="ViewAndMsgWrapper">
	                    <div>
	                      <svg
	                        width="12"
	                        height="12"
	                        viewBox="0 0 12 12"
	                        fill="none"
	                        xmlns="http://www.w3.org/2000/svg"
	                        style="width: 18px; height: 18px"
	                      >
	                        <path
	                          d="M11.5 6C11.5 6.26149 11.3803 6.65653 11.0988 7.1298C10.8235 7.59253 10.4179 8.0886 9.9091 8.54417C8.88699 9.45938 7.50073 10.1667 6 10.1667C4.49927 10.1667 3.11301 9.45938 2.0909 8.54417C1.58212 8.0886 1.17649 7.59253 0.901231 7.1298C0.619715 6.65653 0.5 6.26149 0.5 6C0.5 5.7385 0.619715 5.34346 0.901231 4.87019C1.17649 4.40746 1.58212 3.91139 2.0909 3.45582C3.11301 2.54061 4.49927 1.83333 6 1.83333C7.50073 1.83333 8.88699 2.54061 9.9091 3.45582C10.4179 3.91139 10.8235 4.40746 11.0988 4.87019C11.3803 5.34346 11.5 5.7385 11.5 6Z"
	                        ></path>
	                        <circle
	                          cx="5.99998"
	                          cy="6"
	                          r="2.16667"
	                          stroke="#9A9A9A"
	                        ></circle>
	                      </svg>
	                      <p class="PreventDragP2">${ tHit}</p>
	                    </div>
	                    <div>
	                      <svg
	                        width="12"
	                        height="12"
	                        viewBox="0 0 12 12"
	                        fill="none"
	                        xmlns="http://www.w3.org/2000/svg"
	                        style="width: 18px; height: 18px"
	                      >
	                        <path
	                          fill-rull="evenodd"
	                          clip-rule="evenodd"
	                          d="M0.408582 3.75112L0.390183 3.71865C-0.11347 2.82972 0.494606 1.72187 1.51458 1.6689L10.1897 1.21838C11.3206 1.15965 12.0331 2.41725 11.4015 3.35716L6.55619 10.5671L5.76573 10.0359L6.55619 10.5671C5.9865 11.4148 4.72365 11.367 4.21999 10.4781L4.19369 10.4317L4.17247 10.3827L3.11011 7.93076L1.55453 8.99841L2.2773 6.54149L2.0315 6.17447L0.429351 3.78214L0.408582 3.75112ZM5.11195 4.71194L8.60969 3.30313L9.1411 3.08909L8.85635 3.29032L5.59379 5.59594L3.7522 6.89737L5.09005 9.98514C5.22716 10.2271 5.57104 10.2402 5.7262 10.0094L10.2917 3.21578L10.2933 3.21336L10.5715 2.79938C10.7435 2.54345 10.5495 2.20105 10.2416 2.21704L9.74346 2.24291L9.74054 2.24306L8.8375 2.28995L8.8196 2.29088L8.5856 2.30304L8.51553 2.30668L8.39102 2.31314L1.56644 2.66756C1.28864 2.68198 1.12312 2.98369 1.26023 3.22569L2.86238 5.61802L5.11195 4.71194Z"
	                        ></path>
	                      </svg>
	                      <p class="PreventDragP2"></p>
	                    </div>
	                  </div>
	                </div>
	              </div>
				</c:forEach>

          </ul>
        </section>
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