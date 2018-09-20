<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="kr">

<head>
<title>Offers</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Destino project">
<meta name="viewport" content="width=device-width, initial-scale=1">


<link rel="stylesheet" type="text/css" href="../resources/bootstrap/styles/common/bootstrap4/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../resources/bootstrap/plugins/common/OwlCarousel2-2.2.1/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="../resources/bootstrap/plugins/common/OwlCarousel2-2.2.1/owl.theme.default.css">
<link rel="stylesheet" type="text/css" href="../resources/bootstrap/plugins/common/OwlCarousel2-2.2.1/animate.css">
<link href="../resources/bootstrap/plugins/common/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="../resources/bootstrap/styles/common/main_styles.css">
<link rel="stylesheet" type="text/css" href="../resources/bootstrap/styles/common/responsive.css">
<link rel="stylesheet" type="text/css" href="../resources/bootstrap/styles/common/custom.css">
<link href="../resources/bootstrap/plugins/common/magnific-popup/magnific-popup.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="../resources/bootstrap/styles/common/offers_styles.css"><!-- ok -->
<link rel="stylesheet" type="text/css" href="../resources/bootstrap/styles/common/offers_responsive.css"><!-- ok -->
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>


<!--레인지 슬라이더 -->
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="../resources/bootstrap/scripts/common/jquery-3.2.1.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<!-- custom JS -->
<script type="text/javascript" src="../../resources/bootstrap/scripts/HY_Script/priceRang.js"></script>
<script type="text/javascript" src="../../resources/bootstrap/scripts/HY_Script/SearchConditions.js"></script>

<!-- 달력 -->
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>                    
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>                  

<!-- Custom Css -->
<link rel="stylesheet" type="text/css" href="../../resources/bootstrap/styles/HY_Style/ListPage.css">


</head>
<body>

