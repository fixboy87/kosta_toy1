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
  public String Title( HttpServletRequest request) {
    HttpSession session = request.getSession();
  

    System.out.println("session id = " + (String) session.getAttribute("id"));
    System.out.println("session type = " + (String) session.getAttribute("type"));
    System.out.println("session name = " + (String) session.getAttribute("name"));
    System.out.println("title.jsp");
    return "title";
  }
}