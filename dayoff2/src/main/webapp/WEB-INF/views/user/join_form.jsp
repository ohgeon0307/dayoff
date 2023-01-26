<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <title>회원가입</title>
  <link href="${path}/resources/css/join_form.css" rel="stylesheet">
  <script type="text/javascript" src="${path }/resources/js/jquery-3.6.1.min.js"></script>
  <script type="text/javascript">
  	function check() {
  		var frm = document.frm; //form name으로 폼 호출
  		
  		if(frm.password.value == "") {
  			alert("비밀번호는 필수 항목입니다.");
  			frm.password.focus();
  			return;
  		}
  		
  		if (frm.name.value == "") {
  			alert("이름은 필수 항목입니다.");
  			frm.name.focus;
  			return;
  		}
  		
  		if (frm.id.value == "") {
  			alert("이메일은 필수 항목입니다.");
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
  <main>
    <form action = "join.do" method="post" name="frm">
      <h2>회원가입하기</h2>
      <div class="layout">
        <div class="mandat">입력사항<span style="color: rgb(0, 206, 124);">(필수)</span></div>
      <div class="box">
        <input type="text" placeholder="아이디" name="id" id ="id" onblur = "blurId(this)"/><button type= "button" onclick="validation()">중복확인</button><br>
        <input type="password" placeholder="비밀번호(8자~12자, 영문+숫자+특수문자 사용)" name = "password" id ="password" required><br>
        <input type="text" placeholder="이름" name = "name" id="name" required><br>
        <input type="tel" placeholder="휴대폰 번호(-없이 입력해주세요)" name ="phone" id="phone" required><br>
        <select>
          <option>성별</option>
          <option>남자</option>
          <option>여자</option>
        </select><br>
        <input type="text" placeholder ="생년월일을 입력해주세요(ex : 19970307)" required>
      </div>
      <div class="agreement"><label>
          <input id="all_check" type="checkbox">이용약관 전체 동의</label>
          <hr>
          <div class="details">
            <label><input type="checkbox" required>(필수) 서비스 이용약관 동의</label>
            <label><input type="checkbox" required>(필수) 개인정보처리방침 동의</label>
            <label><input type="checkbox" required>(필수) 위치기반서비스 동의</label>
            <label><input type="checkbox"> (선택) 마케팅 정보 활용 동의</label>
            <label><input type="checkbox" required>(필수) 만 14세 이상입니다.</label>
          </div>
      </div>
        <input type='button' onclick="check()" value="회원가입" />
      </div>
    </form>
  </main>
  <hr>

</body>
</html>