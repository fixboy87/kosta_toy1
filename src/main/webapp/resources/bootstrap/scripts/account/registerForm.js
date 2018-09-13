$(document).ready(function() {
	$('.login-cont div').click(function() {
		$(this).find('input').focus();
	});
	
	
	$("#btnToJoinEnd").click(function(event) {
		event.preventDefault();
		
		var $type = $(".login-cont>input:hidden").attr("value");
		
		alert($type);
		if($type == "user") {
			$("#joinMemberPc").attr("action", "user_detail").submit();
		} else {
			$("#joinMemberPc").attr("action", "hotel_detail").submit();
		}
	});
	
	
	
	
	/**********************validation check 시작********************/
/*	
	//패턴
	var idCheck = /^[a-zA-Z][a-zA-Z0-9]{6,14}$/;
	var passCheck = /^[a-zA-Z0-9]{6,14}$/;
	var emailCheck = /^[a-zA-Z0-9]+@[a-z.]/;
	var telCheck = /^01+[0-9]{7,9}$/;
	var nameCheck = /^[가-힣]{2,4}|[a-zA-Z]{2,10}\s[a-zA-Z]{2,10}$/;

	
	//메시지
	var idMessage = "소문자로 시작하는 7~15 영문자나 숫자만 입력 가능합니다";
	var passMessage = "6~14 자의 영문자나 숫자만 입력 가능합니다.";
	var emailMessage = "형식에 맞는 이메일 주소를 입력해 주세요.";
	var telMessage = "01로 시작하고 9~11 숫자만 입력이 가능합니다.";
	var nameMessage = "영문자나 한글만 입력이 가능합니다.";
	var passEmptyMessage = "해당창을 입력해주시기 바랍니다."
	var passConfirmMessage = "입력하신 비밀번호들이 일치하지 않습니다.";
	
	
	$('form#loginUser button').click(function(event) { //로그인 정규식 검사
		var $checkId = $("input[name='id']");
		var $checkPass = $("input[name='password']");
		
		
		if(!idCheck.test($checkId.val())) {
			$checkId.val('').attr('placeholder', idMessage).addClass('wrong_input').focus();
			event.preventDefault();
			return false;
		} else if (!passCheck.test($checkPass.val())) {
			$checkPass.val('').attr('placeholder', passMessage).addClass('wrong_input').focus();
			event.preventDefault();
			return false;
		} else {
			return true;
		}
	});

	$('form#joinMemberPc .button').click(function() {
		var $checkEmail = $("input[name='email']");
		var $checkId = $("input[name = 'userId']");
		var $checkTel = $("input[name = 'tel']");
		var $checkName = $("input.u_name");
		var $checkPass = $("input[name = 'password']");
		var $checkPassConfirm = $("input[name = 'passwdConfirm']");
		
		
		if(!emailCheck.test($checkEmail.val())) {
			$checkEmail.val('').attr('placeholder', emailMessage).addClass('wrong_input').focus();
			event.preventDefault();
			return false;
			
		} else if(!idCheck.test($checkId.val())) {
			$checkId.val('').attr('placeholder', idMessage).addClass('wrong_input').focus();
			event.preventDefault();
			return false;
			
		} else if(!telCheck.test($checkTel.val())) {
			$checkTel.val('').attr('placeholder', telMessage).addClass('wrong_input').focus();
			event.preventDefault();
			return false;
			
		} else if(!nameCheck.test($checkName.val())) {
			$checkName.val('').attr('placeholder', nameMessage).addClass('wrong_input').focus();
			event.preventDefault();
			return false;
			
		} else if (!passCheck.test($checkPass.val())) {
			$checkPass.val('').attr('placeholder', passMessage).addClass('wrong_input').focus();
			event.preventDefault();
			return false;
			
		} else if (($checkPassConfirm.val()) === "" ) {
			$checkPassConfirm.val('').attr('placeholder', passEmptyMessage).addClass('wrong_input').focus();
			event.preventDefault();
			return false;
			
		}  else if ($checkPass.val() !== $checkPassConfirm.val()) {
			$checkPass.val('').attr('placeholder', passConfirmMessage).addClass('wrong_input').focus();
			$checkPassConfirm.val('');
			event.preventDefault();
			return false;
		} else {
			return true;
		}
	});*/
	
	
	/*$('	#joinMemberPc_p .button').click(function() {
		alert(aaa);
		event.preventDefault();
		return false;
	})*/
});

