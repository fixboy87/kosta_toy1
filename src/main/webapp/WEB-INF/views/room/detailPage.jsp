<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="kr">

<head>
<title>Offers</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Destino project">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" type="text/css"
   href="../resources/bootstrap/styles/common/bootstrap4/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
   href="../resources/bootstrap/plugins/common/OwlCarousel2-2.2.1/owl.carousel.css">
<link rel="stylesheet" type="text/css"
   href="../resources/bootstrap/plugins/common/OwlCarousel2-2.2.1/owl.theme.default.css">
<link rel="stylesheet" type="text/css"
   href="../resources/bootstrap/plugins/common/OwlCarousel2-2.2.1/animate.css">
<link
   href="../resources/bootstrap/plugins/common/font-awesome-4.7.0/css/font-awesome.min.css"
   rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css"
   href="../resources/bootstrap/styles/common/main_styles.css">
<link rel="stylesheet" type="text/css"
   href="../resources/bootstrap/styles/common/responsive.css">
<link rel="stylesheet" type="text/css"
   href="../resources/bootstrap/styles/common/custom.css">
<link
   href="../resources/bootstrap/plugins/common/magnific-popup/magnific-popup.css"
   rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css"
   href="../resources/bootstrap/styles/common/offers_styles.css">
<!-- ok -->
<link rel="stylesheet" type="text/css"
   href="../resources/bootstrap/styles/common/offers_responsive.css">
<!-- ok -->
<script
   src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>

<!--레인지 슬라이더 -->
<link rel="stylesheet"
   href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script
   src="http:../resources/bootstrap/scripts/common/jquery-3.2.1.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<!-- 달력 -->
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet"
   href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<!-- custom JS -->
<script type="text/javascript"
   src="http:../resources/bootstrap/scripts/HY_Script/priceRang.js"></script>
<script type="text/javascript"
   src="http:../resources/bootstrap/scripts/HY_Script/SearchConditions.js"></script>
<script type="text/javascript"
   src="http:../resources/bootstrap/scripts/HW/detailPage.js"></script>

<!-- Custom Css -->
<link rel="stylesheet" type="text/css"
   href="http:../resources/bootstrap/styles/HY_Style/ListPage.css">
<link rel="stylesheet" type="text/css"
   href="../../resources/bootstrap/styles/HY_Style/detailPage.css">

<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<script
   src="https://cdnjs.cloudflare.com/ajax/libs/gsap/1.20.3/TweenMax.min.js"></script>

<script
   src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>
<link rel="stylesheet" type="text/css"
   href="../../resources/bootstrap/styles/syj_style/syj_contact.css">

<style type="text/css">
#rooms {
   display: block;
}

#reviews {
   display: none;
}
</style>

