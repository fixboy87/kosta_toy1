package yanoll.common.controller;



import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class TitlePageController {

  
  @RequestMapping(value = "/", method = RequestMethod.GET) 
  public String Title( Model model, HttpServletRequest request) {
    HttpSession session = request.getSession();
    //미완성 bn
    return "title";
}
}