package member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.model.service.MemberService;
import member.model.vo.Member;

/**
 * Servlet implementation class EnrollServlet
 */
@WebServlet("/enroll")
public class EnrollServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EnrollServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		request.setCharacterEncoding("utf-8");
		
		String loginType = "member";
		String Addr = request.getParameter("addr1")+request.getParameter("addr2")+request.getParameter("addr3");
		Member member = new Member();
		member.setUserId(request.getParameter("userId"));
		member.setUserPw(request.getParameter("userPw"));
		member.setUsernum1(Integer.parseInt(request.getParameter("usernum1")));
		member.setUserName(request.getParameter("userName"));
		member.setUserNickName(request.getParameter("userNickName"));
		member.setAddr(Addr);
		member.setPhone(request.getParameter("phone"));
		member.setEmail(request.getParameter("email"));
		member.setBloodType(request.getParameter("BloodType"));
		member.setGender(request.getParameter("Gender"));
		member.setLoginType(loginType);
		
		int result = new MemberService().insertMember(member);
		
		if(result > 0) {
			response.sendRedirect("/views/member/EnrollSuccess.html");
		}else {
			response.sendRedirect("/views/member/ErrorPage.html");
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
