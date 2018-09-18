$(document).ready(function() {
	$('.login-cont div').click(function() {
		$(this).find('input').focus();
	});
	
	
	$("#btnToJoinEnd").click(function(event) {
		event.preventDefault();
		
		var $type = $(".login-cont>input:hidden").attr("value");
		var $joinForm = $("#joinMemberPc");
		if($type == null) {
			$joinForm.attr("action", "wrong_access").submit();
		}
		
		if($type == "user") {
			$("#joinMemberPc").attr("action", "user_detail").submit();
		} else {
			$("#joinMemberPc").attr("action", "hotel_detail").submit();
		}
	});
	
	
	$("#joinMemberPc_p .button").click(function(event) {
		event.preventDefault();

		$("#joinMemberPc_p").attr("action", "registration").submit();
		
	});

	$("#joinMemberPc_e .button").click(function(event) {
		event.preventDefault();
		
		$("#joinMemberPc_e").attr("action", "registration_hotel").submit();
		
	});
	
	
	
	$("form#loginUser button").click(function(event) {
		event.preventDefault();
		$("#loginUser").attr("action", "loggingin").submit();
	});
	
	
	$("form#updateUserDetail button").click(function(event) {
		event.preventDefault();
		$("form#updateUserDetail").attr("action", "modify_user").submit();
	});

	
	$("#updateAdminDetail button").click(function(event) {
		event.preventDefault();
		$("#updateAdminDetail").attr("action", "modify_hotel").submit();
	});
	
	
	$("#joinFieldset>div a").click(function(event) {
		event.preventDefault();
		location.href = "/register/findInfo";
	});
	
	
	$("#findLoginUser button").click(function(event) {
		event.preventDefault();
		$("#findLoginUser").attr("action", "findInfo").submit();
	});
	/** ********************validation check 시작******************* */
/*
 * //패턴 var idCheck = /^[a-zA-Z][a-zA-Z0-9]{6,14}$/; var passCheck =
 * /^[a-zA-Z0-9]{6,14}$/; var emailCheck = /^[a-zA-Z0-9]+@[a-z.]/; var telCheck =
 * /^01+[0-9]{7,9}$/; var nameCheck =
 * /^[가-힣]{2,4}|[a-zA-Z]{2,10}\s[a-zA-Z]{2,10}$/;
 * 
 * 
 * //메시지 var idMessage = "소문자로 시작하는 7~15 영문자나 숫자만 입력 가능합니다"; var passMessage =
 * "6~14 자의 영문자나 숫자만 입력 가능합니다."; var emailMessage = "형식에 맞는 이메일 주소를 입력해 주세요.";
 * var telMessage = "01로 시작하고 9~11 숫자만 입력이 가능합니다."; var nameMessage = "영문자나 한글만
 * 입력이 가능합니다."; var passEmptyMessage = "해당창을 입력해주시기 바랍니다." var
 * passConfirmMessage = "입력하신 비밀번호들이 일치하지 않습니다.";
 * 
 * 
 * $('form#loginUser button').click(function(event) { //로그인 정규식 검사 var $checkId =
 * $("input[name='id']"); var $checkPass = $("input[name='password']");
 * 
 * 
 * if(!idCheck.test($checkId.val())) { $checkId.val('').attr('placeholder',
 * idMessage).addClass('wrong_input').focus(); event.preventDefault(); return
 * false; } else if (!passCheck.test($checkPass.val())) {
 * $checkPass.val('').attr('placeholder',
 * passMessage).addClass('wrong_input').focus(); event.preventDefault(); return
 * false; } else { return true; } });
 * 
 * $('form#joinMemberPc .button').click(function() { var $checkEmail =
 * $("input[name='email']"); var $checkId = $("input[name = 'userId']"); var
 * $checkTel = $("input[name = 'tel']"); var $checkName = $("input.u_name"); var
 * $checkPass = $("input[name = 'password']"); var $checkPassConfirm =
 * $("input[name = 'passwdConfirm']");
 * 
 * 
 * if(!emailCheck.test($checkEmail.val())) {
 * $checkEmail.val('').attr('placeholder',
 * emailMessage).addClass('wrong_input').focus(); event.preventDefault(); return
 * false;
 *  } else if(!idCheck.test($checkId.val())) {
 * $checkId.val('').attr('placeholder',
 * idMessage).addClass('wrong_input').focus(); event.preventDefault(); return
 * false;
 *  } else if(!telCheck.test($checkTel.val())) {
 * $checkTel.val('').attr('placeholder',
 * telMessage).addClass('wrong_input').focus(); event.preventDefault(); return
 * false;
 *  } else if(!nameCheck.test($checkName.val())) {
 * $checkName.val('').attr('placeholder',
 * nameMessage).addClass('wrong_input').focus(); event.preventDefault(); return
 * false;
 *  } else if (!passCheck.test($checkPass.val())) {
 * $checkPass.val('').attr('placeholder',
 * passMessage).addClass('wrong_input').focus(); event.preventDefault(); return
 * false;
 *  } else if (($checkPassConfirm.val()) === "" ) {
 * $checkPassConfirm.val('').attr('placeholder',
 * passEmptyMessage).addClass('wrong_input').focus(); event.preventDefault();
 * return false;
 *  } else if ($checkPass.val() !== $checkPassConfirm.val()) {
 * $checkPass.val('').attr('placeholder',
 * passConfirmMessage).addClass('wrong_input').focus();
 * $checkPassConfirm.val(''); event.preventDefault(); return false; } else {
 * return true; } });
 */
	
	var $typeSelect = $("#type").attr("value");
	
	var idcheck_stat = false;
	var telcheck_stat = false;

	var $idSection = $("#joinMemberPc input[name='id']");
	var $telSection = $("#joinMemberPc input[name='tel']");
	
	$idSection.on('keyup',function() {
		var $idTyped = "";
			
		$idTyped += $(this).val();
		if($idTyped.length >= 7) {
			var data ={};
			data["id"] = $idTyped;
			data["type"] = $typeSelect;
			
			$.ajax({
				contentType: 'application/json',	
				type : 'post',
				url : '/register/checkId',
				dataType : 'text',
				data: JSON.stringify(data),
				success : function(result) {
					if(result == 'success' && idcheck_stat == false) {
						$(".idcheck_append").remove();
						$idSection.parent().after("<div class='idcheck_append'>사용 가능한 아이디입니다.</div>");
						idcheck_stat = true;
					} else if(result == 'fail') {
						$(".idcheck_append").remove();
						$idSection.parent().after("<div class='idcheck_append'>사용 불가능한 아이디입니다.</div>");
						idcheck_stat = false;
					}
				}
			});
		}
	}); 
	
	
	$telSection.on('keyup', function() {
		var $telTyped = "";
		
		$telTyped += $(this).val();
		if($telTyped.length >= 9) {
			var str = $telTyped.replace(0, "");
			
			var data ={};
			data["tel"] = str;
			data["type"] = $typeSelect;
			
			$.ajax({
				contentType: 'application/json',
				type : 'post',
				url : '/register/checkTel',
				dataType : 'text',
				data : JSON.stringify(data),
				success : function(result) {
					if(result == 'success' && telcheck_stat == false) {
						$(".telcheck_append").remove();
						$telSection.parent().after("<div class='telcheck_append'>사용 가능한 전화번호 입니다.</div>");
						telcheck_stat = true;
					} else if(result == 'fail') {
						$(".telcheck_append").remove();
						$telSection.parent().after("<div class='telcheck_append'>사용 할 수 없는 전화번호 입니다.</div>");
						telcheck_stat = false;
					}
				}
			});
		}
	});
});

