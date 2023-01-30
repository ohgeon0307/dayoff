<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css"
    />
<meta charset="UTF-8">
  <title>회원가입</title>
  <link href="${path}/resources/css/join_form.css" rel="stylesheet">
  <script type="text/javascript" src="${path }/resources/js/jquery-3.6.1.min.js"></script>
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
  <script type="text/javascript">
  	function check() {
  		var frm = document.frm; //form name으로 폼 호출
  		
  		if(frm.id.value == "") {
  			alert("아이디는 필수 항목입니다.");
  			frm.id.focus();
  			return;
  		}
  		
  		if(frm.password.value == "") {
  			alert("비밀번호는 필수 항목입니다.");
  			frm.password.focus();
  			return;
  		}
  		
  		if (frm.name.value == "") {
  			alert("이름은 필수 항목입니다.");
  			frm.name.focus();
  			return;
  		}
  		
  		if (frm.id.value == "") {
  			alert("이메일은 필수 항목입니다.");
  			frm.id.focus();
  			return;
  		}
  		
  		if (frm.phone.value == "") {
  			alert("핸드폰번호는 필수 항목입니다.")
  			frm.phone.focus();
  			return;
  		}
  		
  		
  		
  		if(checkDupl() != true) {
  			alert("아이디 중복체크를 해주세요.");
  			obj = frm.id.value();
  			var flag = blurId(obj);
  			if (flag == false) {
  				alert("");
  				return;
  			}
  		}
  		
  		frm.action = "<%=request.getContextPath()%>/user/join.do";
  		frm.method = "POST";
  		frm.submit();
  		
  		return;
  	}
  	
  	var validationFlag = false;
  	var validationIdVal = "";
  	
  	function validation() {
  		var id = $('#id').val();
  		//비동기 통신
  		$.ajax({
  			url : "validation.do",
  			type : "post",
  			data : {id : id},
  			success : function(data) {
  				if(id != "") {
  					if(data == 1) {
  						alert("사용중인아이디 입니다.");
  						validationFlag = false;
  						validationIdval = "";
  					} else {
  						alert("사용 가능한 아이디 입니다.");
  						validationFlag = true;
  						validationIdval = id;
  					}
  				} else {
  					alert("아이디는 공백일 수 없습니다");
  				}
  			}
  		});
  	}
  	
  	function checkDupl(){
		if(validationFlag == false) { // 위 함수의 validationFlag 변수를 기준으로 조건식을 세움. 위에서 false값이면 아이디가 있다는 뜻이니까?
			return false; //false로 막는다.
		} else if($("#id").val() == "") { // name이 id인 값을 불러와 공백이라면 
			return false; //false로 막는다.
		} else {
			return true; //위의 두 경우가 모두 조건에 성립하지 않으면 통과.
		}
	}
	
	function blurId(obj) { //blurId(obj), 여기서 obj는 사용자가 입력한 id값(this)
		var val = obj.value; //사용자가 입력한 id값을 val 변수에 할당
		
		
		//기준점. false
		if(validationFlag && val != validationIdVal) { //블러를 했을때 중복확인을 했는지 안했는지 처리해주는 부분.
			//해석 : validationFlag가 true 이면서(엔드) val의 값이 기존에 입력했던 값과 일치하는가?
			validationFlag = false; //일치하지 않는다면 역시나 false.
		}
	}
  
  </script>
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
              <input type="text" placeholder="여행지를 찾아보세요!" />
            </div>
            <a href="login.do" class="login_a"><div class="item">로그인</div></a>
            <div class="bar">&#124;</div>
            <a href="${path }/user/join.do" class="join_a"><div class="item">회원가입</div></a>
           
          </div>
        </div>
      </section>
    </header>
  <main>
    <form action = "join.do" method="post" name="frm">
      <h2>회원가입하기</h2>
      <div class="layout">
        <div class="mandat">입력사항<span style="color: rgb(0, 206, 124);">(필수)</span></div>
      <div class="box">
        <Label><input type="text" placeholder="아이디" name="id" id ="id" onblur = "blurId(this)"></input><button type= "button" onclick="validation()" class="validation_btn">중복확인</button></Label><br/>
        <input type="password" placeholder="비밀번호(8자~12자, 영문+숫자+특수문자 사용)" name = "password" id ="password" required><br>
        <input type="text" placeholder="이름" name = "name" id="name" required><br>
        <input type="tel" placeholder="휴대폰 번호(-없이 입력해주세요)" name ="phone" id="phone" required><br>
        <select name="gender">
          <option>성별</option>
          <option>남자</option>
          <option>여자</option>
        </select><br>
        <input type="text" placeholder ="생년월일을 입력해주세요(ex : 19970307)" name = "birth" id="birth" required>
      </div>
      <!-- <div class="agreement"><label>
          <input id="all_check" type="checkbox">이용약관 전체 동의</label>
          <hr>
          <div class="details">
            <label><input type="checkbox" required>(필수) 서비스 이용약관 동의</label>
            <label><input type="checkbox" required>(필수) 개인정보처리방침 동의</label>
            <label><input type="checkbox" required>(필수) 위치기반서비스 동의</label>
            <label><input type="checkbox"> (선택) 마케팅 정보 활용 동의</label>
            <label><input type="checkbox" required>(필수) 만 14세 이상입니다.</label>
          </div>
      </div> -->
        <input type='button' onclick="check()" value="회원가입" class="join_btn"/>
      </div>
    </form>
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