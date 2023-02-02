<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<script>
	var bidx = '${vo.bidx}'; //게시글 번호

	$('[name=commentInsertBtn]').click(function() { //댓글 등록 버튼 클릭시 
		var insertData = $('[name=commentInsertForm]').serialize(); //commentInsertForm의 내용을 가져옴
		commentInsert(insertData); //Insert 함수호출(아래)
	});

	//댓글 목록 
	function commentList() {
		$.ajax({
			url : '<%=request.getContextPath()%>/board/view/reply/list',
			type : 'get',
			data : {
			'bidx' : bidx
			},
			success : function(data) {
			var a = '';
			$.each(data,function(key, value) {
				a += '<div class="commentArea" style="border-bottom:1px solid darkgray; margin-bottom: 15px;">';
				a += '<div class="commentInfo'+value.ridx+'">'
						+ '댓글번호 : '
						+ value.ridx
						+ ' / 작성자 : '
						+ value.uidx;
				a += '<a onclick="commentUpdate('
						+ value.ridx + ',\''
						+ value.rContent
						+ '\');"> 수정 </a>';
				a += '<a onclick="commentDelete('
						+ value.ridx
						+ ');"> 삭제 </a> </div>';
				a += '<div class="commentContent'+value.ridx+'"> <p> 내용 : '
						+ value.rContent + '</p>';
				a += '</div></div>';
			});
		$(".commentList").html(a);
	}
});
	}
	//댓글 등록
	function commentInsert(insertData) {
		$.ajax({
			url : '<%=request.getContextPath()%>/board/view/reply/insert',
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
	function commentUpdate(ridx, rContent) {
		var a = '';

		a += '<div class="input-group">';
		a += '<input type="text" class="form-control" name="content_'+ridx+'" value="'+rContent+'"/>';
		a += '<span class="input-group-btn"><button class="btn btn-default" type="button" onclick="commentUpdateProc('
				+ ridx + ');">수정</button> </span>';
		a += '</div>';

		$('.commentContent' + ridx).html(a);

	}

	//댓글 수정
	function commentUpdateProc(ridx) {
		var updateContent = $('[name=rContent_' + ridx + ']').val();

		$.ajax({
			url : '/reply/update',
			type : 'post',
			data : {
				'rContent' : updateContent,
				'ridx' : ridx
			},
			success : function(data) {
				if (data == 1)
					commentList(bidx); //댓글 수정후 목록 출력 
			}
		});
	}

	//댓글 삭제 
	function commentDelete(ridx) {
		$.ajax({
			url : '/reply/delete' + ridx,
			type : 'post',
			success : function(data) {
				if (data == 1)
					commentList(ridx); //댓글 삭제후 목록 출력 
			}
		});
	}

	$(document).ready(function() {
		commentList(); //페이지 로딩시 댓글 목록 출력 
	});
</script>

