
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Destino project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css"
	href="../resources/bootstrap/styles/common/bootstrap4/bootstrap.min.css">
<link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css"
	href="../resources/bootstrap/styles/gng_style/gng_contact.css">
<link rel="stylesheet" type="text/css"
	href="../resources/bootstrap/styles/gng_style/gng_main.css">
<script src="../resources/bootstrap/scripts/common/jquery-3.2.1.min.js"></script>
<script src="../resources/bootstrap/styles/common/bootstrap4/popper.js"></script>
<script
	src="../resources/bootstrap/styles/common/bootstrap4/bootstrap.min.js"></script>
<script
	src="../resources/bootstrap/plugins/common/greensock/TweenMax.min.js"></script>
<script
	src="../resources/bootstrap/plugins/common//greensock/TimelineMax.min.js"></script>
<script
	src="../resources/bootstrap/plugins/common//scrollmagic/ScrollMagic.min.js"></script>
<script
	src="../resources/bootstrap/plugins/common//greensock/animation.gsap.min.js"></script>
<script
	src="../resources/bootstrap/plugins/common//greensock/ScrollToPlugin.min.js"></script>
<script src="../resources/bootstrap/plugins/common//easing/easing.js"></script>
<script
	src="../resources/bootstrap/plugins/common//parallax-js-master/parallax.min.js"></script>
<script src="../resources/bootstrap/scripts/common/contact_custom.js"></script>

<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>


<link
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet"
	integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN"
	crossorigin="anonymous">

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
	integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
	integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
	crossorigin="anonymous"></script>

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>

<link
  href='http://fonts.googleapis.com/css?family=Englebert|Open+Sans:400,600,700'
  rel='stylesheet' type='text/css' />
<link href="../resources/bootstrap/styles/HY_Style/payment.css"
  rel="stylesheet" type="text/css" />
<script src="../resources/bootstrap/scripts/HY_Script/step.js"></script>
<script src="../resources/bootstrap/scripts/HY_Script/payment.js"></script>

<style type="text/css">
.replyBody{
width: 70%;
margin-left: 15%;
margin-top: 3%;
}

.replyAddBody{

width: 70%;
margin-left: 15%;
margin-top: 1%;
}

.timeline{
height 10%;
width: 70%;
margin-left: 15%;
margin-top: 1%;
}

#replyAddBtn{
margin-left: 1720%;

}

.card-footer{
text-align: right;
}

</style>


</head>
<body>
<div id="header" class="container">
    <div id="logo">
      <h1>
        <a href="http://localhost:8081"><img src="../resources/images/common/logo.png"
          height="40" /> L I M E </a>
      </h1>

    </div>

    <div id="menu">
      <ul>
        <li><a href="http://localhost:8081" accesskey="1" title="">홈</a></li>
        <li><a href="#" accesskey="2" title="">예약내역</a></li>
        <li><a href="#" accesskey="3" title="">로그아웃</a></li>

      </ul>
    </div>
  </div>

 <div class="replyBody">
                    <div class="card-header">
                        <div class="d-flex justify-content-between align-items-center">
                            <div class="d-flex justify-content-between align-items-center">
                                <div class="mr-2">
                                   
                                </div>
                                <div class="ml-2">
                                    <div class="h5 m-0"><%=(String)session.getAttribute("uid")%></div>
                                    
                                </div>
                            </div>
                           </div>
                           </div>
                    <div class="card-body">
                        <div class="text-muted h7 mb-2"> <i class="eseq"></i>${board.e_seq}</div>
                        <a class="card-link" href="#">
                            <h5 class="card-title">${board.e_title}</h5>
                        </a>

                        <p class="card-text">
                            ${board.e_contents}
                        </p>
                    </div>

                     <!-- 페이징 히든 값으로 넣기 -->
                     
	<form role="form" action="modify" method="post">
		<input type="hidden" name="e_seq" value="${board.e_seq}"> <input
			type='hidden' name='page' value="${cri.page}"> <input
			type='hidden' name='perPageNum' value="${cri.perPageNum}"> <input
			type='hidden' name='searchType' value="${cri.searchType}"> <input
			type='hidden' name='keyword' value="${cri.keyword}">
    </form>
    
		<div class="card-footer">
			<button type="submit" class="btn btn-warning" id="modifyBtn">수정</button>
			<button type="submit" class="btn btn-danger" id="removeBtn">삭제</button>
		    <button type="submit" class="btn btn-primary" id="goListBtn">GOLIST</button>
			
		</div>
</div>
	

	<script>
	
               
	             /* 문의 수정 삭제 목록 */
		$(document).ready(function() {
			var formObj = $("form[role='form']");
			var seq = ${board.e_seq}
			;

			$("#modifyBtn").on("click", function() {
				formObj.attr("action", "/enquire/modify");
				formObj.attr("method", "get");
				formObj.submit();
			});

			$("#goListBtn ").on("click", function() {
				formObj.attr("method", "get");
				formObj.attr("action", "/enquire/list");
				formObj.submit();
			});

			$("#removeBtn").on("click", function() {
				formObj.attr("action", "/enquire/remove");
				formObj.submit();
			});
		})
	</script>

   
             <!-- 댓글목록 붙이는 곳  -->
      <section class="content">
		<!-- 댓글 목록 페이징 -->
		<ul class="timeline">

			<li class="time-label" id="repliesDiv">
			<span class="bg-green"></span></li>
		</ul>

	</section>
	
	<!-- Modal -->
