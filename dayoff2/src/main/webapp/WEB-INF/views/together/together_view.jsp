<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
     <title>동행view</title>
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css"
    />
    <link href="${path}/resources/css/together_view.css" rel="stylesheet" />
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
    
    
    <!-- 유저정보보기 스크립트  -->
    <script>
    
    window.onload = function() {
    	 
        function onClick() {
            document.querySelector('.modalWrap').style.display ='block';
            document.querySelector('.modalout').style.display ='none';
            
        }   
        function offClick() {
            document.querySelector('.modalWrap').style.display ='none';
            document.querySelector('.modalout').style.display ='block';
        }
     
        document.getElementById('modal_btn').addEventListener('click', onClick);
        document.querySelector('.modalClose').addEventListener('click', offClick);
     
    };
    
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
    <main class="CommunityView">
    
      <div class="AccompanyId">
        <div class="InnerSection_AreaLeft">
          <div class="AccompanyContainer">
            <div class="AccompanyContainer_TitleBox">
              <p>${togethervo.tTitle}</p>
            </div>
            
            <div class="AccompanyContainer_TempWrap">
           
            </div>
            <p class="AccompanyContainer_ContentBox">${togethervo.tContent}</p>
            <div class="badge_HashTag">
              <div>
                <div class="badge_HashTag1">
                  <div>
                    <div
                      class="badge_HashTag2"
                      font-size="13px"
                      font-weight="500"
                    >
                      <p class="HashTag">#</p>
                      <p class="HashTag">20대</p>
                    </div>
                    <div
                      class="badge_HashTag2"
                      font-size="13px"
                      font-weight="500"
                    >
                      <p class="HashTag">#</p>
                      <p class="HashTag">아무나다좋아</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="AccompanyContainer_BottomBox">
              <p class="AccompanyContainer_PreventDrag">
                ${togethervo.tDate} 조회수 ${togethervo.tHit} 메시지 1
              </p>
              <button class="AccompanyContainer_ReportButton">신고하기</button>
            </div>
            <c:if test="${login.name == togethervo.writer}">
	            <a href="together_modify.do?tidx=${togethervo.tidx}"><button class="modify">수정하기</button></a>
	            <button class="delete" onclick="document.delfrm.submit()">삭제하기</button>
            </c:if>
            <form name="delfrm" action="delete.do" method="post">
            	<input type="hidden" name="tidx" value="${togethervo.tidx }">
            </form>
            <div class="container" style="margin-top: 15px;">
					<label for="content">댓글</label>
					<form name="commentInsertForm">
						<div class="input-group">
							<input type="hidden" name="tidx" value="${togethervo.tidx}" />
							<input type="hidden" name="twriter" value="${login.name }" />
							<input type="hidden" name="uidx" value="${login.uidx }" />
							 <input
								type="text" class="form-control" id="trContent" name="trContent"
								placeholder="내용을 입력하세요."> <span class="input-group-btn">
								<button class="btn btn-default" type="button"
									name="commentInsertBtn">등록</button>
							</span>
						</div>
					</form>
				</div>
				<div class="container">
					<div class="commentList"></div>
				</div>

				<%@ include file="treply.jsp"%>
      
           
          </div>
        </div>
        <div class="InnerSection_AreaRight">
          <div class="Layout modalout" >
            <div class="Area_Top">
              <img
                src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMjEyMDNfMjI5%2FMDAxNjY5OTk5MzU2NDM2.Pn6PCF4ak7oEr_uWbdfQiab6OsWgARoJzMQuVjXDScsg.TQMAuKnkPjnKs66iETDz6rqu7ESZp7_W_Dpg8r1_rdgg.JPEG.lavendar02%2F%25B0%25F5%25B5%25B9%25C0%25CC%25C4%25B3%25B8%25AF%25C5%25CD%25B1%25E2%25BA%25BB%25C7%25FC%25C5%25C2_%25B4%25EB%25C1%25F6_1.jpg&type=sc960_832"
                alt="이미지"
                style="width: 50px; height: 50px; padding: 4px"
              />
              <div class="Profile_info">
                <div class="Area_Flex" style="display: flex">
                  <p class="Profile_nickname">${togethervo.writer}</p>
                </div>
              </div>
            </div>
            <div class="Area_Middle">
              <div class="Profile_click">
                <svg
                  width="18"
                  height="18"
                  viewBox="0 0 18 18"
                  fill="none"
                  xmlns="http://www.w3.org/2000/svg"
                >
                  <path
                    d="M9 18C13.9706 18 18 13.9706 18 9C18 4.02944 13.9706 0 9 0C4.02944 0 0 4.02944 0 9C0 13.9706 4.02944 18 9 18Z"
                    fill="#00CE7C"
                  ></path>
                  <path
                    d="M7.77467 12.9015C7.78623 12.6612 7.86817 12.4295 8.01029 12.2353C8.15241 12.0411 8.34846 11.893 8.57407 11.8093C8.79968 11.7256 9.04491 11.71 9.27931 11.7645C9.5137 11.8189 9.72691 11.9411 9.89247 12.1157C10.058 12.2904 10.1686 12.5098 10.2105 12.7468C10.2524 12.9838 10.2237 13.2278 10.1281 13.4486C10.0324 13.6695 9.87403 13.8573 9.67253 13.9888C9.47102 14.1204 9.23531 14.1898 8.99467 14.1885C8.82916 14.1871 8.66563 14.1523 8.51386 14.0863C8.36209 14.0202 8.22519 13.9243 8.11132 13.8042C7.99745 13.684 7.90896 13.5422 7.85111 13.3871C7.79327 13.232 7.76727 13.0669 7.77467 12.9015ZM8.06967 5.67455L8.00267 3.81055H9.98667L9.91967 5.67455L9.63767 10.6215H8.35167L8.06967 5.67455Z"
                    fill="white"
                  ></path>
                </svg>
                <p class="ProfileCompanion">프로필 사진을 클릭해보세요!</p>
              </div>
              <div class="ButtonWrapper">
                <button
                  id="modal_btn"
                  class="ButtonStyle"
                  width="268px"
                  height="55px"
                  font-style="button"
                >
                  <a>유저정보확인</a>
                </button>
              </div>
            </div>
          </div>
          <div id="modalWrap"  class="Layout modalWrap">
            <div class="Area_Top">
              <img
                src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMjEyMDNfMjI5%2FMDAxNjY5OTk5MzU2NDM2.Pn6PCF4ak7oEr_uWbdfQiab6OsWgARoJzMQuVjXDScsg.TQMAuKnkPjnKs66iETDz6rqu7ESZp7_W_Dpg8r1_rdgg.JPEG.lavendar02%2F%25B0%25F5%25B5%25B9%25C0%25CC%25C4%25B3%25B8%25AF%25C5%25CD%25B1%25E2%25BA%25BB%25C7%25FC%25C5%25C2_%25B4%25EB%25C1%25F6_1.jpg&type=sc960_832"
                alt="이미지"
                style="width: 50px; height: 50px; padding: 4px"
              />
              <div class="Profile_info">
                <div class="Area_Flex" style="display: flex">
                  <p class="Profile_nickname">${togethervo.writer}</p>
                </div>
                <div class="Profile_Taste" style="margin-top:15px;">
					<p class="ProfileCompanion">연령 : 20대 </p>
				</div>
				<div class="Profile_Taste">
					<p class="ProfileCompanion">성별 : 남성 </p>
				</div>
				<div class="Profile_Taste">
					<p class="ProfileCompanion">이메일 : cnddjss@naver.com</p>							
				</div>
				<div class="Profile_Taste">
					<p class="ProfileCompanion">소개 : 같이 맛있는거 먹고 사진 찍는거 좋아해요~</p>							
				</div>
              </div>
            </div>
            <div class="Area_Middle" style="padding-top:0;">
					<div class="ButtonWrapper">
						<button class="ButtonStyle modalClose" width="268px" height="55px"
							font-style="button">
							<a>나가기</a>
						</button>
					</div>
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