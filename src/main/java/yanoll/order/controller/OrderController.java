package yanoll.order.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import yanoll.order.domain.OrderVO;
import yanoll.order.service.OrderService;

@Controller
@RequestMapping("/pay")
public class OrderController {

	@Inject
	private OrderService service;
	
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String payment() {
		return "/pay/index";

	}
	
	@RequestMapping(value = "/index", method = RequestMethod.POST)
	public void data(){
		
	}
	
	@RequestMapping(value = "/cashCheck", method = RequestMethod.GET)
	public String cashCheck() {
		return "/pay/cashCheck";

	}
	
	
	//pay/bookingCheck
	//http://localhost:8081/pay/bookingCheck?h_no=1&room_type=suite
	@RequestMapping(value = "/bookingCheck", method = RequestMethod.GET)
	public void bookingCheck(@RequestParam("h_no") int h_no,
			@RequestParam("room_type") String room_type,
			Model model) throws Exception{
		System.out.println("order 컨트롤러 체크");
		OrderVO vo = new OrderVO();
		
		vo.setH_no(h_no);
		vo.setRoom_type(room_type);
		
		model.addAttribute("booking",service.orderCheck(vo));
		
	}
}

























