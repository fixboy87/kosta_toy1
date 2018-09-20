
//이미지 팝업
function doImgPop(img){ 
	 img1= new Image(); 
	 img1.src=(img); 
	 imgControll(img); 
	} 
	  
	function imgControll(img){ 
	 if((img1.width!=0)&&(img1.height!=0)){ 
	    viewImage(img); 
	  } 
	  else{ 
	     controller="imgControll('"+img+"')"; 
	     intervalID=setTimeout(controller,20); 
	  } 
	}

	function viewImage(img){ 
	 W=img1.width; 
	 H=img1.height; 
	 O="width="+W+",height="+H+",scrollbars=yes"; 
	 imgWin=window.open("","",O); 
	 imgWin.document.write("<html><head><title>이미지 상세 보기</title></head>");
	 imgWin.document.write("<body topmargin=0 leftmargin=0>");
	 imgWin.document.write("<img src="+img+" onclick='self.close()' style='cursor:pointer;' title ='클릭하시면 창이 닫힙니다.'>");
	 imgWin.document.close();

	
}
	
//이미지 슬라이더
	
	(function(){

	    var current = 0;
	    var max = 0;
	    var container;
	    var interval;
	    var xml;
	    var animateTarget = null;

	    function init(){
	      container = jQuery(".slide ul");
	      max = container.children().length;
          events();
	      interval = setInterval(next, 3000);
	  }
	
	  function setting(){
	    container.css("margin-left","-600px");
	    container.prepend(container.children()[max-1]);
	  }

	  function events(){
	    jQuery("button.prev").on("click", prev);
	    jQuery("button.next").on("click", next);
	    jQuery(window).on("keydown", keydown);

	  }

	  function prev( e ){
	    current--;
	    if( current < 0 )  current = max-1;
	    animate("prev");    
	  }

	  function next( e ){
	    current++;
	    if( current > max-1 ) current = 0;
	    animate("next");    
	  }

	  function animate( $direction ){
	    if( animateTarget !=null ){
	      TweenMax.killTweensOf( animateTarget );
	      animateTarget.css("margin-left","0");

	    }

	    if( $direction == "next"){
	      jQuery(container.children()[1]).css("margin-left","600px");
	      container.append( container.children()[0] );

	    } else if( $direction == "prev"){
	      container.prepend( container.children()[max-1] );
	      jQuery(container.children()[0]).css("margin-left","-600px");
	    }

	    animateTarget = jQuery(container.children()[0]);
	    TweenMax.to( animateTarget, 0.8, { marginLeft:0, ease:Expo.easeOut });
	    clearInterval(interval);  
	    interval = setInterval(next, 3000);  

	  }

	  function keydown( e ){
	    if( e.which == 39 /*right*/ ){
	        next();
	    }else if( e.which == 37 /*left*/ ){
	        prev();
	    }
	  }
	  jQuery( document ).ready( init );
	})();


	
	