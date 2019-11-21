package member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import member.model.service.MemberService;
import member.model.vo.Member;

/**
 * Servlet implementation class kakaoTalkEnrollServlet
 */
@WebServlet("/socialEnroll")
public class socialEnrollServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public socialEnrollServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String loginType = "social";
		String Addr = request.getParameter("addr1")+request.getParameter("addr2")+request.getParameter("addr3");
		Member member = new Member();
		member.setUserId(request.getParameter("userId"));
		member.setUserPw(request.getParameter("userPw"));
		member.setUsernum1(Integer.parseInt(request.getParameter("usernum1")));
		member.setUserName(request.getParameter("name"));
		member.setUserNickName(request.getParameter("userNickName"));
		member.setAddr(Addr);
		member.setPhone(request.getParameter("phone"));
		member.setEmail(request.getParameter("email"));
		member.setBloodType(request.getParameter("BloodType"));
		member.setGender(request.getParameter("Gender"));
		member.setLoginType(loginType);
		
		int result = new MemberService().insertMember(member);
		
		
		if(result > 0) {
			HttpSession session = request.getSession();
			session.setAttribute("member",member);
			response.sendRedirect("index.jsp");
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