<div class="super_container">
<!-- Header -->
<%@ include file="../sub_page/header_menu.jsp"%>
<input type="hidden" id="uid" name="uid" val="<%=(String)session.getAttribute("id")%>"/>
<input type="hidden" id="type" name="type" val="<%=(String)session.getAttribute("type")%>"/>
<input type="hidden" id="name" name="name" val="<%=(String)session.getAttribute("name")%>"/>

		<!-- Menu -->

	<div class="menu_container menu_mm">
		<!-- Menu Close Button -->
		<div class="menu_close_container">
			<div class="menu_close"></div>
		</div>

		<!-- Menu Items -->
		<div class="menu_inner menu_mm">
			<div class="menu menu_mm">
				<div class="menu_search_form_container">
					<form action="#" id="menu_search_form">
						<input type="search" class="menu_search_input menu_mm">
						<button id="menu_search_submit" class="menu_search_submit" type="submit"><img src="images/search_2.png" alt=""></button>
					</form>
				</div>
				<ul class="menu_list menu_mm">
					<li class="menu_item menu_mm"><a href="index.html">Home</a></li>
					<li class="menu_item menu_mm"><a href="about.html">About us</a></li>
					<li class="menu_item menu_mm"><a href="#">Offers</a></li>
					<li class="menu_item menu_mm"><a href="news.html">News</a></li>
					<li class="menu_item menu_mm"><a href="contact.html">Contact</a></li>
				</ul>

				<!-- Menu Social -->
				
				<div class="menu_social_container menu_mm">
					<ul class="menu_social menu_mm">
						<li class="menu_social_item menu_mm"><a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a></li>
						<li class="menu_social_item menu_mm"><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
						<li class="menu_social_item menu_mm"><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
						<li class="menu_social_item menu_mm"><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
						<li class="menu_social_item menu_mm"><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
					</ul>
				</div>

				<div class="menu_copyright menu_mm">Colorlib All rights reserved</div>
			</div>
			


		</div>

	</div>
	
	<!-- Home -->

	<div class="home">
		<!-- Image by https://unsplash.com/@peecho -->
		<div class="home_background parallax-window" data-parallax="scroll" data-image-src="../../resources/images/common/last.jpg" data-speed="0.8"></div>
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="home_content">
						<div class="home_content_inner">
							<div class="home_title"><!-- Offers --></div>
							<div class="home_breadcrumbs">
							</div>
							<!--파인드 -->
						 	<div class="find">
									<div class="find_background_container prlx_parent">
										<div class="find_background prlx"
											style="background-image: url()"></div>
									</div>
									<div class="find_background parallax-window" data-parallax="scroll" data-image-src="images/find.jpg" data-speed="0.8"></div>
									<div class="container">
										<div class="row">
											<div class="col-12">
												<div class="find_title text-center"><!-- F in the Adventure of a lifetime --></div>
											</div>
											<div class="col-12" id="searchBar" >
												<div class="find_form_container">
												
													<!-- 가격 폼 -->
													<form action="/search/listPage1#dirPic" id="find_form" method="get"
														class="find_form d-flex flex-md-row flex-column align-items-md-center align-items-start justify-content-md-between justify-content-start flex-wrap">

														<div class="find_item">
															<div style="color: white !important; background-color: #fe435c; width: 30px;">지역</div>
															<input type="text" class="destination find_input"
																required="required" placeholder="Keyword here" name="h_location" id="destinationC" autocomplete="off"/>
														</div>
														
														<div class="find_item">
															<div style="color: white !important; background-color: #fe435c; width: 48px">체크인</div>
															<input class="dropdown_item_select find_input" name="start_day"  autocomplete="off" type="text" id="firstday" size="9" placeholder="YYYY-MM-DD" >
																<script>
																	$("#firstday")
																		.datepicker();
																</script>
														</div>
														
														<div class="find_item">
															<div style="color: white !important; background-color: #fe435c; width: 60px;">체크 아웃</div>									
															<input class="dropdown_item_select find_input" name="end_day" autocomplete="off" type="text" id="secondday" size="9" placeholder="YYYY-MM-DD">
																<script>
																	$("#secondday")
																		.datepicker();
																</script>															
														</div>
														
														
														<div class="find_item">
															<div style="color: white !important; background-color: #fe435c; width: 48px;">최소 값</div>
															<input name="low_price" id="low_price"
																class="dropdown_item_select find_input" autocomplete="off">
															
														</div>
														<div class="find_item">
															<div style="color: white !important; background-color: #fe435c; width: 48px">최대 값</div>
															<input name="max_price" id="max_price"
																class="dropdown_item_select find_input" autocomplete="off">
															
														</div>
														<button class="button find_button">Find</button>
													
													</form>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!-- 가격 범위 -->
								<div id="price_range">
									<p>
										<label for="amount">Price range:</label> 
										<input type="text" id="amount" readonly	style="border: 0; color: #f6931f; font-weight: bold;">
									</p>
									<div id="slider-range" style="width: 400px; background-color: white; " ></div>
								</div>
								<!-- 달력 -->
								
								
							</div>
					</div>
				</div>
			</div>
		</div>		
	</div>

	<!-- Find Form -->


	<!-- Offers -->

	<div class="offers">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="section_title text-center">
						<h2>Top destinations in Europe</h2>
						<div>take a look at these offers</div>
					</div>
				</div>
			</div>
			<div class="row filtering_row">
				<div class="col">
				<!-- 수정해야지 -->
					<div class="sorting_group_1" style="float: left; display: inline; ">
						<form action="HotelSortLocationAction.do#dirPic">
							<select id="select_box" name="hotelSelect">
								<option value="제주">제주</option>									
								<option value="부산">부산</option>									
								<option value="강원도">강원도</option>									
								<option value="서울">서울</option>									
								<option value="대구">대구</option>									
								<option value="광주">광주</option>																	
							</select>
							<input type="submit" value="Find" style="background:#fe435c; color: white; height: 45px;width: 75px;"/>
						</form>
					</div>
					
					<div class="sorting_group_2 clearfix">
						<div class="sorting_icons clearfix">
							<div class="detail_view"><i class="fa fa-bars" aria-hidden="true"></i></div>
							<div class="box_view"><i class="fa fa-th-large" aria-hidden="true"></i></div>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col">
					
					<div class="items item_grid clearfix" id="scrollLocation">
					<!-- forEach -->
					<c:forEach var="listH" items="${list}"> 
						<!-- Item -->
						<div class="item clearfix rating_5" id="listToChange">
							<div class="item_image"><a href="/room/detailPage?h_no=${listH.h_no}"><img src="../../resources/images/pages/HY_images/${listH.pic_url}" alt=""></a></div>
							<div class="item_content">
								<div class="item_price">${listH.h_location}</div>
								<div class="item_title">${listH.h_name }</div>
								<div class="scrolling" data-bno="${listH.h_no }" style="display: none;">${listH.h_no }</div>
								<ul>
									<li>${listH.price}만원</li>
									<li>1 nights</li>
									<li>3 star hotel</li>
								</ul>
								<div class="item_text">${listH.h_info}</div>
								<div class="item_more_link">Read More</div>
							</div>
						</div>
					</c:forEach> 
					
					</div>
