<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>데이오프</title>
    <link rel="stylesheet" href="${path}/resources/css/home.css" />
    <link rel="shortcut icon" href="${path}/resources/img/favicon.png">
    <link rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.css"
    />
    <link rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css"
    />
    <script src="${path }/resources/js/script.js"></script>
    <!--swiper plugin connect-->
    <script src="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script>
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
            <a href="home.html"><div class="item"><img src="${path }/resources/img/logo.png" alt="" /></div></a>
            <div class="item">커뮤니티</div>
            <a href="photo.do" class="a_tag_color"><div class="item">포토갤러리</div></a>
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
            <a href="join.html" class="join_a"><div class="item">회원가입</div></a>
            <a href="together_write.do"><button class="header_write_btn">글쓰기</button></a>
          </div>
        </div>
        <section class="second_section">
          <div class="second_header">
            <div class="home">홈</div>
            <a href="together.do"><div class="trip_info">동행</div></a>
            <a href="board.do"><div class="board">게시판</div></a>
          </div>
        </section>
      </section>
    </header>
    <main>
      <section class="slider_section">
        <div class="swiper mySwiper">
          <div class="swiper-wrapper">
            <div class="swiper-slide">
              <div class="first_slide">
                <p>제주도 1만원부터 시작하는</p>
                <p>보험 포함 데이오프 렌트카!</p>
                <p>1일 1만원대 렌트카 확인해보세요!</p>
              </div>
              <img src="${path }/resources/img/slideImg01.webp" alt="" />
              <button>데이오프 렌터카 보러가기</button>
            </div>
            <div class="swiper-slide">
              <div class="second_slide">
                <p>2023년에도 데이오프.</p>
                <p>많은경품을 드립니다!</p>
                <p>새해복 많이 받으세요 !!</p>
              </div>
              <img src="${path }/resources/img/slideImg02.webp" alt="" />
              <button>이벤트 참여하기</button>
            </div>
            <div class="swiper-slide">
              <div class="third_slide">
                <p>맛집투어엔 역시 데이오프!</p>
                <p>저희 데이오프와 함께</p>
                <p>맛집투어를 떠나봐요!</p>
              </div>
              <img src="${path }/resources/img/slideImg03.webp" alt="" />
              <button>일본투어 보러가기</button>
            </div>
            <div class="swiper-slide">
              <div class="fourth_slide">
                <p>비행기를 타고 훨훨훨</p>
                <p>같이 날아가볼까요?</p>
                <p>test by Controller team.</p>
              </div>
              <img src="${path }/resources/img/slideImg04.png" alt="" />
              <button class="slide04_btn">질문 보러가기</button>
            </div>
          </div>
          <div class="swiper-button-next"></div>
          <div class="swiper-button-prev"></div>
          <div class="swiper-pagination"></div>
        </div>
      </section>
      <section class="photo_section">
        <div class="photo_header_section">
          <p>취향저격 포토갤러리</p>
          <button class="photo_more">더보기</button>
        </div>
        <div class="photo_zone">
          <div class="gallery">
            <img src="${path }/resources/img/photozone01.webp" alt="" />
            <div class="gallery_text">
              <b class="gallery_text_green"> 포토갤러리 </b>
              <div class="photo_title">아름다운 싱가폴 뷰</div>
              <div class="user_name">김은준</div>
            </div>
          </div>
          <div class="gallery">
            <img src="${path }/resources/img/photozone02.webp" alt="" />
            <div class="gallery_text">
              <b class="gallery_text_green"> 포토갤러리 </b>
              <div class="photo_title">여행의 끝, 세비야</div>
              <div class="user_name">김충언</div>
            </div>
          </div>
          <div class="gallery">
            <img src="${path }/resources/img/photozone03.webp" alt="" />
            <div class="gallery_text">
              <b class="gallery_text_green"> 포토갤러리 </b>
              <div class="photo_title">애버딘, 위스키와 칵테일</div>
              <div class="user_name">임낙훈</div>
            </div>
          </div>
          <div class="gallery">
            <img src="${path }/resources/img/photozone04.webp" alt="" />
            <div class="gallery_text">
              <b class="gallery_text_green"> 포토갤러리 </b>
              <div class="photo_title">풍경이 좋던 런던 하늘</div>
              <div class="user_name">오건</div>
            </div>
          </div>
        </div>
      </section>
      <section class="board_section">
        <div class="board_section_header">
          <p>여행정보 공유해요❕</p>
          <button class="board_more">더보기</button>
        </div>
        <div class="board_zone">
          <div class="board_contents">
            <div class="board_contents_view">
              <div class="board_header">
                <div class="title">부산 광안리 맛집 추천좀 부탁드릴게요.</div>
              </div>
              <div class="contents">
                부산역에서 멀지 않은 맛집 추천 부탁드려요💨
              </div>
              <div class="board_user_name">사용자 이름 : 김은준</div>
              <div class="board_reply">
                김충언 : 진미횟집 매운탕 강추요!
                <div class="reply_count">
                  해당 게시글에 1개의 답변이 있습니다.
                </div>
              </div>
            </div>
          </div>
        <div class="board_contents">
          <div class="board_contents_view">
            <div class="board_header">
              <div class="title">전주 시내 맛집 추천드립니다.</div>
            </div>
            <div class="contents">
              전주쪽에 여행가는데.. 처음 먹어본 국밥집인데 객사쪽에 위치해있고
              여기 이름은…
            </div>
            <div class="board_user_name">사용자 이름 : 오건</div>
            <div class="board_reply">
              임낙훈 : 좋은 정보 감사합니다! 🥘
              <div class="reply_count">
                해당 게시글에 4개의 답변이 있습니다.
              </div>
            </div>
          </div>
        </div>
      </section>
      <section class="ad_slide">
        <div class="swiper ad_slider">
          <div class="swiper-wrapper">
            <div class="swiper-slide">slide banner 01</div>
            <div class="swiper-slide">slide banner 02</div>
          </div>
          <div class="swiper-pagination"></div>
        </div>
      </section>
      <hr class="slide_hr"/>
      <section class= "editor_pick">
        <div class="editor_first_header">
          <p>데이오프 Editor's pick✈</p>
          <span class="editor_span">#에디터추천</span>
          <span class="editor_span">#트렌디</span>
        </div>
        <div class="editor_header">
          <p class="editor_title">데이오프 여행 에디터가 추천하는 이달의 투어!</p>
        </div>
      </section>
      <section id="press">
        <h3><a href="#">DayOff</a></h3>
        <div class="inner">
          <ul class="slider">
            <li class="item">
              <div class="box">
                <p><img src="${path }/resources/img/photozone01.webp" alt="" /></p>
                <h4>꿈의 도시, 싱가폴</h4>
                <p><i class="xi-paper-o"></i>dayoff</p>
              </div>
            </li>
            <li class="item">
              <div class="box">
                <p><img src="${path }/resources/img/photozone02.webp" alt="" /></p>
                <h4>동화속 도시, 세비야</h4>
                <p><i class="xi-paper-o"></i>dayoff</p>
              </div>
            </li>
            <li class="item">
              <div class="box">
                <p><img src="${path }/resources/img/photozone03.webp" alt="" /></p>
                <h4>술의 도시, 애버딘</h4>
                <p><i class="xi-paper-o"></i>dayoff</p>
              </div>
            </li>
            <li class="item">
              <div class="box">
                <p><img src="${path }/resources/img/photozone04.webp" alt="" /></p>
                <h4>풍경이 아름다운, 런던</h4>
                <p><i class="xi-paper-o"></i>dayoff</p>
              </div>
            </li>
            <li class="item">
              <div class="box">
                <p><img src="${path }/resources/img/photozone05.webp" alt="" /></p>
                <h4>바다속으로, 나트랑</h4>
                <p><i class="xi-paper-o"></i>dayoff</p>
              </div>
            </li>
            <li class="item">
              <div class="box">
                <p><img src="${path }/resources/img/photozone06.webp" alt="" /></p>
                <h4>벚꽃 명소, 나고야</h4>
                <p><i class="xi-paper-o"></i>dayoff</p>
              </div>
            </li>
            <li class="item">
              <div class="box">
                <p><img src="${path }/resources/img/photozone07.webp" alt="" /></p>
                <h4>고즈넉한 한옥, 전주</h4>
                <p><i class="xi-paper-o"></i>dayoff</p>
              </div>
            </li>
            <li class="item">
              <div class="box">
                <p><img src="${path }/resources/img/photozone08.webp" alt="" /></p>
                <h4>눈앞의 애니메이션, 아키하바라</h4>
                <p><i class="xi-paper-o"></i>dayoff</p>
              </div>
            </li>
            <li class="item">
              <div class="box">
                <p><img src="${path }/resources/img/photozone09.webp" alt="" /></p>
                <h4>분위기있는 섬, 제주도</h4>
                <p><i class="xi-paper-o"></i>dayoff</p>
              </div>
            </li>
            <li class="item">
              <div class="box">
                <p><img src="${path }/resources/img/photozone01.webp" alt="" /></p>
                <h4>ⓒ. Team Controller</h4>
                <p><i class="xi-paper-o"></i>dayoff</p>
              </div>
            </li>
            <li class="item">
              <a href="#" class="more"
                >더 보기 🛴
                <i class="xi-long-arrow-right"></i>
              </a>
            </li>
          </ul>
          <div class="pager"></div>
        </div>
      </section>
      <hr class="hr_footer" />
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