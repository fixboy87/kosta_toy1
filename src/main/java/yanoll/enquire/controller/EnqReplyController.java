package yanoll.enquire.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import yanoll.enquire.domain.Enquire_Reply;
import yanoll.enquire.service.EnqReplyService;


@RequestMapping("/replyEnquire")
@RestController
public class EnqReplyController {
	
	@Inject
	private EnqReplyService service;
	
	@RequestMapping(value="",method=RequestMethod.POST)
	public ResponseEntity<String> register(@RequestBody Enquire_Reply reply)throws Exception{
		ResponseEntity<String> entity = null;
		
		try {
			service.insert(reply);
			entity = new ResponseEntity<String>("SUCCESS",HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return entity;
	}
	
	@RequestMapping(value="/all/{e_seq}",method=RequestMethod.GET)
	public ResponseEntity<List<Enquire_Reply>> list(@PathVariable("e_seq") int e_seq){
		
		ResponseEntity<List<Enquire_Reply>> entity = null;
				
		try {
			entity = new ResponseEntity<>(service.listReply(e_seq),HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return entity;
	}

	
	

}
