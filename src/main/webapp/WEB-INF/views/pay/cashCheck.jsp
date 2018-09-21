
<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>

 

<script src="../resources/bootstrap/scripts/common/jquery-3.2.1.min.js"></script>

<link rel="stylesheet" type="text/css" href="../resources/bootstrap/styles/HY_Style/loading.css"> 

<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">

<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>

<script src="../resources/bootstrap/scripts/HY_Script/loading.js"></script>

<script src="../resources/bootstrap/scripts/HY_Script/cashCheck.js"></script>
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Great+Vibes" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic+Coding" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Open+Sans+Condensed:300" rel="stylesheet">


 

<style type="text/css">

 

.text-danger strong {

          color: #9f181c;

      }

      .receipt-main {

         background: #ffffff none repeat scroll 0 0;

         border-bottom: 12px solid #333333;

         border-top: 12px solid #9f181c;

         margin-top: 50px;

         margin-bottom: 50px;

         padding: 40px 30px !important;

         position: relative;

         box-shadow: 0 1px 21px #acacac;

         color: #333333;

         font-family: open sans;

      }

      .receipt-main p {

         color: #333333;

         font-family: open sans;

         line-height: 1.42857;

      }

      .receipt-footer h1 {

         font-size: 15px;

         font-weight: 400 !important;

         margin: 0 !important;

      }

      .receipt-main::after {

         background: #414143 none repeat scroll 0 0;

         content: "";

         height: 5px;

         left: 0;

         position: absolute;

         right: 0;

         top: -13px;

      }

      .receipt-main thead {

         background: #414143 none repeat scroll 0 0;

      }

      .receipt-main thead th {

         color:#fff;

      }

      .receipt-right h5 {

         font-size: 16px;

         font-weight: bold;

         margin: 0 0 7px 0;

      }

      .receipt-right p {

         font-size: 12px;

         margin: 0px;

      }

      .receipt-right p i {

         text-align: center;

         width: 18px;

      }

      .receipt-main td {

         padding: 9px 20px !important;

      }

      .receipt-main th {

         padding: 13px 20px !important;

      }

      .receipt-main td {

         font-size: 13px;

         font-weight: initial !important;

      }

      .receipt-main td p:last-child {

         margin: 0;

         padding: 0;

      }   

      .receipt-main td h2 {

         font-size: 20px;

         font-weight: 900;

         margin: 0;

         text-transform: uppercase;

      }

      .receipt-header-mid .receipt-left h1 {

         font-weight: 100;

         margin: 34px 0 0;

         text-align: right;

         text-transform: uppercase;

      }

      .receipt-header-mid {

         margin: 24px 0;

         overflow: hidden;

      }

      

      #container {

         background-color: #dcdcdc;

      }

#font11{
font-family: 'Nanum Gothic Coding', monospace;
font-size: 20px;
}
#fontN{
font-family: 'Open Sans Condensed', sans-serif;
font-size: 20px;
}


 

</style>

 

 

 

</head>

<body>

 

 

 

 

<br>

<br>

<center><h1 style="font-family: 'Nanum Gothic', sans-serif;">예약 확인</h1></center>

 

 

<div class="loadingloader" id="loadingloader">

    <img src="../resources/images/pages/HY_images/cat.gif" class="img-responsive center-block">

  <p class="text-center loadText">기달기달...</p>

</div>

 

 

 

<div class="container">
   
   <div class="row">

      

        <div class="receipt-main col-xs-10 col-sm-10 col-md-6 col-xs-offset-1 col-sm-offset-1 col-md-offset-3">

            <div class="row">
            <div class="receipt-left">

               <h1 style="font-family: 'Great Vibes', cursive; margin-left: 40px;">Receipt</h1>

            </div>
             <div class="receipt-header">

               <div class="aa">

               </div>

               

                  <div class="r123123" style="margin-left: 170px;">

                     <h3 style="font-family: 'Nanum Gothic', sans-serif;">${vo.h_name}</h3>

                     <h4 style="font-family: 'Nanum Gothic', sans-serif;">룸타입 : suite <i class="fa fa-phone"></i></h4>   
                     
                     <p id="fontN">호텔 전화  02-2994${vo.h_phonenum} <i class="fa fa-phone"></i></p>

                     <p id="font11"> ---------------------------- </p>

                     <p id="fontN">이용기간 ㅤ ${vo.number_of_stay_days} 박<i class="fa fa-envelope-o"></i></p>
                     
                     <p id="fontN">체크인ㅤ ㅤ 2018-09-22<i class="fa fa-location-arrow"></i></p>

                     <p id="fontN">체크 아웃ㅤ 2018-09-30<i class="fa fa-location-arrow"></i></p>

                     <p id="font11">예약자명 ㅤ구내균<i class="fa fa-location-arrow"></i></p>
   
                     <p id="fontN">휴대폰ㅤㅤ${vo.user_phonenumber}<i class="fa fa-location-arrow"></i></p>

                     <p id="font11"><i class="fa fa-location-arrow"></i></p>

                  </div>

               

            </div>

            </div>
        </div>    
         
                     
             
   </div>

</div>

 

</body>

</html>

 

 

 

 

 

