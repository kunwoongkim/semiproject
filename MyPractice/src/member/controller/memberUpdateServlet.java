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
 * Servlet implementation class memberUpdateServlet
 */
@WebServlet("/update")
public class memberUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public memberUpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			request.setCharacterEncoding("UTF-8");
			String name = request.getParameter("name");
			String nickname = request.getParameter("nickname");
			int brith = Integer.parseInt(request.getParameter("birth"));
			String addr = request.getParameter("addr");
			String phone = request.getParameter("phone");
			String email = request.getParameter("email");
			Member member = new Member();
			HttpSession session = request.getSession(false);
			Member membersession = (Member) session.getAttribute("member");
			String userid = ((Member) session.getAttribute("member")).getUserId();
			member.setUserId(userid);
			member.setUserName(name);
			member.setUserNickName(nickname);
			member.setUsernum1(brith);
			member.setAddr(addr);
			member.setPhone(phone);
			member.setEmail(email);
			member.setUserPw(membersession.getUserPw());
			member.setGender(membersession.getGender());
			member.setBloodType(membersession.getBloodType());
			member.setLoginType(membersession.getLoginType());
			int result = new MemberService().updateMember(member);
			
			
			if(result>0) {
				session.setAttribute("member", member);
				response.sendRedirect("/views/member/updateSuccess.html");
				
			}else {
				
				response.sendRedirect("/views/member/updateError.html");
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
