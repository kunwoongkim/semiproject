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
 * Servlet implementation class CheckDuplicateServlet
 */
@WebServlet("/emailDuplicate")
public class EmailDuplicateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmailDuplicateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String email = request.getParameter("email");
		Member mOne = new MemberService().selectEmail(email);
//		boolean isUsable = mOne == null ? true : false;
		if(mOne != null) {
			response.getWriter().write("false");
		}else {
			response.getWriter().write("true"); 
		}
		
	
	
//		request.setAttribute("userId", userId); //위에 변수로 만들어서 가져온 값을 여기 넣어서 아래 주소로 보내준다
//		request.setAttribute("isUsable", isUsable);
//		RequestDispatcher views = request.getRequestDispatcher("/views/member/checkIdDuplicate.jsp");
//		views.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
