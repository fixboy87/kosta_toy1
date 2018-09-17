package yanoll.room.controller;



import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import yanoll.room.domain.RoomVO;
import yanoll.room.service.RoomService;

@Controller
@RequestMapping("/room")
public class RoomController {
//http://blog.naver.com/PostView.nhn?blogId=fourleaf0311&logNo=140114521103
	@Inject
	private RoomService service;
	
	
	
	@RequestMapping(value = "/detailPage", method = RequestMethod.GET)
	public String detailPage(@RequestParam("h_no") int h_no, Model model)throws Exception{
		
		RoomVO vo = new RoomVO();
		System.out.println("roomController 체크");
		System.out.println(h_no);
					
		model.addAttribute("detail", service.roomDetail(h_no));
		model.addAttribute("slide",service.slide(h_no));
		
		return "room/detailPage";
	}
	

}













