package board.boardA.controller;

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
 * Servlet implementation class boardLogin
 */
@WebServlet("/boardLogin")
public class boardLogin extends HttpServlet {
   private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public boardLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

   /**
    * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
    */

    
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      request.setCharacterEncoding("UTF-8");
      String userId = request.getParameter("userId");
      String userPwd = request.getParameter("userPwd");
      String boardType = request.getParameter("boardType");
      

      Member member = new MemberService().selectMember(userId,userPwd);
      
      
      if(member != null) {
         HttpSession session = request.getSession();
         session.setAttribute("member", member);
         
         response.sendRedirect("/boardA?boardType=" + boardType);
         
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