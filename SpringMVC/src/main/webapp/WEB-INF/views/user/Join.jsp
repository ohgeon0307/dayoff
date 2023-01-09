<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="<%=request.getContextPath()%>/resources/js/jquery-3.6.1.min.js"></script>
<script>
	function check() {
		var frm = document.frm; //form name으로 폼 호출

		//if else 사용하지 않은 이유는, 한 덩이로 묶는게 아닌 각각 한번씩 무조건 실행되어야 하기때문에 if문으로만 분기처리.
		
		if(frm.password.value == "") { // Form안의 name값이 password인 value값이 공백이라면
			alert("비밀번호는 필수 항목입니다."); //알림창생성
			frm.password.focus(); //해당 태그안에 포커스메소드실행.
			return;
		}  
		// 이하 동일.
		if (frm.name.value == "") {
			alert("이름은 필수 항목입니다.");
			frm.name.focus();
			return;
		} 
		
		if (frm.addr.value == "") {
			alert("주소는 필수 항목입니다.");
			frm.addr.focus();
			return;
		}  
		if (frm.phone.value == "") {
			alert("핸드폰 번호는 필수 항목입니다.");
			frm.phone.focus();
			return;
		}
		
		if(checkDupl() != true) { //밑에 선언해놓은 checkDupl을 호출하여 값이 false(오류) 라면 아래 구문 실행.
			alert("아이디 중복체크를 해주세요.");
			obj = frm.id.value();
			var flag = blurId(obj); //flag라는 변수에 blurId()함수안에 obj를담아서 할당.
			if (flag == false) { // 블러된 상태였던 아이디를 수정한 상태여서 같지 않다면
				alert("") // 알림창생성
				return;
			}
		}
		
		
	  frm.action = "<%=request.getContextPath()%>/user/join.do"; 
	  //Controller 경로설정
  	  frm.method = "POST";
	  //Controller 메소드설정
  	  frm.submit();
	  // Controller 타입 -> 서브밋, 이 submit메소드와 버튼태그의 submit타입이 다른점은, 해당 메소드는 위의 처리가 모두 끝나야 데이터를 전송하지만
	  //<button></button> 타입의 서브밋은 폼안의 데이터만 가지고 Controller로 넘기려는 성질을 가지고 있기때문에 둘의 차이점을 명확하게 알아놔야 할 것 같다.
	  
  	  
  	  return;
	}
		
		
		
	var validationFlag = false; //validationFlag 기본값으로 false로 설정
	var validationIdVal = ""; // 공백 할당
	function validation() {
		var id = $("#id").val();
		//비동기 통신
		$.ajax({
			url : "validation.do",
			type : "post",
			data : {id : id},
			success: function(data) {
			if(id != ""){
				if(data == 1) { //컨트롤러를 거쳐서 들어온  data의 값이 1이라면(있다는뜻)
 					alert("사용중인아이디 입니다."); //알림창 생성
					validationFlag = false; // false로 값을 확정지어야함. 사용자가 두번누를수도 있기때문에..
					validationIdval = ""; 
				} else {
					alert("사용 가능한 아이디입니다"); //컨트롤러를 거쳐서 들어온 data의 값이 0이라면(없다는뜻)
					validationFlag = true; // true로 값을 확정.
					validationIdval = id; //기존의 데이터를 validationIdval 변수에 할당함.
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
	<h2>회원가입 페이지 입니다.</h2>
	<!-- 리셋, 서브밋, 일반버튼 버튼태그는 부모가 누구냐에따라 버튼기능이 달라짐. -->
		<form action = "join.do" method="post" name="frm" >
		아이디 : <input type="text" name="id" id="id" onblur = "blurId(this)"/> <button type="button" onclick="validation()">중복확인</button><br/>
		<div></div>
		비밀번호 : <input type="password" name="password" id="password" /> <br/>
		<!-- 비밀번호 확인 : <input type="password" name ="passwordMatch" id="passwordMatch"> <br/> -->
		닉네임 : <input type="text" name="name" id = "name"/> <br/>
		주소 : <input type="text" name="addr" id = "addr"/> <br/>
		핸드폰번호 : <input type="number" name="phone" id = "phone"/> <br/>
		  <input type='button' onclick="check()" value="회원가입하기.">  
		 <!-- input type 을 버튼으로 해놓은 이유는, 일반적인 버튼인 경우 submit하려는 성질이 있기때문에, 버튼 타입을 설정해주어야 submit하려는 성질이 없어진다.
		 만약 일반 button 태그를 사용했을경우에는 submit을 하려는 성질때문에 Controller에 접근하려는 성질을 띈다. 만약 비밀번호 유효성 검사에서 
		 일반 버튼 태그로 설정을 해놓았다면 비밀번호값을 주지않았는데도 불구하고 유효성검사에서 멈추는게 아닌 
		 그대로 Controller에 접근해 mybatis까지 전달해주는 로직이 발생되어 500에러가 난다.
		 오류 케이스 : ORA-01400: cannot insert NULL into ("C##APIC"."USERTB"."PASSWORD")
		 오류 해석 : PASSWORD에 빈값을 넣을 수 없습니다.
		  --> 
		<!--   <button onclick="check()">회원가입</button> -->
		</form>
		
</body>
</html>