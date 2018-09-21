package yanoll.managing.controller;

import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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

	@Resource(name = "roomUploadPath")
	private String uploadPath;

	@RequestMapping(value = "/roomPageGo", method = RequestMethod.GET)
	public String roomPageGo(HttpServletRequest request) throws Exception {
		HttpSession session = request.getSession();
		String h_id = (String) session.getAttribute("uid");
		int h_no = service.getH_no(h_id);

		return "redirect:/manager/roomManager/" + h_no;
	}

	
	
	
	@RequestMapping(value = "/roomManager/{h_no}", method = RequestMethod.GET)
		public String roomManagerGET(@PathVariable("h_no") Integer h_no, Model model) throws Exception {
	
			List<Hotel_RoomVO> list = service.roomList(h_no);
	
			RoomManagerDTO2 standard = new RoomManagerDTO2();
			RoomManagerDTO2 premium = new RoomManagerDTO2();
			RoomManagerDTO2 suite = new RoomManagerDTO2();
	
			if (list.isEmpty()) { /* 타입과 방이 등록 되어 있지 않은 경우 -> 기본 등급과 가격 설정 */
				standard = new RoomManagerDTO2(h_no, null, "standard", 10, 0);
				premium = new RoomManagerDTO2(h_no, null, "premium", 20, 0);
				suite = new RoomManagerDTO2(h_no, null, "suite", 30, 0);
	
			} else { /* 타입과 방이 등록 되어있는 경우 */
				for (int i = 0; i < list.size(); i++) {
					if (list.get(i).getRoom_type().equals("standard")) {
						standard.setH_no(h_no);
						standard.setPic_room_url(list.get(i).getPic_room_url());
						standard.setRoom_num(list.get(i).getRoom_num());
						standard.setRoom_type(list.get(i).getRoom_type());
	
						List<TypeVO> t_list = service.room_price(h_no, list.get(i).getRoom_type());
						standard.setRoom_price(t_list.get(0).getRoom_price());
	
						int cnt = service.room_cnt(h_no, list.get(i).getRoom_type());
						standard.setRoom_cnt(cnt);
	
					} else if (list.get(i).getRoom_type().equals("premium")) {
						premium.setH_no(h_no);
						premium.setPic_room_url(list.get(i).getPic_room_url());
						premium.setRoom_num(list.get(i).getRoom_num());
						premium.setRoom_type(list.get(i).getRoom_type());
	
						List<TypeVO> t_list = service.room_price(h_no, "premium");
						premium.setRoom_price(t_list.get(i).getRoom_price());
	
						int cnt = service.room_cnt(h_no, list.get(i).getRoom_type());
						premium.setRoom_cnt(cnt);
	
					} else if (list.get(i).getRoom_type().equals("suite")) {
						suite.setH_no(h_no);
						suite.setPic_room_url(list.get(i).getPic_room_url());
						suite.setRoom_num(list.get(i).getRoom_num());
						suite.setRoom_type(list.get(i).getRoom_type());
	
						List<TypeVO> t_list = service.room_price(h_no, "suite");
						suite.setRoom_price(t_list.get(i).getRoom_price());
	
						int cnt = service.room_cnt(h_no, list.get(i).getRoom_type());
						suite.setRoom_cnt(cnt);
	
					}
				}
			}
	
					model.addAttribute("h_no", h_no);
					model.addAttribute("standard", standard);
					model.addAttribute("premium", premium);
					model.addAttribute("suite", suite);
					
					return "/managing/roomManager";
	
		}

	
	
	
	
	@RequestMapping(value = "/roomManager/{h_no}", method = RequestMethod.POST)
	public String roomManagerPOST(@PathVariable("h_no") Integer h_no, RoomManagerDTO dto) throws Exception {

		int type_cnt = service.type_cnt(h_no, dto.getRoom_type());
			if (type_cnt == 0) {
				/* room insert */
					Hotel_RoomVO vo = new Hotel_RoomVO();
					MultipartFile file = dto.getPic_room_url();
					String h_name = service.hotleNameSearch(h_no);
					String savedName = RoomUploadFileUtils.uploadFile(uploadPath, file.getOriginalFilename(), file.getBytes());
					vo.setH_no(h_no);
					vo.setPic_room_url(savedName);
					vo.setRoom_num(dto.getRoom_num());
					vo.setRoom_type(dto.getRoom_type());
		
					System.out.println(vo.toString());
					service.insert(vo);
		
					/* type insert */
					int cnt = dto.getRoom_cnt();
		
					for (int i = 0; i < cnt; i++) {
						TypeVO typeVO = new TypeVO();
						typeVO.setH_no(h_no);
						typeVO.setRoom_price(dto.getRoom_price());
						typeVO.setRoom_type(dto.getRoom_type());
						int room_num = service.getRoom_num(h_no, dto.getRoom_type());
						typeVO.setRoom_num(room_num);
						service.insertType(typeVO);
				}
	
					} else if (type_cnt > 0) {
							/* update */
							Hotel_RoomVO selectRoom = service.roomOne(h_no, dto.getRoom_type());
				
							String savedName = selectRoom.getPic_room_url();
				
							MultipartFile file = dto.getPic_room_url();
							String url = file.getOriginalFilename();
							String save = "";
							
							/* Room Img Update */
							if (dto.getPic_room_url().isEmpty()) { /*이미지 수정하지 않는 경우*/
								save = savedName;
							} else { /*이미지 수정하는 경우*/
								save = RoomUploadFileUtils.uploadFile(uploadPath, file.getOriginalFilename(), file.getBytes());
							}
				
							String h_name = service.hotleNameSearch(h_no);
							RoomManagerDTO2 dto2 = new RoomManagerDTO2();
							dto2.setH_no(h_no);
							dto2.setRoom_type(dto.getRoom_type());
							dto2.setPic_room_url(save);
							service.roomUpdate(dto2);
				
							/* Type Update */
							RoomManagerDTO2 priceDTO = new RoomManagerDTO2();
							priceDTO.setH_no(h_no);
							priceDTO.setRoom_type(dto.getRoom_type());
				
							int roomCnt = dto.getRoom_cnt();
							service.typeDelete(priceDTO);
				
							TypeVO typeVO = new TypeVO();
							typeVO.setH_no(h_no);
							typeVO.setRoom_price(dto.getRoom_price());
							typeVO.setRoom_type(dto.getRoom_type());
							int room_num = service.getRoom_num(h_no, dto.getRoom_type());
							typeVO.setRoom_num(room_num);
							
							for (int i = 0; i < roomCnt; i++) {
								service.insertType(typeVO);
							}
				
							int price = dto.getRoom_price();
							priceDTO.setRoom_price(price);
				
		
					}

					return "redirect:/manager/roomManager/" + h_no;
			}

	}
