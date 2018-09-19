package yanoll.order.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import yanoll.order.domain.OrderVO;
import yanoll.order.dto.OrderDTO;
import yanoll.order.service.OrderService;

@Controller
@RequestMapping("/pay")
public class OrderController {

   @Inject
   private OrderService service;
   
   @RequestMapping(value = "/index", method = RequestMethod.GET)
   public void payment() {
     

   }
   
   @RequestMapping(value = "/index", method = RequestMethod.POST)
   public void data(OrderDTO dto,Model model, HttpSession session) throws Exception{
      System.out.println("post!!!!");
	  System.out.println(dto);
	  model.addAttribute("dto",dto);
	  
	  String checkIn = (String)session.getAttribute("start_date");
	  String checkOut = (String)session.getAttribute("end_date");
	  int totalday = (int)session.getAttribute("bookingDays");
	  String uid = (String)session.getAttribute("uid");
	  String name = (String)session.getAttribute("name");
	  
	  SimpleDateFormat format = new SimpleDateFormat("yyyyMMdd");
	  
	  Date start_day = format.parse(checkIn);
	  Date end_day = format.parse(checkOut);
	  
	  
	  OrderVO vo = new OrderVO();
	  vo.setH_name(dto.getH_name());
	  vo.setRoom_type(dto.getRoom_type());
	  vo.setRoom_price(dto.getRoom_price() * totalday);
	  vo.setP_conition(0);
	  vo.setH_phonenum(dto.getH_phonenum());
	  vo.setStart_day(start_day);
	  vo.setEnd_day(end_day);
	  vo.setOrder_name(name);
	  
	  
	  
	  service.Orderdata(vo);
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
   
   @RequestMapping(value = "/cashCheck", method = RequestMethod.GET)
   public void cashCheck(OrderDTO dto)  {
	   System.out.println("cashCheck GET");
	   System.out.println(dto);

   }
   
   @RequestMapping(value = "/cashCheck", method = RequestMethod.POST)
   public void cashCheckPOST(OrderDTO dto , Model model)  {
	   System.out.println("cashCheck POST");
	   System.out.println(dto);

   }
}
























