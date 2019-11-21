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

/**
 * Servlet implementation class kakaoTalkLoginservlet
 */
@WebServlet("/googleLogin")
public class googleLoginservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public googleLoginservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			request.setCharacterEncoding("UTF-8");
			String id = request.getParameter("id");
			String email = request.getParameter("email");
			String name = request.getParameter("name");
			
			Member member = new MemberService().selectMember(id, id);
			Member google = new Member();
			google.setUserId(id);
			google.setEmail(email);
			google.setUserName(name);
			if(member != null) {
				
				HttpSession session = request.getSession(false);
				session.setAttribute("member", member);
				response.sendRedirect("index.jsp");
				
			}else {
				
				RequestDispatcher view = request.getRequestDispatcher("views/member/googleEnroll.jsp");
				request.setAttribute("google", google);
				view.forward(request, response);
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
