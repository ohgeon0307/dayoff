<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<%@ page import="java.util.*" %>
<%@ page import="edu.project.vo.PhotoVo" %>
<%@ page import="edu.project.vo.AttachImageVo" %>
<% List<PhotoVo> list2 = (List<PhotoVo>)request.getAttribute("datalist");%>
<% List<AttachImageVo> list = (List<AttachImageVo>)request.getAttribute("imagelist");%>

<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<meta charset="UTF-8">
    <title>포토갤러리</title>
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css"
    />
    <link href="${path}/resources/css/photo_list.css" rel="stylesheet"/>
    <link rel="shortcut icon" href="${path}/resources/img/favicon.png"/>
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
      
      
      /* 게시글 삭제*/
      function DoDelete(idx){  
    	  if (confirm("정말 삭제 하시겠습니까?") == true){ 
    		   //true는 확인버튼을 눌렀을 때 코드 작성
    	  
    	  var form = document.createElement("form");
    	  form.setAttribute("id", "form");
    	  form.setAttribute("method", "post");
    	  form.setAttribute("action", "delete.do");
    	  
    	  var hiddenField = document.createElement("input");
    	  hiddenField.setAttribute("type", "hidden");
    	  hiddenField.setAttribute("name", "pidx");
    	  hiddenField.setAttribute("value", idx);
    	  
    	  form.appendChild(hiddenField);
    	  
    	  document.body.appendChild(form);

    	  form.submit();
    	  
    	  document.getElementById("form").remove();

    		 }else{
    		   // false는 취소버튼을 눌렀을 때, 취소됨
    		   console.log("취소되었습니다");
    		 }
      }
      
      function shortdo(){
    	  alert("쇼츠갤러리는 현재 구현중입니다.");
      }
      
      
    </script>
  </head>
  <body>
    <header>
      <section class="first_section">
        <div class="header">
          <div class="left_header">
            <a href="${path }/community.do"><div class="item"><img src="${path}/resources/img/logo.png" alt="" /></div></a>
            <a href="<%= request.getContextPath()%>/community.do" class="a_tag_color"><div class="item2">커뮤니티</div></a>
            <a href="<%= request.getContextPath()%>/photo/list.do"><div class="item3">포토갤러리</div></a>
          </div>
          <div class="right_header">
            <div class="item">
              <button class="searchBtn">
                <i class="xi-search xi-1x"></i>
              </button>
              <input type="text" placeholder="해시태그로 검색해보세요!" />
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
            <a href="<%= request.getContextPath()%>/photo/write.do"
              ><button class="header_write_btn">글쓰기</button></a> 
            </c:if>
          </div>
        </div>
        <section class="second_section">
          <div class="second_header">
            <a href="<%= request.getContextPath()%>/photo/list.do"><div class="trip_info">포토갤러리</div></a>
            <button onclick="shortdo()"><div class="board">쇼츠갤러리</div></button>
          </div>
        </section>
      </section>
    </header>
    <main>
      <section>
        <div class="pic">
          <img src="${path}/resources/img/Menu_Shop_Backpacks_2000x.progressive.jpg" alt="" />
          <a>여행사진을 공유해봐요!</a>
        </div>
      </section>
      <section>
        <div class="asdf">
          <p>포토갤러리</p>
        </div>

      </section>
      <section class="board_list">
        <div class="board_header">
          <form action="list.do" method="GET" class="form_item">
          <select name="searchType">
            <option value="pTitle" <c:if test="${param.searchType == 'pTitle' }">selected</c:if>>제목</option>
            <option value="pHashTag" <c:if test="${param.searchType == 'pHashTag' }">selected</c:if>>지역</option>
          </select>
          <input type="text" class ="search_input" name="keyword" placeholder ="검색어를 입력하세요.." value="${param.keyword }">
          <button class="search_btn">게시글 검색</button>
          </form>
        </div>
      </section>
		<section class="images">
				<c:forEach var="vo" items="${datalist}" varStatus="status">
					<div class="imgList">
							<div class="imgC">
			           			<img src='<spring:url value="/image/${image[status.index].uploadPath}/${image[status.index].uuid}_${image[status.index].fileName}"/>' alt="" class="img"/>
							</div>
						<div class="content">
							<div class="writer">
								<i class="xi-profile"></i>&nbsp;<a href="#">${vo.pWriter}</a>
							</div>
							<div>
								<i class="xi-heart"></i>&nbsp;${vo.pLike}
							</div>
						</div>
						<div class="title">${vo.pTitle}
						</div>
						<div class="hashtag">
						<a href="#">${vo.pHashTag}</a>
							<c:if test="${login.name == vo.pWriter}">
								<button class="delete" onclick="DoDelete(${vo.pidx});">삭제</button>
								<button class="modify" onclick="location.href='modify.do?pidx=${vo.pidx}'">수정</button>
							</c:if>
						</div>
					</div>
				</c:forEach>
		      </section>
    <div class="modal">
      <span class="close">&times;</span>
      <img class="modal_content" id="img01">
    </div>
    </main>
     <div class ="page">
    <ul class="pagination">
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
      
      
      
      
      
      
      
      <script>
      /*모달창*/
        const modal = document.querySelector(".modal");
        const modal_img = document.querySelector(".modal_content");
        const span = document.querySelector(".close");
        var img = document.getElementsByClassName('img');
        var images = Array.prototype.filter.call(img, function(img) {
          img.addEventListener('click', ()=>{
            modalDisplay("block");
            modal_img.src = img.src;
          });
          span.addEventListener('click', ()=>{
            modalDisplay("none");
          });
          modal.addEventListener('click', ()=>{
            modalDisplay("none");
          });
          function modalDisplay(text){
            modal.style.display = text;
          }
          return img.nodeName === 'img';
        });
       </script>
    </footer>
</body>
</html>