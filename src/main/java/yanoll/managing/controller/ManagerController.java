package yanoll.managing.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import yanoll.managing.dto.RoomManagerDTO;

@Controller
@RequestMapping("/manager")
public class ManagerController {

	@RequestMapping(value="/roomManager/{h_no}", method=RequestMethod.GET)
	public String roomManagerGET(@PathVariable("h_no")Integer h_no, Model model)throws Exception{
		model.addAttribute("h_no", h_no);
		
		return"/managing/roomManager";
	}
	@RequestMapping(value="/roomManager/{h_no}", method=RequestMethod.POST)
	public String roomManagerPOST(RoomManagerDTO dto)throws Exception{
		MultipartFile file = dto.getPic_room_url();
		
		return"/managing/roomManager";
	}
	
}
