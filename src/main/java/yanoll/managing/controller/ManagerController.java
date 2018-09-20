package yanoll.managing.controller;

import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import yanoll.managing.domain.Hotel_RoomVO;
import yanoll.managing.domain.TypeVO;
import yanoll.managing.dto.RoomManagerDTO;
import yanoll.managing.dto.RoomManagerDTO2;
import yanoll.managing.service.ManagerService;
import yanoll.room.service.RoomService;
import yanoll.util.RoomUploadFileUtils;

@Controller
@RequestMapping("/manager")
public class ManagerController {

	@Inject
	private ManagerService service;
	
	@Resource(name="roomUploadPath")
	private String uploadPath;

	@RequestMapping(value = "/roomManager/{h_no}", method = RequestMethod.GET)
	public String roomManagerGET(@PathVariable("h_no") Integer h_no, Model model) throws Exception {

		List<Hotel_RoomVO> list = service.roomList(h_no);
		
		RoomManagerDTO2 standard  = new RoomManagerDTO2();
		RoomManagerDTO2 premium =  new RoomManagerDTO2();
		RoomManagerDTO2 suite =  new RoomManagerDTO2();
		
		if (list.isEmpty()) {
			System.out.println("여긴 방 없을 때");
			standard  = new RoomManagerDTO2(h_no, null, "standard", 10, 0);
			 premium = new RoomManagerDTO2(h_no, null, "premium", 20,0);
			 suite = new RoomManagerDTO2(h_no, null, "suite", 30,0);
		}else {
			System.out.println("여긴 방 있을 때");
			for (int i = 0; i < list.size(); i++) {
				
				if (list.get(i).getRoom_type().equals("standard")) {
					System.out.println("스탠다드의 if문======================");
					standard.setH_no(h_no);
					standard.setPic_room_url(list.get(i).getPic_room_url());
					standard.setRoom_num(list.get(i).getRoom_num());
					standard.setRoom_type(list.get(i).getRoom_type());
				
					List<TypeVO>t_list = service.room_price(h_no, list.get(i).getRoom_type());
					standard.setRoom_price(t_list.get(1).getRoom_price());
					
					int cnt = service.room_cnt(h_no, list.get(i).getRoom_type());
					standard.setRoom_cnt(cnt);
					
				} else if (list.get(i).getRoom_type().equals("premium")) {
					System.out.println("premium if문======================");
					premium.setH_no(h_no);
					premium.setPic_room_url(list.get(i).getPic_room_url());
					premium.setRoom_num(list.get(i).getRoom_num());
					premium.setRoom_type(list.get(i).getRoom_type());
					
					List<TypeVO>t_list = service.room_price(h_no, "premium");
					premium.setRoom_price(t_list.get(1).getRoom_price());
					
					int cnt = service.room_cnt(h_no, list.get(i).getRoom_type());
					premium.setRoom_cnt(cnt);
					
				} else if (list.get(i).getRoom_type().equals("suite")) {
					System.out.println("suite if문======================");
					suite.setH_no(h_no);
					suite.setPic_room_url(list.get(i).getPic_room_url());
					suite.setRoom_num(list.get(i).getRoom_num());
					suite.setRoom_type(list.get(i).getRoom_type());
					
					List<TypeVO>t_list = service.room_price(h_no, "suite");
					suite.setRoom_price(t_list.get(1).getRoom_price());
					
					int cnt = service.room_cnt(h_no, list.get(i).getRoom_type());
					suite.setRoom_cnt(cnt);
					
				}
			}
		}
			System.out.println("@@standard"+standard.toString());
			System.out.println("@@premium"+premium.toString());
			System.out.println("@@suite"+suite.toString());

		 model.addAttribute("h_no", h_no); 
		 model.addAttribute("standard", standard); 
		 model.addAttribute("premium", premium); 
		 model.addAttribute("suite", suite); 
		 
		 return"/managing/roomManager";
		 
	}

	@RequestMapping(value = "/roomManager/{h_no}", method = RequestMethod.POST)
	public String roomManagerPOST(@PathVariable("h_no")Integer h_no,RoomManagerDTO dto) throws Exception {
		

			int type_cnt = service.type_cnt(h_no, dto.getRoom_type());
			if (type_cnt == 0) {
				/*room insert*/
				Hotel_RoomVO vo = new Hotel_RoomVO();
				MultipartFile file = dto.getPic_room_url();
				String h_name = service.hotleNameSearch(h_no);
				String savedName = RoomUploadFileUtils.uploadFile(uploadPath, file.getOriginalFilename(), file.getBytes(),h_name);
				
				vo.setH_no(h_no);
				vo.setPic_room_url(savedName);
				vo.setRoom_num(dto.getRoom_num());
				vo.setRoom_type(dto.getRoom_type());
				service.insert(vo);
				
				/*type insert*/
				//	insertType메퍼까지 만듬 
				//	1. dao->서비스 만들기
				//	cnt로 for문돌려서 insert !!
				int cnt =dto.getRoom_cnt();
				
				for (int i = 0; i < cnt; i++) {
					/*service.insertType(vo);*/
				}
				
			}else if (type_cnt>0) {
				/*update*/
			}
			
			
		return "/managing/roomManager/"+h_no;
	}

}
