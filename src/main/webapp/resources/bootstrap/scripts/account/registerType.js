$(document).ready(function() {

	$('.join_divi span').click(function() {
		$buttonClicked = $(this);
		$command = $buttonClicked.find('a').html();
		
		if($command === "일반회원 가입하기") {
			$(".type_selector input#type").attr("value", "user");
			
		} else if($command === "기업회원 가입하기") {
			$(".type_selector input#type").attr("value", "hotel");
		}
		$(".type_selector").submit();
	});
});
