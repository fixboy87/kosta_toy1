package yanoll.order.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/pay")
public class OrderController {

  @RequestMapping(value = "/", method = RequestMethod.GET)
  public String payment() {
    return "/payment/index";

    
  }
  
  
  @RequestMapping(value = "/cashCheck", method = RequestMethod.GET)
  public String cashCheck() {
    return "/payment/cashCheck";

    
  }

}