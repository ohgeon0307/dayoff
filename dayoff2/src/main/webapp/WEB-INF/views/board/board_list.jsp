<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="edu.project.vo.BoardVo" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<%
	List<BoardVo> list = (List<BoardVo>)request.getAttribute("datalist");
%>
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
            <a href="${path }/"><div class="item"><img src="${path }/resources/img/logo.png" alt="" /></div></a>
            <div class="item">커뮤니티</div>
            <a href="<%= request.getContextPath()%>/photo/list.do" class="a_tag_color"><div class="item">포토갤러리</div></a>
          </div>
          <div class="right_header">
            <div class="item">
           
              <button class="searchBtn">
                <i class="xi-search xi-1x"></i>
              </button>
              <input type="text" placeholder="게시글을 검색해보세요!" />
     
            </div>
            <a href="${path }/user/login.do" class="login_a"><div class="item">로그인</div></a>
            <div class="bar">&#124;</div>
            <a href="${path }/user/join.do" class="join_a"><div class="item">회원가입</div></a>
            <a href="<%= request.getContextPath()%>/board/write.do"
              ><button class="header_write_btn">글쓰기</button></a> 
          </div>
        </div>
        <section class="second_section">
          <div class="second_header">
            <a href="/dayoff"><div class="home">홈</div></a>
            <a href="${path }/together.do"
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
          <form action="list.do" method="GET" class="form_item">
          <select name="searchType">
            <option value="title" <c:if test="${param.searchType == 'title' }">selected</c:if>>제목</option>
            <option value="content" <c:if test="${patam.searchType == 'content' }">selected</c:if>>내용</option>
          </select>
          <input type="text" class ="search_input" name="keyword" placeholder ="검색어를 입력하세요.." value="${param.keyword }">
          <button class="search_btn">게시글 검색</button>
          </form>
        </div>
        <div class="board_contents">
        <c:forEach items="${datalist }" var ="vo">
          <div class="board_contents_one">
            <div class="flex_title">
              <p>서울</p>
              <a href="view.do?bidx=${vo.bidx}"><p class="view_board">게시글 보기</p></a>
            </div>
            <p class="title">${vo.title }</p>
            <p class="contents">${vo.content }</p>

            <p class="hashtag"># ${vo.hashTag}</p>
            <div class="info_flex">
              <div class="info">닉네임 : gunsi</div>

              <div class="view">조회수 : 26</div>
              <div class="comments">댓글 : 0</div>
            </div>
          </div>
          </c:forEach>
          </div>
      </section>
    </main>
  <div class ="page">
    <ul class="pagination modal">
    	<c:if test="${pageMaker.prev }">
    	<li class="first"><a href="list.do?page=${pageMaker.startPage -1 }">이전</a></li>
    	</c:if>
    	
    	<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage }" var="idx">
    		<li><a href="list.do?page=${idx }" class= "num">${idx }</a></li>
    	</c:forEach>
    	
    	<c:if test="${pageMaker.next && pageMaker.endPage > 0 }">
    		<li class="last"><a href="list.do?page=${pageMaker.endPage + 1 }">다음</a></li>
    	</c:if>
    	</ul>
    </div>	
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