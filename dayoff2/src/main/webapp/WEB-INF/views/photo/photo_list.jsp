<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>포토갤러리</title>

    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css"
    />
    <link rel="stylesheet" href="${path}/resources/css/photo_list.css" />
    <link rel="shortcut icon" href="${path}/resources/img/favicon.png" />

    <script src="${path}/resources/js/jquery-3.6.1.min.js"></script>

    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css"
    />
    <script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>

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

      $(function () {
        // 	이미지 클릭시 해당 이미지 모달
        $(".imgC").click(function () {
          $(".modal").show();
          $("body").css("overflow", "hidden");
          // 해당 이미지 가져오기
          var imgSrc = $(this).children("img").attr("src");
          var imgAlt = $(this).children("img").attr("alt");
          $(".modalBox img").attr("src", imgSrc);
          $(".modalBox img").attr("alt", imgAlt);

          // 해당 이미지 텍스트 가져오기
          var imgTit = $(this).children("p").text();
          $(".modalBox p").text(imgTit);

          // 해당 이미지에 alt값을 가져와 제목으로
          //$(".modalBox p").text(imgAlt);
        });

        //.modal안에 button을 클릭하면 .modal닫기
        $(".modal button").click(function () {
          $(".modal").hide();
          $("body").css("overflow", "scroll");
        });

        //.modal밖에 클릭시 닫힘
        $(".modal").click(function (e) {
          if (e.target.className != "modal") {
            return false;
          } else {
            $(".modal").hide();
            $("body").css("overflow", "scroll");
          }
        });
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
            <a href="home.html" class="a_tag_color"
              ><div class="item">커뮤니티</div></a
            >
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
            <a href="pwrite.do"><button class="header_write_btn">글쓰기</button></a>
          </div>
        </div>
        <section class="second_section">
          <div class="second_header">
            <a href="plist.do"><div class="trip_info">포토갤러리</div></a>
            <a href="slist.do"><div class="board">쇼츠갤러리</div></a>
          </div>
        </section>
      </section>
    </header>
    <main>
      <section>
        <div class="pic">
          <img src="img/Menu_Shop_Backpacks_2000x.progressive.jpg" alt="" />
          <a>여행사진들을 공유해봐요!</a>
        </div>
      </section>

      <section>
        <div class="subject">
          <h2>전라북도</h2>
          <h2>전주</h2>
          <h2>한옥마을</h2>
        </div>
      </section>
      <section class="filter">
        <p>정렬</p>
        <select class="">
          <option value="time" class="">최신순</option>
          <option value="view" class="">조회순</option>
          <option value="like" class="">좋아요순</option>
        </select>
      </section>
      <section class="images">
        <div class="imgList">
          <div class="imgC">
            <img src="img/m-h-9im7JmZKDpY-unsplash.jpg" alt="" />
          </div>
          <div class="content">
            <div class="writer">
              <i class="xi-profile-o"></i><a href="#">sonny</a>
            </div>
            <div>
              <i class="xi-eye-o">1500</i>
              <a href="#"><i class="xi-heart"></i></a>34
            </div>
          </div>
          <div class="title">아름다운 우리 한옥</div>
          <div class="hashtag">
            <a href="#">전라북도</a><a href="#">전주</a><a href="#">한옥마을</a>
          </div>
        </div>
        <div class="imgList">
          <div class="imgC">
            <img src="img/rawkkim-JrUPwkbIIx8-unsplash.jpg" alt="" />
          </div>
          <div class="content">
            <div class="writer">
              <i class="xi-profile-o"></i><a href="#">sonny</a>
            </div>
            <div>
              <i class="xi-eye-o">1500</i>
              <a href="#"><i class="xi-heart"></i></a>34
            </div>
          </div>
          <div class="title">아름다운 우리 한옥</div>
          <div class="hashtag">
            <a href="#">전라북도</a><a href="#">전주</a><a href="#">한옥마을</a>
          </div>
        </div>
        <div class="imgList">
          <div class="imgC">
            <img src="img/rawkkim-KKz6NgO69yQ-unsplash.jpg" alt="" />
          </div>
          <div class="content">
            <div class="writer">
              <i class="xi-profile-o"></i><a href="#">sonny</a>
            </div>
            <div>
              <i class="xi-eye-o">1500</i>
              <a href="#"><i class="xi-heart"></i></a>34
            </div>
          </div>
          <div class="title">아름다운 우리 한옥</div>
          <div class="hashtag">
            <a href="#">전라북도</a><a href="#">전주</a><a href="#">한옥마을</a>
          </div>
        </div>
        <div class="imgList">
          <div class="imgC">
            <img src="img/yujeong-huh-PnO5Uh6Ms8M-unsplash.jpg" alt="" />
          </div>
          <div class="content">
            <div class="writer">
              <i class="xi-profile-o"></i><a href="#">sonny</a>
            </div>
            <div>
              <i class="xi-eye-o">1500</i>
              <a href="#"><i class="xi-heart"></i></a>34
            </div>
          </div>
          <div class="title">아름다운 우리 한옥</div>
          <div class="hashtag">
            <a href="#">전라북도</a><a href="#">전주</a><a href="#">한옥마을</a>
          </div>
        </div>
      </section>

      <div class="modal">
        <button>&times;</button>
        <div class="modalBox">
          <p></p>
          <img src="" alt="" />
        </div>
      </div>

      <section class="images">
        <div class="imgList">
          <div class="imgC">
            <img src="img/minku-kang-B9LU6tfetRQ-unsplash.jpg" alt="" />
          </div>
          <div class="content">
            <div class="writer">
              <i class="xi-profile-o"></i><a href="#">sonny</a>
            </div>
            <div>
              <i class="xi-eye-o">1500</i>
              <a href="#"><i class="xi-heart"></i></a>34
            </div>
          </div>
          <div class="title">아름다운 우리 한옥</div>
          <div class="hashtag">
            <a href="#">전라북도</a><a href="#">전주</a><a href="#">한옥마을</a>
          </div>
        </div>
        <div class="imgList">
          <div class="imgC">
            <img src="img/minku-kang-F9l4HKHzR88-unsplash.jpg" alt="" />
          </div>
          <div class="content">
            <div class="writer">
              <i class="xi-profile-o"></i><a href="#">sonny</a>
            </div>
            <div>
              <i class="xi-eye-o">1500</i>
              <a href="#"><i class="xi-heart"></i></a>34
            </div>
          </div>
          <div class="title">아름다운 우리 한옥</div>
          <div class="hashtag">
            <a href="#">전라북도</a><a href="#">전주</a><a href="#">한옥마을</a>
          </div>
        </div>
        <div class="imgList">
          <div class="imgC">
            <img src="img/rawkkim-02dluo990Vw-unsplash.jpg" alt="" />
          </div>
          <div class="content">
            <div class="writer">
              <i class="xi-profile-o"></i><a href="#">sonny</a>
            </div>
            <div>
              <i class="xi-eye-o">1500</i>
              <a href="#"><i class="xi-heart"></i></a>34
            </div>
          </div>
          <div class="title">아름다운 우리 한옥</div>
          <div class="hashtag">
            <a href="#">전라북도</a><a href="#">전주</a><a href="#">한옥마을</a>
          </div>
        </div>
        <div class="imgList">
          <div class="imgC">
            <img src="img/drew-bae-u5skafPrb7A-unsplash.jpg" alt="" />
          </div>
          <div class="content">
            <div class="writer">
              <i class="xi-profile-o"></i><a href="#">sonny</a>
            </div>
            <div>
              <i class="xi-eye-o">1500</i>
              <a href="#"><i class="xi-heart"></i></a>34
            </div>
          </div>
          <div class="title">아름다운 우리 한옥</div>
          <div class="hashtag">
            <a href="#">전라북도</a><a href="#">전주</a><a href="#">한옥마을</a>
          </div>
        </div>
      </section>

      <section class="images">
        <div class="imgList">
          <div class="imgC">
            <img src="img/m-h-9im7JmZKDpY-unsplash.jpg" alt="" />
          </div>
          <div class="content">
            <div class="writer">
              <i class="xi-profile-o"></i><a href="#">sonny</a>
            </div>
            <div>
              <i class="xi-eye-o">1500</i>
              <a href="#"><i class="xi-heart"></i></a>34
            </div>
          </div>
          <div class="title">아름다운 우리 한옥</div>
          <div class="hashtag">
            <a href="#">전라북도</a><a href="#">전주</a><a href="#">한옥마을</a>
          </div>
        </div>
        <div class="imgList">
          <div class="imgC">
            <img src="img/rawkkim-JrUPwkbIIx8-unsplash.jpg" alt="" />
          </div>
          <div class="content">
            <div class="writer">
              <i class="xi-profile-o"></i><a href="#">sonny</a>
            </div>
            <div>
              <i class="xi-eye-o">1500</i>
              <a href="#"><i class="xi-heart"></i></a>34
            </div>
          </div>
          <div class="title">아름다운 우리 한옥</div>
          <div class="hashtag">
            <a href="#">전라북도</a><a href="#">전주</a><a href="#">한옥마을</a>
          </div>
        </div>
        <div class="imgList">
          <div class="imgC">
            <img src="img/rawkkim-KKz6NgO69yQ-unsplash.jpg" alt="" />
          </div>
          <div class="content">
            <div class="writer">
              <i class="xi-profile-o"></i><a href="#">sonny</a>
            </div>
            <div>
              <i class="xi-eye-o">1500</i>
              <a href="#"><i class="xi-heart"></i></a>34
            </div>
          </div>
          <div class="title">아름다운 우리 한옥</div>
          <div class="hashtag">
            <a href="#">전라북도</a><a href="#">전주</a><a href="#">한옥마을</a>
          </div>
        </div>
        <div class="imgList">
          <div class="imgC">
            <img src="img/yujeong-huh-PnO5Uh6Ms8M-unsplash.jpg" alt="" />
          </div>
          <div class="content">
            <div class="writer">
              <i class="xi-profile-o"></i><a href="#">sonny</a>
            </div>
            <div>
              <i class="xi-eye-o">1500</i>
              <a href="#"><i class="xi-heart"></i></a>34
            </div>
          </div>
          <div class="title">아름다운 우리 한옥</div>
          <div class="hashtag">
            <a href="#">전라북도</a><a href="#">전주</a><a href="#">한옥마을</a>
          </div>
        </div>
      </section>

      <section class="images">
        <div class="imgList">
          <div class="imgC">
            <img src="img/minku-kang-B9LU6tfetRQ-unsplash.jpg" alt="" />
          </div>
          <div class="content">
            <div class="writer">
              <i class="xi-profile-o"></i><a href="#">sonny</a>
            </div>
            <div>
              <i class="xi-eye-o">1500</i>
              <a href="#"><i class="xi-heart"></i></a>34
            </div>
          </div>
          <div class="title">아름다운 우리 한옥</div>
          <div class="hashtag">
            <a href="#">전라북도</a><a href="#">전주</a><a href="#">한옥마을</a>
          </div>
        </div>
        <div class="imgList">
          <div class="imgC">
            <img src="img/minku-kang-F9l4HKHzR88-unsplash.jpg" alt="" />
          </div>
          <div class="content">
            <div class="writer">
              <i class="xi-profile-o"></i><a href="#">sonny</a>
            </div>
            <div>
              <i class="xi-eye-o">1500</i>
              <a href="#"><i class="xi-heart"></i></a>34
            </div>
          </div>
          <div class="title">아름다운 우리 한옥</div>
          <div class="hashtag">
            <a href="#">전라북도</a><a href="#">전주</a><a href="#">한옥마을</a>
          </div>
        </div>
        <div class="imgList">
          <div class="imgC">
            <img src="img/rawkkim-02dluo990Vw-unsplash.jpg" alt="" />
          </div>
          <div class="content">
            <div class="writer">
              <i class="xi-profile-o"></i><a href="#">sonny</a>
            </div>
            <div>
              <i class="xi-eye-o">1500</i>
              <a href="#"><i class="xi-heart"></i></a>34
            </div>
          </div>
          <div class="title">아름다운 우리 한옥</div>
          <div class="hashtag">
            <a href="#">전라북도</a><a href="#">전주</a><a href="#">한옥마을</a>
          </div>
        </div>
        <div class="imgList">
          <div class="imgC">
            <img src="img/drew-bae-u5skafPrb7A-unsplash.jpg" alt="" />
          </div>
          <div class="content">
            <div class="writer">
              <i class="xi-profile-o"></i><a href="#">sonny</a>
            </div>
            <div>
              <i class="xi-eye-o">1500</i>
              <a href="#"><i class="xi-heart"></i></a>34
            </div>
          </div>
          <div class="title">아름다운 우리 한옥</div>
          <div class="hashtag">
            <a href="#">전라북도</a><a href="#">전주</a><a href="#">한옥마을</a>
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