$(function() {

/*옵션1->옵션2 change 이벤트*/
	//최종프로젝트에선 ajax로 바꿀 것
	$('.option1').change(
			function() {
				$('.option2').empty();
				$('.option2').append('<option>옵션2(지역별)</option>')

				check = $(this).val();

				if (check == '서울') {
					$('.option2').append(
							'<option value="그랜드하얏트 서울">그랜드하얏트 서울</option>')
				} else if (check == '부산') {
					$('.option2').append(
							'<option value="파라다이스 호텔">파라다이스 호텔</option>')
					$('.option2').append(
							'<option value="코모도 호텔">코모도 호텔</option>')
				} else if (check == "광주") {
					$('.option2').append(
							'<option value="라마다 프라자 호텔">라마다 프라자 호텔</option>')
					$('.option2').append(
							'<option value="홀리데이 인 광주">홀리데이 인 광주</option>')
				} else if (check == "대구") {
					$('.option2').append(
							'<option value="인터볼고 호텔">인터볼고 호텔</option>')
				} else if (check == "강원도") {
					$('.option2').append(
							'<option value="스카이베이 호텔">스카이베이 호텔</option>')
					$('.option2').append(
							'<option value="세인트존스 호텔">세인트존스 호텔</option>')
				} else if (check == "제주도") {
					$('.option2').append(
							'<option value="롯데 시티 호텔">롯데 시티 호텔</option>')
					$('.option2').append(
							'<option value="제주 신라 호텔">제주 신라 호텔</option>')
				}
			})
	    $('.r_no').hide();
		
		$('.list_table').click(function() {
				var r_no = parseInt($(this).find('.r_no').text());
				/*alert(typeof r_no);
				alert(r_no);*/
				
				location.href="review_detailAction.do?r_no="+r_no;
				
				
				})
		
/*본인 게시물 삭제 수정 버튼 이벤트*/
		$('.only_writer').hide();
		$(function(){
		
			var sessionId=$('.sessionId').val();
			/*alert(sessionId+"로그인 아이디");*/
			var board_id = $('#board_id').text();
			/*alert(board_id+"게시물 작성자 아이디")*/
			if (sessionId==board_id) {
				$('.only_writer').show();
			}
			
		})
		
		$(function() {
			var h_names = new Array($('#h_no').val());
			
			
		})
	

});
		
		