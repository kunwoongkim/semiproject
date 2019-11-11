package member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.model.service.MemberService;
import member.model.vo.Member;

/**
 * Servlet implementation class answerServlet
 */
@WebServlet("/answer")
public class answerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public answerServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			request.setCharacterEncoding("UTF-8");
			String question = request.getParameter("question");
			String answer = request.getParameter("answer");
			String memberId = request.getParameter("memberId");
			Member member = new MemberService().questionPwd(question,answer,memberId);
	
			if(member != null) {
				
				RequestDispatcher view = request.getRequestDispatcher("/views/Repwd.jsp");
				request.setAttribute("answer", member);
				view.forward(request, response);
				
			}else {
				RequestDispatcher view = request.getRequestDispatcher("/views/Repwd.jsp");
				request.setAttribute("answer", member);
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
