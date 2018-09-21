/* JS Document */

/******************************

[Table of Contents]

1. Vars and Inits
2. Set Header
3. Initialize Hamburger
4. Init Special Slider
5. Init Video
6. Init Search


******************************/

$(document).ready(function()
{
	"use strict";

	/* 

	1. Vars and Inits

	*/

	var header = $('.header');
	var hamb = $('.hamburger');
	var hambActive = false;
	var menuActive = false;

	setHeader();

	$(window).on('resize', function()
	{
		setHeader();
	});

	$(document).on('scroll', function()
	{
		setHeader();
	});

	initHamburger();
	initSpecialSlider();
	initSearch();


	/* 

	2. Set Header

	*/

	function setHeader()
	{
		if(window.innerWidth < 992)
		{
			if($(window).scrollTop() > 100)
			{
				header.addClass('scrolled');
			}
			else
			{
				header.removeClass('scrolled');
			}
		}
		else
		{
			if($(window).scrollTop() > 100)
			{
				header.addClass('scrolled');
			}
			else
			{
				header.removeClass('scrolled');
			}
		}
		// if(window.innerWidth > 991 && menuActive)
		// {
		// 	closeMenu();
		// }
	}

	/* 

	3. Initialize Hamburger

	*/

	function initHamburger()
	{
		if($('.hamburger').length)
		{
			hamb.on('click', function(event)
			{
				event.stopPropagation();

				if(!menuActive)
				{
					openMenu();
					
					$(document).one('click', function cls(e)
					{
						if($(e.target).hasClass('menu_mm'))
						{
							$(document).one('click', cls);
						}
						else
						{
							closeMenu();
						}
					});
				}
				else
				{
					$('.menu_container').removeClass('active');
					menuActive = false;
				}
			});
		}
	}

	function openMenu()
	{
		var fs = $('.menu_container');
		fs.addClass('active');
		hambActive = true;
		menuActive = true;
	}

	function closeMenu()
	{
		var fs = $('.menu_container');
		fs.removeClass('active');
		hambActive = false;
		menuActive = false;
	}

	/* 

	4. Set Header

	*/

	function initSpecialSlider()
	{
		if($('.special_slider').length)
		{
			var specialSlider = $('.special_slider');
			specialSlider.owlCarousel(
			{
				loop:true,
				autoplay:false,
				center:true,
				stagePadding:190,
				margin:5,
				nav:false,
				dots:false,
				smartSpeed:700,
				responsive:
				{
					0:{items:1,margin:5,stagePadding:0},
					992:{items:2,margin:5,stagePadding:130},
					1280:{items:3,margin:5,stagePadding:190}
				}
			});
		}

		if($('.special_slider_nav').length)
		{
			var next = $('.special_slider_nav');
			next.on('click', function()
			{
				specialSlider.trigger('next.owl.carousel');
			});
		}
	}



	
	function initSearch()
	{
		if($('.search').length && rightDate == true)
		{
			var search = $('.search');
			search.on('click', function(e)
			{
				var target = $(e.target);
				if(!target.hasClass('ctrl_class')) {
					$(this).toggleClass('active');
				}
			});
		}
	}
	
	var rightDate = false;
	var $arrDate = new Date;
	var $depDate = new Date;
	
	$('.arrival').datepicker('setDate', 'today');
	$('.arrival').datepicker({
		minDate: 0,
		maxDate: "6M",
		
		onClose: function() {
			$arrDate = $('.arrival').datepicker('getDate');
			
			$('.departure').datepicker('setDate', $arrDate);
			
			setTimeout(function() {
				$('.departure').focus();
			}, 100);
		}
	});
	
	$('.departure').datepicker({
		minDate: "0d",
		onClose: function() {
			$depDate = $('.departure').datepicker('getDate');
			if($depDate < $arrDate) {
				alert("잘못된 날짜를 선택하셨습니다.");
				$depDate = $arrDate;
				rightDate = false;
			} else {
				rightDate = true;
			}
		}
	});
	$('.main_nav_item').hover(function() {
		$('.main_nav_list>li.active').removeClass("active");
		$(this).addClass("active");
	})
	
	
	//헤더 네비게이션
	$('.main_nav_item').click(function(event) {
		event.preventDefault();
		var $buttonPressed = $(this);
		var $buttonHtml = $(this).find('a').html();
		
		if($buttonHtml === "홈") {
			location.href = "/";
		} else if($buttonHtml === "로그인") {
			location.href = "/register/login";
		} else if($buttonHtml === "회원가입") {
			location.href = "/register/type";
		} else if($buttonHtml === "마이페이지") {
			location.href = "/register/myPage";
		} else if($buttonHtml === "구매페이지") {
			location.href = "/order/pay";
		} else if($buttonHtml === "로그아웃") {
			location.href = "/register/logout";
		}
		
	});
		
	$('.titleButton').click(function(event) {
		event.preventDefault();
		location.href = "search/listPage";
	});
	
	
	//mypage 1:1 문의 버튼
	$('.myPage_button').click(function(event) {
		event.preventDefault();
		var $buttonPressed = $(this);
		var $buttonHtml = $(this).find('a').html();
		
		if($buttonHtml === "1:1문의") {
			location.href = "/enquire/register";
		} else if ($buttonHtml === "구매내역") {
			location.href= "#";
		} else if ($buttonHtml === "회원정보") {
			location.href = "myPageAction.do";
		} else if ($buttonHtml === "회원탈퇴") {
			deregister();
		}
	});
	
	$('#update_user>div').click(function() {
		
		//유효성검사
		
		
	});
	
	
	// 헤더 이미지 클릭시의 네비게이션
	$('.logo_image').click(function() {
		location.href = "/"
	});
	
	$('div.logo').click(function() {
		location.href = "/";
	});
	
	
	// 관리자 페이지 네비게이션
	$('.admin_page_button').click(function(event) {
		event.preventDefault();
		var $buttonPressed = $(this);
		var $buttonHtml = $(this).find('a').html();
		if($buttonHtml === "1:1문의") {
			location.href= "/enquire/list";
		} else if($buttonHtml === "세부관리") {
			location.href = "/managing/summary";
		} else if($buttonHtml === "기본정보") {
			location.href = "/register/myPage"
		} else if($buttonHtml === "세부정보") {
			location.href = "/manager/roomPageGo";
		} else if($buttonHtml === "회원탈퇴") {
			deregister();
		}
	});
	
	
	// 메시지 호출 관련
	var $titleMessage = $("#title_message").attr("value");
	
	if($titleMessage == "register_wrong_access") {
		alert("허가되지 않은 접근방식입니다!!!\n정상적인 방식으로 접근해주세요.");
	} else if($titleMessage == "register_success") {
		alert("회원가입 성공!!!\n다시 재 로그인 해주세요.");
	} else if($titleMessage == "login_success") {
		alert("로그인 성공!!!");
	} else if($titleMessage == "logout_success") {
		alert("로그아웃 성공!!!");
	} else if($titleMessage == "not_working") {
		alert("[시스템 에러!!!]");
	} else if($titleMessage == "update_success") {
		alert("정보 수정 성공!!!");
	} else if($titleMessage == "id_password_found") {
		alert("로그인 후에 마이페이지에서 비밀번호를 변경해 주세요");
	} else if($titleMessage == "deregister_successful") {
		alert("회원정보가 삭제되었습니다. 감사합니다.");
	} else if($titleMessage == "login_fail") {
		alert("일치하는 회원 정보가 없습니다.");
	}
	
	
	
	// 타이틀 화면 환영인사
	var $sessionType = $("#session_type").attr("value");
	var $sessionName = $("#session_name").attr("value");
	
	if($sessionType == null) {
		$sessionType = "null"
	}
	if($sessionType != "null") {
		var greetings = "";
		greetings = $sessionName+"님 환영합니다!!"
		
		$(".find_title").html(greetings);
	}
	
	function deregister() {
		var confirm = prompt("정말로 탈퇴하시겠습니까?\n고객님의 아이디를 적어주세요.", "아이디");
		
		if(confirm != null) {
			if(confirm == $("#session_id").attr("value")) {
				if($sessionType == "user") {
					$("form#updateUserDetail").attr("action", "delete_user").submit();
				} else {
					$("#updateAdminDetail").attr("action", "delete_user").submit();
				}
			}
		}
	}
	
});