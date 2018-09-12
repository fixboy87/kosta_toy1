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
	
	
	$('.main_nav_item').click(function() {
		var $buttonPressed = $(this);
		var $buttonHtml = $(this).find('a').html();
		
		if($buttonHtml === "홈") {
			location.href = "titlePage.do";
		} else if($buttonHtml === "로그인") {
			location.href = "loginForm.do";
		} else if($buttonHtml === "회원가입") {
			location.href = "registerTypeForm.do";
		} else if($buttonHtml === "마이페이지") {
			location.href = "myPageAction.do";
		} else if($buttonHtml === "구매페이지") {
			location.href = "HotelListActionForm.do";
		} else if($buttonHtml === "로그아웃") {
			location.href = "logOutAction.do";
		}
		
	});
		
	$('.titleButton').click(function() {
		location.href = "HotelListActionForm.do";
	});
	
	
	//mypage 1:1 문의 버튼
	$('.myPage_button').click(function() {
		var $buttonPressed = $(this);
		var $buttonHtml = $(this).find('a').html();
		
		if($buttonHtml === "1:1문의") {
			location.href = "Insertenquire.do";
		} else if ($buttonHtml === "구매내역") {
			location.href= "#";
		} else if ($buttonHtml === "회원정보") {
			location.href = "myPageAction.do";
		} else if ($buttonHtml === "회원탈퇴") {
			location.href = "deregister.do";
		}
	});
	
	$('#update_user>div').click(function() {
		
		//유효성검사
		
		
	});
	
	$('.logo_image').click(function() {
		location.href = "titlePage.do"
	});
	
	$('div.logo').click(function() {
		location.href = "titlePage.do";
	});
	
	$('.admin_page_button').click(function() {
		var $buttonPressed = $(this);
		var $buttonHtml = $(this).find('a').html();
		if($buttonHtml === "1:1문의") {
			location.href= "GngListAction.do";
		} else if($buttonHtml === "세부관리") {
			location.href = "Management.do";
		} else if($buttonHtml === "기본정보") {
			location.href = "adminPage.do"
		} else if($buttonHtml === "세부정보") {
			location.href = "HotelDetailAction.do";
		} else if($buttonHtml === "회원탈퇴") {
			location.href = "adminDeregister.do";
		}
	})
});