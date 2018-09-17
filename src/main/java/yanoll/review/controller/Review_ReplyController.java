package yanoll.review.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.xml.ws.Response;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import yanoll.enquire.domain.Criteria;
import yanoll.enquire.domain.PageMaker;
import yanoll.review.domain.Review_ReplyVO;
import yanoll.review.service.Review_ReplyService;

@Controller
@RequestMapping("/reivew_replies")
public class Review_ReplyController {

	@Inject
	private Review_ReplyService service;
	
	

	
	@RequestMapping(value = "", method = RequestMethod.POST)
	public ResponseEntity<String> register(@RequestBody Review_ReplyVO vo) {
		ResponseEntity<String> entity = null;
		try {
			service.addReply(vo);
			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
		}
		return entity;
	}

	@RequestMapping(value = "/all/{r_no}", method = RequestMethod.GET)
	public ResponseEntity<List<Review_ReplyVO>> list(@PathVariable("r_no") Integer r_no) {
		ResponseEntity<List<Review_ReplyVO>> entity = null;

		try {
			entity = new ResponseEntity<>(service.listReply(r_no), HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}

	@RequestMapping(value = "/{r_r_no}",
			method ={RequestMethod.PUT, RequestMethod.PATCH})
	public ResponseEntity<String> update(@PathVariable("r_r_no") Integer r_r_no, @RequestBody Review_ReplyVO vo) {
		ResponseEntity<String> entity = null;

		try {
			vo.setR_r_no(r_r_no);
			service.modifyReply(vo);

			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	@RequestMapping(value="/{r_r_no}",
			method=RequestMethod.DELETE)
	public ResponseEntity<String> remove(
			@PathVariable("r_r_no") Integer r_r_no){
		ResponseEntity<String> entity = null;
		
		try {
			service.removeReply(r_r_no);
			entity= new ResponseEntity<String>("SUCCESS",HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	
	@RequestMapping(value="/{r_no}/{page}", method=RequestMethod.GET)
	public ResponseEntity<Map<String, Object>> listPage(
			@PathVariable("r_no")Integer r_no
			,@PathVariable("page")Integer page){
		ResponseEntity<Map<String, Object>> entity= null;
		 System.out.println("/{r_no}/{page}!!!!!!!!!!!!!!!!!!!");
		try {
			Criteria cri = new Criteria();
			cri.setPage(page);
			
			PageMaker pageMaker = new PageMaker();
			pageMaker.setCri(cri);
			System.out.println("CONTROLLER==========================");
			System.out.println("cri.page:"+cri.getPage());
			System.out.println("cri.perPageNum:"+cri.getPerPageNum());
			Map<String, Object> map = new HashMap<String, Object>();
			List<Review_ReplyVO> list = service.listReplyPage(r_no, cri);
			System.out.println("리뷰 댓글===============");
			for (int i = 0; i < list.size(); i++) {
				System.out.println(list.get(i).toString());
			}
			map.put("list", list);
			
			int replyCount = service.count(r_no);
			pageMaker.setTotalCount(replyCount);
			
			map.put("pageMaker", pageMaker);
			
			entity= new ResponseEntity<Map<String, Object>>(map, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<Map<String, Object>>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
}
