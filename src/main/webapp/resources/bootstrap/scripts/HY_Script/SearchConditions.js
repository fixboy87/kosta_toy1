$(function() {
	$('#destinationC').on("blur", function() {
		var str = $(this).val();
		var arr = new Array('부산', '광주', '대구', '강원도', '서울', '제주');

		var index = 0;
		index = arr.indexOf(str);

		if (index < 0) {
			alert("선택한 지역은 호텔이 없습니다.");
		}

		/* $.each(arr, function(i, item){
			if(item == str)
		}) */

		/* if(str != '부산' || str !='광주' || str !='대구' || str !='강원도' || str !='서울' || str!='제주' ){
			alert('선택한 지역은 호텔이 없습니다.')
		} */
	});
});