<script>

var lastScrollTop = 0;
var easeEffect = 'easeInQuint';
var urlHP = this.pic_url;
 
$(window).scroll(function(){
     	
    var currentScrollTop = $(window).scrollTop();
 	
    if( currentScrollTop - lastScrollTop > 0 ){
        console.log("down-scroll");         
        console.log("W: " + $(window).scrollTop())//이값 컴퓨터 마다 다르니 고쳐 줘야함
        console.log("D: " + ($(document).height() - $(window).height()))
        if ($(window).scrollTop()+250 >= ($(document).height() - $(window).height()) ){ 
            var lasth_no = $(".scrolling:last").attr("data-bno");
            $.ajax({
                type : 'post', 
                url : '/search/listPage',
                headers : {
                    "Content-Type" : "application/json",
                    "X-HTTP-Method-Override" : "POST"
                },
                dataType : 'json', 
                data : JSON.stringify({
                    h_no : lasth_no
                }),
                success : function(data){
                    var str = "";             
                    if(data != ""){                        
                        $(data).each(                     
                            function(){
                            	console.log(this);
                            	console.log("asdasdfslyiabhfmwrg");
                            	
                            	str +="<div class=" + "item clearfix rating_5" +"id=" + "listToChange"+">"    
                            		+"<div class=" + "item_image"+">"+"<img src='../../resources/images/pages/HY_images/lotte.png'" + ">" + "</div>"
                            		+"<div class=" + "item_content"+">"
                            		+"<div class=" + "item_price" + ">" + this.h_location + "</div>"
                            		+"<div class=" + "item_title" + ">" + this.h_name + "</div>"
                            		+"<div class=" + "scrolling" + "style="+ "display:none;" +  "data-bno=" + this.h_no  + ">" + "</div>"
                            		+"<ul>"
                            		+"<li>" + this.price + "만원 </li>"
                            		+"<li>1 nights</li>"
                            		+"<li>3 star hotel</li>"
                            		+"</ul>"
                            		+"<div class=" +"item_text" +">" + this.h_info + "</div>"                            		
                            		+"</div>"
                            		+"</div>"
                            		+"<div class=" + "item_more_link" + ">" + "Read More" +"</div>"
                            		
                            	
                        });            
                        
                        $("#scrollLocation").after(str).trigger("create");
                    }
                   
                    else{ 
                        alert("더 불러올 데이터가 없습니다.");
                    }
     
                }
            });
            var position = $(".listToChange:first").offset();             
           
            $('html,body').stop().animate({scrollTop : position }, 600, easeEffect);
 
        } 
        
    }    
});

</script>

					
				</div>
			</div>
			<div class="row">
				<div class="col">
					<div class="pages">
						<ul class="pages_list">
							<li class="page active"><a href="#">01.</a></li>
							<li class="page"><a href="#">02.</a></li>
							<li class="page"><a href="#">03.</a></li>
							<li class="page"><a href="#">04.</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>


<!-- Footer -->

<!-- <script src="../../scripts/common/jquery-3.2.1.min.js"></script> -->
<script src="../resources/bootstrap/styles/common/bootstrap4/popper.js"></script>
<script src="../resources/bootstrap/styles/common/bootstrap4/bootstrap.min.js"></script>
<script src="../resources/bootstrap/plugins/common/greensock/TweenMax.min.js"></script>
<script src="../resources/bootstrap/plugins/common/greensock/TimelineMax.min.js"></script>
<script src="../resources/bootstrap/plugins/common/scrollmagic/ScrollMagic.min.js"></script>
<script src="../resources/bootstrap/plugins/common/greensock/animation.gsap.min.js"></script>
<script src="../resources/bootstrap/plugins/common/greensock/ScrollToPlugin.min.js"></script>
<script src="../resources/bootstrap/plugins/common/Isotope/isotope.pkgd.min.js"></script>
<script src="../resources/bootstrap/plugins/common/easing/easing.js"></script>
<script src="../resources/bootstrap/plugins/common/parallax-js-master/parallax.min.js"></script>
<script src="../resources/bootstrap/scripts/common/offers_custom.js"></script>
<!--  메뉴이펙트 스크립트 -->
<script src="../resources/bootstrap/scripts/common/menuEffect.js" type="text/javascript"></script>
<script src="../resources/bootstrap/scripts/common/custom.js"></script>
</body>
</html>