<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="edu.project.vo.UserVo" %>

<%
//세션에서 로그인 정보를 받아오고
	UserVo login = (UserVo)session.getAttribute("login");
	String login_name = " ";
// 세션에 로그인 정보가 있으면, login_name에 login.getName을 넣는다
	if( login != null){
		login_name = login.getName();
	}




%>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<script>
	var tidx = '${vo.tidx}'; //게시글 번호
	var login_name = '<%= login_name %>';
	
	$('[name=commentInsertBtn]').click(function() { //댓글 등록 버튼 클릭시 
		var insertData = $('[name=commentInsertForm]').serialize(); //commentInsertForm의 내용을 가져옴
		commentInsert(insertData); //Insert 함수호출(아래)
	});

	//댓글 목록 
	function commentList() {
		$.ajax({
			url : '<%= request.getContextPath() %>/together/view/reply/list',
			type : 'get',
			data : {
			'tidx' : tidx
			},
			success : function(data) {
			var a = '';
			var list_form = "";
			$.each(data,function(key, value) {
				console.log('writer : ' + value.writer);
				console.log('tContent : ' + value.trContent);
				console.log('tridx : ' + value.tridx);
// 				list_form += `<div class="commentArea" style="border-bottom:1px solid darkgray; margin-bottom: 15px;">
// 	<div class="commentInfo${value.ridx}">  작성자 : ${value.writer}
// 	</div>
// 	<div class="commentContent${value.ridx}"> <p> 내용 : ${value.rContent} </p>
// 		<a onclick="commentUpdate(${value.ridx},'${value.rContent}');">수정 </a>
// 		<a onclick="commentDelete(${value.ridx});">삭제</a>
// 	</div>
// </div>`;
				console.log(list_form);
				
				list_form += '<div class="commentArea" style="border-bottom:1px solid darkgray; margin-bottom: 15px;">';
				list_form += '<div class="commentInfo' + value.tridx + '">' + '  작성자 : ' + value.writer;
				list_form += '</div>';
				list_form += '<div class="commentContent' + value.tridx + '"> <p> 내용 : ' + value.trContent + '</p>'
				if ( login_name == value.writer )
				{
					list_form += '<a onclick="commentUpdate(' + value.tridx + ',\'' + value.trContent + '\');"> 수정 </a>';
					list_form += '<a onclick="commentDelete(' + value.tridx + ');"> 삭제 </a>';
				}
				list_form += '</div></div>';
			});
		$(".commentList").html(list_form);
	}
});
	}
	//댓글 등록
	function commentInsert(insertData) {
		$.ajax({
			url : '<%=request.getContextPath()%>/together/view/reply/insert',
			type : 'post',
			data : insertData,
			success : function(data) {
				if (data == 1) {
					commentList(); //댓글 작성 후 댓글 목록 reload
					$('[name=rContent]').val('');
				}
			}
		});
	}

	//댓글 수정 - 댓글 내용 출력을 input 폼으로 변경 
	function commentUpdate(tridx, trContent) {
		var a = '';

		a += '<div class="input-group">';
		a += '<input type="text" class="form-control" name="trContent_'+tridx+'" value="'+trContent+'"/>';
		a += '<span class="input-group-btn"><button class="btn btn-default" type="button" onclick="commentUpdateProc('
				+ tridx + ');">수정</button> </span>';
		a += '</div>';

		$('.commentContent' + tridx).html(a);

	}

	//댓글 수정
	function commentUpdateProc(tridx) {
		var updateContent = $('[name=rContent_' + tridx + ']').val();

		$.ajax({
			url : '<%=request.getContextPath()%>/together/view/reply/update',
			type : 'post',
			data : {
				'trContent' : updateContent,
				'tridx' : tridx
			},
			success : function(data) {
				if (data == 1)
					commentList(tidx); //댓글 수정후 목록 출력 
			}
		});
	}

	//댓글 삭제 
	function commentDelete(tridx) {
		$.ajax({
			url : '<%=request.getContextPath()%>/together/view/reply/delete' + tridx,
			type : 'post',
			success : function(data) {
				if (data == 1)
					commentList(tidx); //댓글 삭제후 목록 출력 
			}
		});
	}

	$(document).ready(function() {
		commentList(); //페이지 로딩시 댓글 목록 출력 
	});
</script>

