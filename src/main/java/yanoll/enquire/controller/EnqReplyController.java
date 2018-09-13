package yanoll.enquire.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import yanoll.enquire.service.EnqReplyService;

@RequestMapping("/replyEnquire/*")
@RestController
public class EnqReplyController {
	
	@Inject
	private EnqReplyService service;

	
	

}
