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
@WebServlet("/kakaoTalkLogin")
public class kakaoTalkLoginservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public kakaoTalkLoginservlet() {
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
			String gender = request.getParameter("gender");
			
			Member member = new MemberService().selectMember(id, id);
			Member kakao = new Member();
			kakao.setUserId(id);
			kakao.setEmail(email);
			kakao.setGender(gender);
			if(member != null) {
				
				HttpSession session = request.getSession(false);
				session.setAttribute("member", member);
				response.sendRedirect("index.jsp");
				
			}else {
				
				RequestDispatcher view = request.getRequestDispatcher("views/member/kakaoEnroll.jsp");
				request.setAttribute("kakao", kakao);
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
