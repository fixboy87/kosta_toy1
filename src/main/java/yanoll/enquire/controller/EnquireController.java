package yanoll.enquire.controller;

import javax.inject.Inject;

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

@Controller
@RequestMapping("/enquire/*")
public class EnquireController {
	
	@Inject
	private EnquireService service;
	
	@RequestMapping(value="/register" , method= RequestMethod.GET)
	public void registerGET(Enquire_Board board)throws Exception{
		
	}
	
	@RequestMapping(value="/register" , method= RequestMethod.POST)
	public String registerPOST(Enquire_Board board)throws Exception{
		service.regist(board);
		System.out.println(board);
		return "redirect:/enquire/list";
	}
	
	@RequestMapping(value="/list",method=RequestMethod.GET)
	public void list(@ModelAttribute("cri")SearchCriteria cri,Model model)throws Exception{
		
		model.addAttribute("list", service.list(cri));
		
		PageMaker pageMaker = new PageMaker();
		
		pageMaker.setCri(cri);
		
		pageMaker.setTotalCount(service.count(cri));
		
		model.addAttribute("pageMaker", pageMaker);
	}
	
	@RequestMapping(value="/read",method=RequestMethod.GET)
	public void read(@RequestParam("e_seq") int e_seq,
			@ModelAttribute("cri") SearchCriteria cri,Model model)throws Exception{
		model.addAttribute("board",service.read(e_seq));
		
	}
	
	@RequestMapping(value="/remove",method=RequestMethod.POST)
	public String delete(@RequestParam("e_seq") int e_seq,
			RedirectAttributes rttr,SearchCriteria cri)throws Exception{
		
		service.delete(e_seq);
		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		
		return "redirect:/enquire/list";
	}

}
