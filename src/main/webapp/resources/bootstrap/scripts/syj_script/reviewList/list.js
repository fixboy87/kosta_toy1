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
		
	
/*본인 게시물 삭제 수정 버튼 이벤트*/
/*		$('.only_writer').hide();
		$(function(){
		
			var sessionId=$('.sessionId').val();
			alert(sessionId+"로그인 아이디");
			var board_id = $('#board_id').text();
			alert(board_id+"게시물 작성자 아이디")
			if (sessionId==board_id) {
				$('.only_writer').show();
			}
			
		})*/
		
		$(function() {
			var h_names = new Array($('#h_no').val());
		})
		
		$("#review_button").click(function() {/* 리뷰탭 버튼 */
			$("#rooms").css("display", "none");
			$("#reviews").css("display", "block");
			
		});
		$("#rooms_button").click(function() {/* 방 목록 버튼 */
			$("#rooms").css("display", "block");
			$("#reviews").css("display", "none");
		});
		
		$("#button-photo").click(function() {/* 포토만 버튼 */
			self.location = "/review/review_list"
				/* + '${pageMaker.makeQuery(1)}' */
				+ "searchType="
				+ $("select option:selected").val()
				+ "&keyword=" + $('#keywordInput').val();

		})
		
		
		
		
		$(".table_container").on("click", ".list_table", function(event) {
			//alert(this.nodeName);
			var review = $(this);
			$('#r_title').html(review.find('#board_r_title').text());
			$('#h_name').html(review.find("#board_h_name").text());
			$('#number_of_stay_days').html(review.find('#board_number_of_stay_days').text()+"일");
			$('#id').html(review.find('#board_id').text());
			$('#r_redate').html(review.find('#board_r_redate').text());
			$('#r_content').html(review.find('#board_r_content').val());
			var r_grade =review.find("#board_r_grade").val();
			switch (r_grade) {
			case "1":
				$('#r_grade').html("★");
				break;
			case "2":
				$('#r_grade').html("★★");
				break;
			case "3":
				$('#r_grade').html("★★★");
				break;
			case "4":
				$('#r_grade').html("★★★★");
				break;
			case "5":
				$('#r_grade').html("★★★★★");
				break;

			default:
				break;
			}
			var r_no = review.find("#board_r_no").val();
			
			$(".btn-board_update").click(function(event) {
				location.href="reveiw_update?r_no="+r_no;
			});
			$(".btn-board_delete").click(function(event) {
				location.href="review_delete?r_no="+r_no;
			});
			
		});	
		

});
		
		