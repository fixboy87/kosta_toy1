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
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import yanoll.order.domain.OrderVO;
import yanoll.order.dto.OrderDTO;
import yanoll.order.service.OrderService;

@Controller
@RequestMapping("/pay")
public class OrderController {

   @Inject
   private OrderService service;
   
   
   //pay/bookingCheck
   //http://localhost:8081/pay/bookingCheck?h_no=1&room_type=suite
   @RequestMapping(value = "/bookingCheck", method = RequestMethod.GET)
   public void bookingCheck(@RequestParam("h_no") int h_no,@RequestParam("room_type") String room_type,Model model) throws Exception{
      
      OrderVO vo = new OrderVO();
   
      vo.setH_no(h_no);
      vo.setRoom_type(room_type);
      System.out.println("1111111111부킹111111111111");
      System.out.println(vo);
      model.addAttribute("booking",service.orderCheck(vo));
     
   }
   
  @RequestMapping(value = "/index", method = RequestMethod.GET)
   public void payment() {
     

   }
   
   @RequestMapping(value = "/index", method = RequestMethod.POST)
   public ModelAndView data(OrderVO vo, Model model, HttpSession session) throws Exception{
      System.out.println("post!!!!");
	  System.out.println(vo);
	  
	  model.addAttribute("vo",vo);
	  
	  
	  String checkIn = (String)session.getAttribute("start_date");
	  String checkOut = (String)session.getAttribute("end_date");
	  int totalday = (int)session.getAttribute("bookingDays");
      String id = (String)session.getAttribute("uid");
	  String name = (String)session.getAttribute("name");
	  
	  
	  SimpleDateFormat format = new SimpleDateFormat("yyyyMMdd");
	  
	  Date start_day = format.parse(checkIn);
	  Date end_day = format.parse(checkOut);

	  
	  int userNo = service.userNo(id);
	  
	  
	  vo.setOrder_price(vo.getRoom_price() * totalday);//
	  vo.setP_condition(0);
	  vo.setStart_day(start_day);
	  vo.setEnd_day(end_day);
	  vo.setOrder_name(name);
	  vo.setId(id);
	  vo.setUserNo(userNo);	  
	  vo.setNumber_of_stay_days(totalday);
	
	  
	  model.addAttribute(service.orderCheck(vo));
	  
	  service.Orderdata(vo);
	  
	  ModelAndView modal = new ModelAndView();
	  
	  modal.setViewName("/pay/cashCheck");
	  
	  return modal;

   }
   
   
 
   
   @RequestMapping(value = "/cashCheck", method = RequestMethod.GET)
   public void cashCheck(OrderVO vo)  {
	   System.out.println("cashCheck GET");
	   System.out.println(vo);

   }
   
   @RequestMapping(value = "/cashCheck", method = RequestMethod.POST)
   public void cashCheckPOST(OrderVO vo , Model model,HttpSession session)  {
	   System.out.println("cashCheck POST");
	   System.out.println(vo);
	   
	   

   }
}
























