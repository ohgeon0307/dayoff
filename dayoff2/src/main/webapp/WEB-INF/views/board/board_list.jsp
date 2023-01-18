<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
     <title>자유게시판</title>
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css"
    />
    <link rel="stylesheet" href="${path }/resources/css/board_list.css" />
  </head>
  <body>
    <header>
      <section class="first_section">
        <div class="header">
          <div class="left_header">
            <a href="<%=request.getContextPath() %>/"
              ><div class="item"><img src="${path}/resources/img/logo.png" alt="" /></div
            ></a>
            <a href="<%=request.getContextPath()%>/"><div class="item">커뮤니티</div>
            <a href="photo.do" class="a_tag_color"
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
            <a href="login.do" class="login_a"><div class="item">로그인</div></a>
            <div class="bar">&#124;</div>
            <a href="${path }/user/join.do" class="join_a"><div class="item">회원가입</div></a>
            <a href="<%= request.getContextPath()%>/board/write.do"
              ><button class="header_write_btn">글쓰기</button></a>
            
          </div>
        </div>
        <section class="second_section">
          <div class="second_header">
            <a href="/dayoff"><div class="home">홈</div></a>
            <a href="together.do"
              ><div class="trip_info">동행</div></a
            >
            <a href="<%= request.getContextPath()%>/board/list.do"><div class="board">게시판</div></a>
          </div>
        </section>
      </section>
    </header>
    <main>
      <div class="board_banner">
        <div class="board_banner_text">
          <p>자유로운 대화를 나눠보세요🤗</p>
          <p>자유 게시판</p>
        </div>
      </div>
      <section class="board_list">
        <div class="board_header">
          <button>댓글이 달린 게시글만 보기</button>
          <select>
            <option>등록순</option>
            <option>댓글순</option>
            <p>⇩</p>
          </select>
          <p>정렬</p>
        </div>
        <div class="board_contents">
          <div class="board_contents_one">
            <div class="flex_title">
              <p>서울</p>
              <a href="#"><p class="view_board">게시글 보기</p></a>
            </div>
            <p class="title">서울 자유여행</p>
            <p class="contents">전주에서 서울 어떻게 가는게 가장 좋나요?</p>

            <p class="hashtag">#자유여행</p>
            <div class="info_flex">
              <div class="info">닉네임 : gunsi</div>

              <div class="view">조회수 : 26</div>
              <div class="comments">댓글 : 0</div>
            </div>
          </div>
          <div class="board_contents_one">
            <div class="flex_title">
              <p>서울</p>
              <a href="#"><p class="view_board">게시글 보기</p></a>
            </div>
            <p class="title">서울 자유여행</p>
            <p class="contents">전주에서 서울 어떻게 가는게 가장 좋나요?</p>
            <p class="hashtag">#자유여행</p>
            <div class="info_flex">
              <div class="info">닉네임 : gunsi</div>

              <div class="view">조회수 : 26</div>
              <div class="comments">댓글 : 0</div>
            </div>
          </div>
          <div class="board_contents_one">
            <div class="flex_title">
              <p>서울</p>
              <a href="#"><p class="view_board">게시글 보기</p></a>
            </div>
            <p class="title">서울 자유여행</p>
            <p class="contents">전주에서 서울 어떻게 가는게 가장 좋나요?</p>
            <p class="hashtag">#자유여행</p>
            <div class="info_flex">
              <div class="info">닉네임 : gunsi</div>

              <div class="view">조회수 : 26</div>
              <div class="comments">댓글 : 0</div>
            </div>
          </div>
          <div class="board_contents_one">
            <div class="flex_title">
              <p>서울</p>
              <a href="#"><p class="view_board">게시글 보기</p></a>
            </div>
            <p class="title">서울 자유여행</p>
            <p class="contents">전주에서 서울 어떻게 가는게 가장 좋나요?</p>
            <p class="hashtag">#자유여행</p>
            <div class="info_flex">
              <div class="info">닉네임 : gunsi</div>

              <div class="view">조회수 : 26</div>
              <div class="comments">댓글 : 0</div>
            </div>
          </div>
          <div class="board_contents_one">
            <div class="flex_title">
              <p>서울</p>
              <a href="#"><p class="view_board">게시글 보기</p></a>
            </div>
            <p class="title">서울 자유여행</p>
            <p class="contents">전주에서 서울 어떻게 가는게 가장 좋나요?</p>
            <p class="hashtag">#자유여행</p>
            <div class="info_flex">
              <div class="info">닉네임 : gunsi</div>

              <div class="view">조회수 : 26</div>
              <div class="comments">댓글 : 0</div>
            </div>
          </div>
          <div class="board_contents_one">
            <div class="flex_title">
              <p>서울</p>
              <a href="#"><p class="view_board">게시글 보기</p></a>
            </div>
            <p class="title">서울 자유여행</p>
            <p class="contents">전주에서 서울 어떻게 가는게 가장 좋나요?</p>
            <p class="hashtag">#자유여행</p>
            <div class="info_flex">
              <div class="info">닉네임 : gunsi</div>

              <div class="view">조회수 : 26</div>
              <div class="comments">댓글 : 0</div>
            </div>
          </div>
          <div class="board_contents_one">
            <div class="flex_title">
              <p>서울</p>
              <a href="#"><p class="view_board">게시글 보기</p></a>
            </div>
            <p class="title">서울 자유여행</p>
            <p class="contents">전주에서 서울 어떻게 가는게 가장 좋나요?</p>
            <p class="hashtag">#자유여행</p>
            <div class="info_flex">
              <div class="info">닉네임 : gunsi</div>

              <div class="view">조회수 : 26</div>
              <div class="comments">댓글 : 0</div>
            </div>
          </div>
          <div class="board_contents_one">
            <div class="flex_title">
              <p>서울</p>
              <a href="#"><p class="view_board">게시글 보기</p></a>
            </div>
            <p class="title">서울 자유여행</p>
            <p class="contents">전주에서 서울 어떻게 가는게 가장 좋나요?</p>
            <p class="hashtag">#자유여행</p>
            <div class="info_flex">
              <div class="info">닉네임 : gunsi</div>

              <div class="view">조회수 : 26</div>
              <div class="comments">댓글 : 0</div>
            </div>
          </div>
          <div class="board_contents_one">
            <div class="flex_title">
              <p>서울</p>
              <a href="#"><p class="view_board">게시글 보기</p></a>
            </div>
            <p class="title">서울 자유여행</p>
            <p class="contents">전주에서 서울 어떻게 가는게 가장 좋나요?</p>
            <a class="hashtag">#자유여행</a>
            <div class="info_flex">
              <div class="info">닉네임 : gunsi</div>

              <div class="view">조회수 : 26</div>
              <div class="comments">댓글 : 0</div>
            </div>
          </div>
          <div class="board_contents_one">
            <div class="flex_title">
              <p>서울</p>
              <a href="#"><p class="view_board">게시글 보기</p></a>
            </div>
            <p class="title">서울 자유여행</p>
            <p class="contents">전주에서 서울 어떻게 가는게 가장 좋나요?</p>
            <p class="hashtag">#같이여행가실분</p>
            <div class="info_flex">
              <div class="info">닉네임 : gunsi</div>

              <div class="view">조회수 : 26</div>
              <div class="comments">댓글 : 0</div>
            </div>
          </div>
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