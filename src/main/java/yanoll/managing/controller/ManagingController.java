package yanoll.managing.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(value="/managing/*")
public class ManagingController {
	
	
	@RequestMapping(value = "/summary", method = RequestMethod.GET)
	public String myPage_summary() {
		
		return "managing/admin_summary";
	}
	
	
	/*@RequestMapping(value = "/getCalendar", method = RequestMethod.POST)
	public @ResponseBody Map<String, Object> getCalendar(@RequestBody String day) {
		
	}*/
}
