<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
          <title>마이페이지_게시글보기</title>
        <link rel="stylesheet" href="css/mypage_post.css">
        <link
        rel="stylesheet"
        href="https://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css"
        />
        <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
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
        <script>
    	
    	function searchBtn() {
    		alert("통합 검색은 현재 준비중입니다🤗");
    	}
    	
    </script>
    </head>
    <body>
        <header>
            <section class="first_section">
              <div class="header">
                <div class="left_header">
                  <div class="item"><img src="img/logo.png" alt="" /></div>
                  <div class="item">커뮤니티</div>
                  <a href="#" class="a_tag_color"><div class="item">포토갤러리</div></a>
                </div>
                <div class="right_header">
                  <div class="item">
                    <button class="searchBtn" onclick="searchBtn()">
                      <i class="xi-search xi-1x"></i>
                    </button>
                    <input type="text" placeholder="여행지를 찾아보세요!" />
                  </div>
                  <a href="#" class="login_a"><div class="item">로그인</div></a>
                  <div class="bar">&#124;</div>
                  <a href="#" class="join_a"><div class="item">회원가입</div></a>
                  <a href="#"><button class="header_write_btn">글쓰기</button></a>
                </div>
              </div>
              <section class="second_section">
                <div class="second_header">
                  <div class="home">홈</div>
                  <a href="#"><div class="trip_info">동행</div></a>
                  <a href="#"><div class="board">게시판</div></a>
                </div>
              </section>
            </section>
        </header>
            <main class="MainLayout" style="background-color: rgb(248,248,248);">
                <div class="Layout">
                    <section class="WebSection_SectionWrapper" direction="horizontal">
                        <div class="MenuSection" style="height:240.09px;">
                            <div class="ItemDiv">
                                <div class="ImgDiv">
                                    <img src="img/캡처.jpg" alt="">
                                </div>
                                <p>아이디</p>
                            </div>
                            <ul class="MenuBox">
                            <li class="Menustyle a">
                                <a href="" class="aa">
                                    <span class="Menustyle_name">
                                        계정관리
                                    </span>
                                </a>
                            </li>
                            <li class="Menustyle b">
                                <a href="" class="bb">
                                    <span class="Menustyle_name">
                                        내 게시글
                                    </span>
                                </a>
                            </li>
                            </ul>
                        </div>
                        <section direction="vertical" class="WebSection">
                            <div class="BetweenButtonWrapper">
                                <button class="Qna_Title">
                                    작성한 게시글
                                    <span>(0)</span>
                                </button>
                                <button class="Qna_Title">
                                    작성한 댓글
                                    <span>(1)</span>
                                </button>
                            </div>
                            <div class="PaginationSection">
                                <div>
                                    <div class="PaginationSection_HeadWrapper">
                                        <div class="Select_ItemWrapper" style="width:82px; height:37px; padding: 0 7px; margin:0 0 0 6px;">
                                            <select class="Select_selectWrapper">
                                                <option value="none" class="Select_SelectOption">기간</option>
                                                <option value="all" class="Select_SelectOption">전체</option>
                                                <option value="30" class="Select_SelectOption">1개월</option>
                                                <option value="90" class="Select_SelectOption">3개월</option>
                                                <option value="180" class="Select_SelectOption">6개월</option>
                                                <option value="365" class="Select_SelectOption">1년</option>
                                            </select>
                                            <svg width="12" height="7" viewBox="0 0 12 7" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                <path d="M1 1L6 6L11 1" stroke="#6a6a6a" stroke-width="1" stroke-linecap="square"></path>
                                            </svg>
                                        </div>
                                    </div>
                                    <div class="PaginationSection_ContentWrapper">
                                        <div class="Nodata" style="height:419px; background: none;">
                                            <div class="Text_Area">
                                                <span class="TourIconSet"></span>
                                                <p class="NoData_PreventDrag">작성된 게시글이 없습니다</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="PaginationSection_bottomWrapper">
                                    <div class="Paging_Wrap">
                                        <div class="Inner_Paging">
                                            <button type="button" class="Paging_Button rotate">
                                                <span class="screen_out">이전</span>
                                            </button>
                                            <div class="Paging_number">
                                                <a class="Green_Text">1</a>
                                            </div>
                                            <button type="button" class="Paging_Button">
                                                <span class="Screen_Out">다음</span>
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>
                    </div>
                </section>
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