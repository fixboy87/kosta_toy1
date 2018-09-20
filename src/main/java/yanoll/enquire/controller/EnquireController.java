
package yanoll.enquire.controller;

import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import yanoll.enquire.domain.Enquire_Board;
import yanoll.enquire.domain.PageMaker;
import yanoll.enquire.domain.SearchCriteria;
import yanoll.enquire.service.EnquireService;
import yanoll.user.domain.Users;

@Controller
@RequestMapping("/enquire/*")
public class EnquireController {

	@Inject
	private EnquireService service;

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public void registerGET(Enquire_Board board, HttpServletRequest request) throws Exception {
		/*
		 * HttpSession session = request.getSession(); String id =
		 * (String)session.getAttribute("uid");
		 */

	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String registerPOST(Enquire_Board board) throws Exception {

	    	
		service.regist(board);
		System.out.println(board);
		return "redirect:/enquire/list";
	}

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public void list(@ModelAttribute("cri") SearchCriteria cri, HttpServletRequest request, Model model)
			throws Exception {

		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("uid");
		String h_name = (String) session.getAttribute("name");

		Map<String, Object> map = new HashMap<String, Object>();
		List<Enquire_Board> list = service.list(id, h_name, cri);

		PageMaker pageMaker = new PageMaker();

		pageMaker.setCri(cri);
	
		
		
	
		pageMaker.setTotalCount(service.count(cri));
		map.put("list", list);
		map.put("pageMaker", pageMaker);
		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageMaker);
		
	}

	@RequestMapping(value = "/read", method = RequestMethod.GET)
	public void read(@RequestParam("e_seq") int e_seq, @ModelAttribute("cri") SearchCriteria cri, Model model)
			throws Exception {
		model.addAttribute("board", service.read(e_seq));

	}

	@RequestMapping(value = "/remove", method = RequestMethod.POST)
	public String delete(@RequestParam("e_seq") int e_seq, RedirectAttributes rttr, SearchCriteria cri)
			throws Exception {

		service.delete(e_seq);
		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		rttr.addAttribute("searchType", cri.getSearchType());
		rttr.addAttribute("keyword", cri.getKeyword());
		return "redirect:/enquire/list";
	}

	@RequestMapping(value = "/modify", method = RequestMethod.GET)
	public void modifyGET(@RequestParam("e_seq") int e_seq, @ModelAttribute("cri") SearchCriteria cri, Model model)
			throws Exception {

		model.addAttribute("board", service.read(e_seq));

	}

	@RequestMapping(value = "/modify", method = RequestMethod.POST)
	public String modifyPOST(Enquire_Board board, RedirectAttributes rttr, SearchCriteria cri) throws Exception {

		service.modify(board);

		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		rttr.addAttribute("searchType", cri.getSearchType());
		rttr.addAttribute("keyword", cri.getKeyword());

		return "redirect:/enquire/list";
	}

}
