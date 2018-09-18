
<%@page import="yanoll.user.domain.Users"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%request.setCharacterEncoding("utf-8");%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%
	Users user = (Users)request.getAttribute("user");
%>	 

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Destino project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="../resources/bootstrap/styles/common/bootstrap4/bootstrap.min.css">
<link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="../resources/bootstrap/styles/gng_style/gng_contact.css">
<link rel="stylesheet" type="text/css" href="../resources/bootstrap/styles/gng_style/gng_main.css">
<script src="../resources/bootstrap/scripts/common/jquery-3.2.1.min.js"></script>
<script src="../resources/bootstrap/styles/common/bootstrap4/popper.js"></script>
<script src="../resources/bootstrap/styles/common/bootstrap4/bootstrap.min.js"></script>
<script src="../resources/bootstrap/plugins/common/greensock/TweenMax.min.js"></script>
<script src="../resources/bootstrap/plugins/common//greensock/TimelineMax.min.js"></script>
<script src="../resources/bootstrap/plugins/common//scrollmagic/ScrollMagic.min.js"></script>
<script src="../resources/bootstrap/plugins/common//greensock/animation.gsap.min.js"></script>
<script src="../resources/bootstrap/plugins/common//greensock/ScrollToPlugin.min.js"></script>
<script src="../resources/bootstrap/plugins/common//easing/easing.js"></script>
<script src="../resources/bootstrap/plugins/common//parallax-js-master/parallax.min.js"></script>
<script src="../resources/bootstrap/scripts/common/contact_custom.js"></script>


<!------ Include the above in your HEAD tag ---------->

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootswatch/3.3.6/lumen/bootstrap.min.css">
<link rel="stylesheet" href="https://daneden.github.io/animate.css/animate.min.css">


<style type="text/css">
#searchBar{
 margin-left: 70%;
}
</style>


</head>
<body>

<%@include file="../sub_page/header_menu.jsp" %>

	<!-- Contact -->


<div class="container" style="margin-top:20px;">
<div class="row">
<div id="user" class="col-md-12" >
  <div class="panel panel-primary panel-table animated slideInDown">
   <div class="panel-heading " style="padding:5px;">
        <div class="row">
        
        <div class="col col-xs-5 text-center">
            <h1 class="panel-title">문의내역</h1>
        </div>
 
        </div>
    </div>
   <div class="panel-body">
     <div class="tab-content">
      <div role="tabpanel" class="tab-pane active" id="list">
       <table class="table table-striped table-bordered table-list">
        <thead>
         <tr>
            <th>번호</th>
            <th>호텔</th>
            <th>제목</th>
            <th>ID</th>
            <th>작성일</th>
          </tr> 
         </thead>
         <tbody>
         <c:forEach var="Enquire_Board" items="${list}">
          <tr class="ok">
             <td width="50px">${Enquire_Board.e_seq}</td>
             <td width="120px">${Enquire_Board.h_name}</td>
             <td><a href="/enquire/read${pageMaker.makeSearch(pageMaker.cri.page)}&e_seq=${Enquire_Board.e_seq}">${Enquire_Board.e_title}</a></td>
             <td width="80px">${Enquire_Board.id}</td>
             <td width="80px" align="center">${Enquire_Board.e_date}</td>
          </tr>
         </c:forEach>
          </tbody>
        </table>
      </div><!-- END id="list" -->
        
     
         </div>
    </div>
   
  
  </div><!--END panel-table-->
</div>
</div>
</div>
											      			    

					<div id="searchBar">
					<select name="searchType">
						<option value="n"
							<c:out value="${cri.searchType == null?'selected':''}"/>>
							---</option>
						<option value="t"
							<c:out value="${cri.searchType eq 't'?'selected':''}"/>>
							Title</option>
						<option value="c"
							<c:out value="${cri.searchType eq 'c'?'selected':''}"/>>
							Content</option>
						<option value="w"
							<c:out value="${cri.searchType eq 'w'?'selected':''}"/>>
							Writer</option>
						<option value="tc"
							<c:out value="${cri.searchType eq 'tc'?'selected':''}"/>>
							Title OR Content</option>
						<option value="cw"
							<c:out value="${cri.searchType eq 'cw'?'selected':''}"/>>
							Content OR Writer</option>
						<option value="tcw"
							<c:out value="${cri.searchType eq 'tcw'?'selected':''}"/>>
							Title OR Content OR Writer</option>
					</select> <input type="text" name='keyword' id="keywordInput"
						value='${cri.keyword }'>
					<button id='searchBtn'>Search</button>
					<button id='newBtn'>New Board</button>

			</div>
			
			<div class="box-footer">

					<div class="text-center">
						<ul class="pagination">

							<c:if test="${pageMaker.prev}">
								<li><a
									href="list${pageMaker.makeSearch(pageMaker.startPage - 1) }">&laquo;</a></li>
							</c:if>

							<c:forEach begin="${pageMaker.startPage }"
								end="${pageMaker.endPage }" var="idx">
								<li
									<c:out value="${pageMaker.cri.page == idx?'class =active':''}"/>>
									<a href="list${pageMaker.makeSearch(idx)}">${idx}</a>
								</li>
							</c:forEach>

							<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
								<li><a
									href="list${pageMaker.makeSearch(pageMaker.endPage +1) }">&raquo;</a></li>
							</c:if>

						</ul>
					</div>

				</div>
				
				<script>
				
				
	$(document).ready(
			function() {

				$('#searchBtn').on(
						"click",
						function(event) {
							
                       
							self.location = "list"
									+ '${pageMaker.makeQuery(1)}'
									+ "&searchType="
									+ $("select option:selected").val()
									+ "&keyword=" + $('#keywordInput').val();

						});

				$('#newBtn').on("click", function(evt) {

					self.location = "register";

				});

			});
</script>
			
			
<%@include file="../sub_page/footer.html" %>
</body>
</html>