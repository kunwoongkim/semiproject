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
 * Servlet implementation class NickNameDuplicateServlet
 */
@WebServlet("/nickNameDuplicate")
public class NickNameDuplicateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NickNameDuplicateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");
		
		String userNickName = request.getParameter("userNickName");
		Member mOne = new MemberService().selectNickName(userNickName);
		boolean NickUsable = mOne == null ? true : false;

		request.setAttribute("userNickName", userNickName); //위에 변수로 만들어서 가져온 값을 여기 넣어서 아래 주소로 보내준다
		request.setAttribute("NickUsable", NickUsable);
		RequestDispatcher views = request.getRequestDispatcher("/views/member/NickNameDuplicate.jsp");
		views.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
