<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>쇼츠갤러리</title>

    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css"
    />
    <link rel="stylesheet" href="${path}/resources/css/short_list.css"  />
    <link rel="shortcut icon" href="${path}/resources/img/favicon.png" />
    <link
    rel="stylesheet"
    href="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.css"
  />
    <!-- Swiper JS -->
    <script src="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script>
    
    <script src="${path}/resources/js/jquery-3.6.1.min.js"></script>

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

      $("document").ready(function () {
    // 문서의 dom이 준비되면
    // .mySwiper 클래스를 swiper 슬라이더로 만듦
    // 이후에 swiper변수에 할당했기 때문에 스크립트로 제어할 수도 있음.
    var swiper = new Swiper(".mySwiper", {
        slidesPerView: 'auto',
        spaceBetween: 80,
        loop: true,

        // pagination 기본은 bullet
        pagination: {
            el: ".swiper-pagination"
        },

        // 좌우 화살표 navigation element 지정
        navigation: {
            nextEl: ".swiper-button-next",
            prevEl: ".swiper-button-prev"
        },
        // 반응형
        breakpoints: {
            // 600px 이하가 되면 슬라이드 간 간격을 0으로
            600: {
                spaceBetween: 0
            },
        },

        on: {
            init: function() {
                $('.swiper-slide').addClass('changed');

                // fraction에 현재 인덱스와 전체 인덱스 표시
                // this.loopedSlides는 loop, slidesPerView: 'auto'일 때 제대로 동작
                $('.custom-fraction .current').text(this.realIndex + 1);
                $('.custom-fraction .all').text(this.loopedSlides);
                // console.log(this);
                // console.log(this.loopedSlides)
            },

            slideChangeTransitionStart: function() {
                // 기본적으로 제공하는 swiper-slide-active 클래스를 이용해
                // css transition 애니메이션 작성 가능하다.
                // 다만 루프 모드일 때에는 루프 픽스를 하며 slide를 바꿔치기를 하는데,
                // 이 때 플리커링이 발생할 수 있다.
                // css transition을 서로 다르게 설정한 changed, changing 클래스를 이용
                $('.swiper-slide').addClass('changing');
                $('.swiper-slide').removeClass('changed');

                // 페이지 넘어갈 때마다 fraction 현재 인덱스 변경
                $('.custom-fraction .current').text(this.realIndex + 1);
            },

            slideChangeTransitionEnd: function() {
                // changing : transition O
                // changed : transition X
                $('.swiper-slide').removeClass('changing');
                $('.swiper-slide').addClass('changed');
            }
        },
    });

    // 슬라이더 할당한 swiper로 슬라이더 제어
    $(".auto-start").on("click", function() {
        // 기본 설정으로 autoplay 시작
        console.log("autoplay start");
        swiper.autoplay.start();
    });

    $(".auto-stop").on("click", function() {
        console.log("autoplay stop");
        swiper.autoplay.stop();
    });
});
    </script>
  </head>

  <body>
    <header>
      <section class="first_section">
        <div class="header">
          <div class="left_header">
            <div class="item"><img src="${path}/resources/img/logo.png" alt="" /></div>
            <a href="#" class="a_tag_color"><div class="item">커뮤니티</div></a>
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
            <a href="<%= request.getContextPath()%>/photo/swrite.do"><button class="header_write_btn">글쓰기</button></a>
          </div>
        </div>
        <section class="second_section">
          <div class="second_header">
            <a href="<%= request.getContextPath()%>/photo.do"><div class="trip_info">포토갤러리</div></a>
            <a href="<%= request.getContextPath()%>/photo/short.do"><div class="board">쇼츠갤러리</div></a>
          </div>
        </section>
      </section>
    </header>
    <main>
      <section>
        <div class="pic">
          <img src="${path}/resources/img/Menu_Shop_Backpacks_2000x.progressive.jpg" alt="" />
          <a>여행영상을 공유해봐요!</a>
        </div>
      </section>  
      <div class="wrapper">
        <!-- Swiper -->
        <div class="swiper mySwiper">
          <div class="swiper-wrapper">
            <div class="swiper-slide"><iframe src="https://www.youtube.com/embed/7M5bDZ1EPVQ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe></div>
            <div class="swiper-slide"><iframe src="https://www.youtube.com/embed/wWg9zB6PlZc" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe></div>
            <div class="swiper-slide"><iframe src="https://www.youtube.com/embed/zuc3IbE8pIk" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe></div>
            <div class="swiper-slide"><iframe src="https://www.youtube.com/embed/oB3IIcpiPzU" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe></div>
            <div class="swiper-slide"><iframe src="https://www.youtube.com/embed/STN9upGDGRA" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe></div>
            <div class="swiper-slide"><iframe src="https://www.youtube.com/embed/qxD1fk2hM-o" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe></div>
            <div class="swiper-slide"><iframe src="https://www.youtube.com/embed/B0ZfLo6gRGc" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe></div>
            <div class="swiper-slide"><iframe src="https://www.youtube.com/embed/B0ZfLo6gRGc" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe></div>
            <div class="swiper-slide"><iframe src="https://www.youtube.com/embed/lHZ21eVdRo8" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe></div>
          </div>
          <div class="swiper-pagination"></div>
          <div class="swiper-button-next"></div>
          <div class="swiper-button-prev"></div>
          <div class="custom-fraction">
            <span class="current">1</span>/<span class="all">9</span>
          </div>
        </div>
        <!--
          <div class="btn-wrapper">
            <button class="auto-start">자동넘기기</button>
            <button class="auto-stop">멈추기</button>
          </div>
        -->
        
      </div>
      <section>
 
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