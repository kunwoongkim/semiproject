package member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import member.model.service.MemberService;
import member.model.vo.Member;
import member.model.vo.PageData;

/**
 * Servlet implementation class MemberAllServlet
 */
@WebServlet("/memberAll")
public class MemberAllServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberAllServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int currentPage=0;
		if(request.getParameter("currentPage")==null) {
			currentPage =1;
		}else {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		
		PageData pd = new MemberService().selectList(currentPage);
		
		HttpSession session = request.getSession();
		Member member = (Member)session.getAttribute("member");
		
		
		if(!pd.getPageList().isEmpty()) {
			RequestDispatcher views = request.getRequestDispatcher("/views/member/manager.jsp");
			request.setAttribute("pageData", pd);
			if(member!=null) {
				request.setAttribute("member", member);
			}
			views.forward(request, response);
		}else {
			response.sendRedirect("/views/member/Error.html");
		}
		
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}