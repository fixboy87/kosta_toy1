package yanoll.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class TitlePageAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("/pages/title.jsp");
		
		HttpSession session = request.getSession();
		
		System.out.println("session id = "+(String)session.getAttribute("id"));
		System.out.println("session type = "+(String)session.getAttribute("type"));
		System.out.println("session name = "+(String)session.getAttribute("name"));
		
		return forward;
	}

}
