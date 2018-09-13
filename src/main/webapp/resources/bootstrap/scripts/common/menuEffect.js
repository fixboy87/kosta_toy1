/*
 * 사용하는 jsp파일에서 아래 코드로 불러오기
 * 
 * <script src="폴더경로/aa.js" type="text/javascript"></script>*/


$(document).ready(function(){  

	
	var $menu0 = $('ul.main_nav_list li:eq(0)');
    var $menu1 = $('ul.main_nav_list li:eq(1)');
    var $menu2 = $('ul.main_nav_list li:eq(2)');
    var $menu3 = $('ul.main_nav_list li:eq(3)');
    var $menu4 = $('ul.main_nav_list li:eq(4)');
    var $menu5 = $('ul.main_nav_list li:eq(5)');
   
   
   $id = $("#session_id").attr("value");
   if($id == null) {
	   $id = "null";
   }
   
   if($id !== "null") {
      $($menu0).removeClass("hidden").addClass("active");
      $($menu1).removeClass("hidden");
      $($menu2).removeClass("hidden");
      $($menu3).remove().removeClass("active");
      $($menu4).remove();
      $($menu5).remove();
      
   } else {
      $($menu0).removeClass("active");
      $($menu3).removeClass("hidden").addClass("active");
      $($menu4).removeClass("hidden");
      $($menu5).removeClass("hidden");
      
   }

});