<div id="modifyModal" class="modal modal-primary fade" role="dialog">
  <div class="modal-dialog">
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        
        <h4 class="modal-title"></h4>
      </div>
      <div class="modal-body" data-r_seq>
        <textarea  class="form-control" id="replytext" rows="5"></textarea>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-info" id="replyModBtn">수정</button>
        <!-- <button type="button" class="btn btn-danger" id="replyDelBtn">삭제</button> -->
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>   
	
	                 <!-- 댓글 등록 페이지 -->

	<div class="replyAddBody">
		<div class="tab-content" id="myTabContent">
			<div class="tab-pane fade show active" id="posts" role="tabpanel"
				aria-labelledby="posts-tab">
				<div class="form-group">
					<label class="sr-only" for="message">post</label> <input
						type="hidden" class="form-control" id="newReplyer" value="<%=(String)session.getAttribute("uid")%>" placeholder="아이디"></input>
					<textarea class="form-control" id="newReplyerText" rows="5"
						placeholder="내용"></textarea>
				</div>

			</div>

			<div class="btn-toolbar justify-content-between">
				<div class="btn-group">
					<button type="submit" class="btn btn-primary" id="replyAddBtn">등록</button>
				</div>

			</div>
		</div>
	</div>

	<!-- Post /////-->

    <!-- 핸들바 -->
	<script id="template" type="text/x-handlebars-template">
{{#each .}}
<li class="replies" data-r_seq={{r_seq}}>
                    <div class="card-header">
                        <div class="d-flex justify-content-between align-items-center">
                            <div class="d-flex justify-content-between align-items-center">
                                <div class="mr-2">
                                  
                                </div>
                                <div class="ml-2">
                                    <div class="h5 m-0">{{r_write}}</div>
                                    
                                </div>
                            </div>
                           
                            </div>
                        </div>

                    </div>
                    <div class="card-body">
                        <div class="text-muted h7 mb-2"> 
                        <i class="seq"></i>{{r_seq}}</div>
                       

                        <div id="replyContent" class="card-text">
                  {{r_contents}}
                        </div>
                    </div>
                    <div class="card-footer">
                        <button type="button" class="btn btn-info" data-toggle="modal" data-target="#modifyModal">수정</button>
                        <button type="button" id="delreply" class="btn btn-info"
                         data-toggle="modal" > 삭제</button>
                        </div>
<br>
                    </li>
{{/each}}
</script>

	<script>
		var e_seq = ${board.e_seq}

        
		
        /* 핸들바 json 합한 데이터 붙이기 */
		var printData = function(replyArr, target, templateObject) {
			
			var template = Handlebars.compile(templateObject.html());
			var html = template(replyArr);
			$(".replies").remove();
			target.after(html);
			
		}
        
		/* r_seq,r_contents 제이슨변환된거 변환 */
		$(".timeline").on("click", ".replies", function(event){
				
				var reply = $(this);
				
		$("#replytext").val(reply.find('#replyContent').text());
	    $(".modal-title").html(reply.attr("data-r_seq"));
			
			});
        
       /* json 댓글목록 출력 */
		  $.getJSON("/replyEnquire/all/"+e_seq, function(data) {
			  
			printData(data, $("#repliesDiv"), $('#template'));
					
		});  		 
		function getPage() {
			$.getJSON("/replyEnquire/all/"+e_seq, function(data) {
				
				printData(data, $("#repliesDiv"), $('#template'));
				$("#modifyModal").modal('hide');
				
			});
		}
				 /* 댓글 등록 */		
		$("#replyAddBtn").on("click", function() {
			var replyerObj = $("#newReplyer");
			var replytextObj = $("#newReplyerText");
			var r_write = replyerObj.val();
			var r_contents = replytextObj.val();
			
			$.ajax({
				type : 'post',
				url : '/replyEnquire',
				headers : {
					"Content-Type" : "application/json",
					"X-HTTP-Method-Override" : "POST"
				},
				dataType : 'text',
				data : JSON.stringify({
					e_seq : e_seq,
					r_write : r_write,
					r_contents : r_contents
				}),
				success : function(result) {
					if (result == 'SUCCESS') {
						
						getPage();
						replyerObj.val("");
						replytextObj.val("");
						
					}
				}

			})
});

	   /* 댓글 삭제 버튼 이벤트 ajax */
	    $(".timeline").on("click","#delreply",function(){
	    	
	    	
	    	var r_seq = $(".modal-title").html();
	    	var r_contents = $("#replytext").val();
	    	alert(r_seq);	
	    	
	    	$.ajax({
	    	       type:'delete',
	    	       url:'/replyEnquire/'+r_seq,
	    	       headers: {
	    	    	   "Content-Type":"application/json",
	    	    	   "X-HTTP-Method-Override":"DELETE"
	    	       },
	    	       dataType: "text",
	    	       success: function(result) {
					if(result=='SUCCESS'){
						
						getPage("/enquire/"+e_seq);
						
					}
					
				}
	    	       
	    	
	    	
	    	})
	    	
	    })
	    
	    /* 댓글수정 버튼 이벤트 ajax */
	    
	    $("#replyModBtn").on("click",function(){
	    	var r_seq = $(".modal-title").html();
	    	var r_contents = $("#replytext").val();
	        
	    	$.ajax({
	    		type :'put',
	    		url : '/replyEnquire/'+r_seq,
	    		headers: {
	    			"Content-Type":"application/json",
	    			"X-HTTP-Method-Override":"PUT"
	    		},
	    		data:JSON.stringify({r_contents:r_contents}),
	    		dataType: "text",
	    		success: function (result) {
					if(result =="SUCCESS"){
						
						getPage("/enquire/"+e_seq);
					}
				}
	    		
	    		
	    	})
	    	
	    })
		  
	</script>
    
    
    
    
    


	<br style="display: block;">
	<br style="display: block;">
	<br style="display: block;">




	<%@include file="../sub_page/footer.html"%>
</body>
</html>