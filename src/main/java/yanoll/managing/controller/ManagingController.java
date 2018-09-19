package yanoll.managing.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import yanoll.managing.service.ManagingService;

@Controller
@RequestMapping(value="/managing/*")
public class ManagingController {
	
	@Inject
	private ManagingService service;
	
	@RequestMapping(value = "/summary", method = RequestMethod.GET)
	public String myPage_summary() {
		
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
