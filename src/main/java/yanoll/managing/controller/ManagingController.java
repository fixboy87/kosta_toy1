package yanoll.managing.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import yanoll.managing.service.ManagerService;
import yanoll.managing.service.ManagingService;

@Controller
@RequestMapping(value="/managing/*")
public class ManagingController {
	
	@Inject
	private ManagingService service;
	
	@Inject
	private ManagerService syj_service;
	
	@RequestMapping(value = "/summary", method = RequestMethod.GET)
	public String myPage_summary(HttpServletRequest request, Model model)throws Exception {
		HttpSession session = request.getSession();
		
		String h_id = (String)session.getAttribute("uid");
		int h_no = syj_service.getH_no(h_id);
		model.addAttribute("h_no", h_no);
		
		return "managing/admin_summary";
	}
	
	@RequestMapping(value = "/test", method = RequestMethod.GET)
	public void getCalendar() {
		try {
			System.out.println(service.getMonthlyCalendar("18/09/09", "interbulgo"));
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	/*public @ResponseBody Map<String, Object> getCalendar(@RequestBody String requestDate) {
		
	}*/
}
