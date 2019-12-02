package board.boardA.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import board.boardA.model.Service.BoardService;
import board.boardA.model.vo.BoardComment;

import member.model.vo.Member;

/**
 * Servlet implementation class insertComment
 */
@WebServlet("/insertComment")
public class insertComment extends HttpServlet {
   private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public insertComment() {
        super();
        // TODO Auto-generated constructor stub
    }

   /**
    * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
    */
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       
	   	request.setCharacterEncoding("UTF-8");
	   	String commentContent = request.getParameter("commentContent");
         HttpSession session = request.getSession(false);
         String commentNickName = request.getParameter("commentNickName");
         int commentSubNo = Integer.parseInt(request.getParameter("commentSubNo"));
         int commentLevel = Integer.parseInt(request.getParameter("commentLevel"));
         int recommentSubNo = Integer.parseInt(request.getParameter("recommentSubNo"));
         String boardType = request.getParameter("boardType");
         
         BoardComment boardComment = new BoardComment(0, commentNickName, commentContent, commentLevel, commentSubNo, recommentSubNo);
         new BoardService().insertComment(boardComment);
         
         response.sendRedirect("boardASelect?boardNumber=" + commentSubNo);
         request.setAttribute("commentSubNo", commentSubNo);
         request.setAttribute("commentContent", commentContent);
         request.setAttribute("commentSubNo", commentSubNo);
         request.setAttribute("commentLevel", commentLevel);
         request.setAttribute("recommentSubno", recommentSubNo);
         
   }

   /**
    * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
    */
   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      // TODO Auto-generated method stub
      doGet(request, response);
   }

}