</head>
<body>

   <div class="super_container">
      <!-- Header -->
      <%@ include file="../sub_page/header_menu.jsp"%>
      <input type="hidden" id="uid" name="uid"
         val="<%=(String) session.getAttribute("id")%>" /> <input
         type="hidden" id="type" name="type"
         val="<%=(String) session.getAttribute("type")%>" /> <input
         type="hidden" id="name" name="name"
         val="<%=(String) session.getAttribute("name")%>" />
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
                     <button id="menu_search_submit" class="menu_search_submit"
                        type="submit">
                        <img src="images/search_2.png" alt="">
                     </button>
                  </form>
               </div>
               <ul class="menu_list menu_mm">
                  <li class="menu_item menu_mm"><a href="index.html">Home</a></li>
                  <li class="menu_item menu_mm"><a href="about.html">About
                        us</a></li>
                  <li class="menu_item menu_mm"><a href="#">Offers</a></li>
                  <li class="menu_item menu_mm"><a href="news.html">News</a></li>
                  <li class="menu_item menu_mm"><a href="contact.html">Contact</a></li>
               </ul>

               <!-- Menu Social -->

               <div class="menu_social_container menu_mm">
                  <ul class="menu_social menu_mm">
                     <li class="menu_social_item menu_mm"><a href="#"><i
                           class="fa fa-pinterest" aria-hidden="true"></i></a></li>
                     <li class="menu_social_item menu_mm"><a href="#"><i
                           class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                     <li class="menu_social_item menu_mm"><a href="#"><i
                           class="fa fa-instagram" aria-hidden="true"></i></a></li>
                     <li class="menu_social_item menu_mm"><a href="#"><i
                           class="fa fa-facebook" aria-hidden="true"></i></a></li>
                     <li class="menu_social_item menu_mm"><a href="#"><i
                           class="fa fa-twitter" aria-hidden="true"></i></a></li>
                  </ul>
               </div>

               <div class="menu_copyright menu_mm">Colorlib All rights
                  reserved</div>
            </div>



         </div>

      </div>
      <%-- <c:forEach var="slide" items="${slide}" begin="0" end="0">
                 <img src="../resources/images/pages/slideH/${slide.slide_pic_url}">
              </c:forEach> --%>
      <!-- Home -->
      <div class="home1">
         <div class="wrap">
            <div class="slide">
               <button type="button" class="prev">
                  <img src="../resources/images/pages/slideH/left.png" />
               </button>
               <ul>
                  <li><c:forEach var="slide" items="${slide}" begin="0" end="0">
                        <img id="imgSlide"
                           src="../resources/images/pages/slideH/${slide.slide_pic_url}">
                     </c:forEach></li>

                  <li><c:forEach var="slide" items="${slide}" begin="1" end="1">
                        <img id="imgSlide"
                           src="../resources/images/pages/slideH/${slide.slide_pic_url}">
                     </c:forEach></li>

                  <li><c:forEach var="slide" items="${slide}" begin="2" end="2">
                        <img id="imgSlide"
                           src="../resources/images/pages/slideH/${slide.slide_pic_url}">
                     </c:forEach></li>

                  <li><c:forEach var="slide" items="${slide}" begin="3" end="3">
                        <img id="imgSlide"
                           src="../resources/images/pages/slideH/${slide.slide_pic_url}">
                     </c:forEach></li>
               </ul>
               <button type="button" class="next">
                  <img src="../resources/images/pages/slideH/right.png" />
               </button>
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
                  <c:forEach var="listH" items="${detail}" begin="1" end="1">
                     <h2>${listH.h_name}</h2>
                  </c:forEach>
                  <div>take a look at these rooms</div>
               </div>
            </div>
         </div>
         <div id="myButtons">
            <button class="myButton" id="rooms_button">목록</button>
            <button class="myButton" id="review_button">후기</button>
         </div>

         <div class="row">
            <div class="col">

               <div class="items item_grid clearfix">
                  <!-- forEach -->
                  <div id="rooms">
                     <c:forEach var="listH" items="${detail}">
                        <!-- Item -->
                        <div class="item clearfix rating_5" style="margin-left: 20%">
                           <!-- 이미지 팝업 -->
                           <div class="item_image">
                              <img
                                 onclick="doImgPop('../resources/images/pages/HotelRoomImg/${listH.pic_room_url}')"
                                 src="../resources/images/pages/HotelRoomImg/${listH.pic_room_url}">
                           </div>


                           <div class="item_content">
                              <div class="item_price" style="font-size: 20px !important;">${listH.room_type}</div>
                              <div class="item_title"></div>
                              <ul>
                                 <li style="font-size: 20px !important;">${listH.room_price}만원</li>
                                 <li>1 nights</li>
                                 <li>11시 입실</li>

                              </ul>
                              <div style="margin-left: 50px;">
                                 <a
                                    href="/pay/bookingCheck?h_no=${listH.h_no}&room_type=${listH.room_type}"
                                    class="payMent" id="payMent">예약하기</a>
                              </div>
                              <div class="rating rating_5" style="display: none !important;">
                                 <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
                                    class="fa fa-star"></i> <i class="fa fa-star"></i> <i
                                    class="fa fa-star"></i>
                              </div>
                              <div class="item_text"></div>
                              <div class="item_more_link">
                                 <a href="#"></a>
                              </div>
                           </div>
                        </div>
                     </c:forEach>
                  </div>


                  <div class="item_grid clearfix" id="reviews">
                     <div class="items_reviews">
                        <div class="contact_form_container" id="list_container">
                           <header class="list">
                              <div id="button-div">
                              <button id="button-all">전체보기</button>
                                 <button id="button-photo" value="포토">
                                    포토<small class="photoCnt"></small>
                                 </button>
                                 <c:if test="${not empty uid}">
                                    <a class="review_button" href="/reviews/bookingList_check/${h_no}">후기 작성</a>
                                 </c:if>
                                 
                              </div>
                              <div  id="option2_select">
                              <select class="option">
                                 <option value="latest">최신순</option>
                                 <option value="grade">평점순</option>
                              </select>
                              </div>
                              

                           </header>

                           <div class="table_container">
                              <div id="review_container"></div>
                           </div>

                           <!-- 페이징 처리 부분 -->
                           <div class='text-center'>
                              <ul id="pagination"
                                 class="pagination pagination-sm no-margin ">
                              </ul>
                           </div>
                        </div>
                     </div>
                  </div>

               </div>







               <div>
                  <div id="sideimg"></div>
               </div>
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
         <%-- <%@include file="../syj_page/index.html"%> --%>

      </div>
   </div>
   </div>

   <!-- Footer -->
   <%@include file="../sub_page/footer.html"%>

   <script id="reviewTemplate" type="text/x-handlebars-template">
{{#each .}}    
                  <table class="list_table" width="800">
                     <tr>
                        <td rowspan="4" class="img_td" id="board_r_fname">
                           {{#if_img r_fname}}
                           {{/if_img}}
                        <td class="table_top">제목</td>
                        <td class="table_top"colspan="3" id="board_r_title">{{r_title}}</td>
                        <td class="table_top">작성자</td>
                        <td class="table_edge1" colspan="2" id="board_id">{{id}}</td>
                     </tr>
                     <tr>
                        <td>평점</td>
                        <td colspan="3" class="list_star" >
                        {{#if_grade r_grade}}
                        {{/if_grade}}
                        </td>
                        <td>등록일</td>
                        <td class="table_right" id="board_r_redate">
                         {{prettifyDate r_redate}}
                        </td>
                     </tr>
                     <tr class="table_bottom">
                        <td>호텔명</td>
                        <td id="board_h_name">{{h_name }}</td>
                        <td>숙박일수</td>
                        <td id="board_number_of_stay_days">{{number_of_stay_days }}</td>
                        <td>조회수</td>
                        <td colspan="2" class="table_right" id="board_r_hitcount">{{r_hitcount }}
                        <input type="hidden" id="board_r_no" value="{{r_no }}">
                        </td>
                     </tr>
                  </table>
{{/each}}
</script>
   <script type="text/javascript">
      var h_no = ${h_no};
      var reviewPage = 1;
      var photo = false;
      var sortTerms = $("option:selected").val();

      /* Date registerHelper */
      Handlebars.registerHelper("prettifyDate", function(timeValue) {
         var dateObj = new Date(timeValue);
         var year = dateObj.getFullYear();
         var month = dateObj.getMonth() + 1;
         var date = dateObj.getDate();
         return year + "/" + month + "/" + date;
      });

      /* Date registerHelper */
      Handlebars.registerHelper("if_grade", function(r_grade) {

         if (r_grade == 1) {
            return "<label>★</label>";
         } else if (r_grade == 2) {
            return "<label>★★</label>";
         } else if (r_grade == 3) {
            return "<label>★★★</label>";
         } else if (r_grade == 4) {
            return "<label>★★★★</label>";
         } else if (r_grade == 5) {
            return "<label>★★★★★</label>";
         }

      });

      /* img registerHelper */
      Handlebars.registerHelper("if_img", function(r_fname) {

         if (r_fname != null) {

            var str = "/resources/images/pages/review_img";
            var head = r_fname.substring(0, r_fname.indexOf("."));
            var pattern = r_fname.substring(r_fname.indexOf(".") + 1);
            var src = str + head + "_small." + pattern;
            /* alert(src);
            alert(r_fname); */
            return "<img src="+src+">";
         }
         return "<label>NO IMAGE</label> ";
      });

      /* List_Review  Print */
      var printData = function(reviewArr, target, templateObject) {
         var template = Handlebars.compile(templateObject.html());
         var html = template(reviewArr);
         $(".list_table").remove();
         target.after(html); /* 추가 */
      }

      /* List_Review Paging  */
      var printPaging = function(pageMaker, target) {
         var str = "";
         if (pageMaker.prev) {
            str += "<li><a href='" + (pageMaker.startPage - 1)
                  + "'> << </a></li>";
         }
         for (var i = pageMaker.startPage, len = pageMaker.endPage; i <= len; i++) {
            var strClass = pageMaker.cri.page == i ? 'class=active' : '';
            str += "<li "+strClass+"><a href='"+i+"'>" + i + "</a></li>";
         }
         if (pageMaker.next) {
            str += "<li><a href='" + (pageMaker.endPage + 1)
                  + "'> >> </a></li>";
         }
         target.html(str);
      };

      /* List_Review JSON  */
      function getPage(pageInfo) {
         $.getJSON(pageInfo, function(data) {
            printData(data.reviewList, $("#review_container"),
                  $("#reviewTemplate"));
            printPaging(data.pageMaker, $(".pagination"));
            $(".photoCnt").html(" [ " + data.photoCnt + " ] ");

         });
      };

      /* Detail_Review */
      $(".table_container").on("click", ".list_table", function(event) {
         var review = $(this);
         var r_no = review.find('#board_r_no').val();
         /* alert(r_no); */
         location.href = "/reviews/detailReview/" + r_no+"/"+h_no;
      });

      /* List Event */
      $("#review_button").click(function() {
         /* alert("리뷰버튼"); */
         $("#rooms").css("display", "none");
         $("#reviews").css("display", "block");
         /* alert(h_no); */
         getPage("/hotelReviews/" + h_no + "/1/" + photo + "/" + sortTerms);
      });
      $("#rooms_button").click(function() {/* 방 목록 버튼 */
         $("#rooms").css("display", "block");
         $("#reviews").css("display", "none");
      });

      /* Option1 - Only Photo */
      $("#button-div").on("click", "#button-photo", function(event) {
         photo = true;
         /* alert(photo);
         alert(h_no); */
         getPage("/hotelReviews/" + h_no + "/1/" + photo + "/" + sortTerms);
      })
      $("#button-all").click(function() {
         photo = false;
         getPage("/hotelReviews/" + h_no + "/1/" + photo + "/" + sortTerms);
      })

      /* Option2- Sort */
      $(".option").change(
            function(event) {
               /* alert("바뀜"); */
               sortTerms = $("option:selected").val();
               /* alert(sortTerms);
               alert(photo) */;
               getPage("/hotelReviews/" + h_no + "/1/"
                     + photo + "/" + sortTerms);
            })

      /* Review_List Paging */
      $(".pagination").on(
            "click",
            "li a",
            function(event) {
               event.preventDefault();
               reviewPage = $(this).attr("href");
               getPage("/hotelReviews/" + h_no + "/" + reviewPage + "/"
                     + photo + "/" + sortTerms);
            });
   </script>
   <!-- <script src="../../scripts/common/jquery-3.2.1.min.js"></script> -->
   <script
      src="http:../resources/bootstrap/styles/common/bootstrap4/popper.js"></script>
   <script
      src="http:../resources/bootstrap/styles/common/bootstrap4/bootstrap.min.js"></script>
   <script
      src="http:../resources/bootstrap/plugins/common/greensock/TweenMax.min.js"></script>
   <script
      src="http:../resources/bootstrap/plugins/common/greensock/TimelineMax.min.js"></script>
   <script
      src="http:../resources/bootstrap/plugins/common/scrollmagic/ScrollMagic.min.js"></script>
   <script
      src="http:../resources/bootstrap/plugins/common/greensock/animation.gsap.min.js"></script>
   <script
      src="http:../resources/bootstrap/plugins/common/greensock/ScrollToPlugin.min.js"></script>
   <script
      src="http:../resources/bootstrap/plugins/common/Isotope/isotope.pkgd.min.js"></script>
   <script
      src="http:../resources/bootstrap/plugins/common/easing/easing.js"></script>
   <script
      src="http:../resources/bootstrap/plugins/common/parallax-js-master/parallax.min.js"></script>
   <script
      src="http:../resources/bootstrap/scripts/common/offers_custom.js"></script>

   <script src="http:../resources/bootstrap/scripts/common/menuEffect.js"
      type="text/javascript"></script>
   <script src="http:../resources/bootstrap/scripts/common/custom.js"></script>
</body>
</html>