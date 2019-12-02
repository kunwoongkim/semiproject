package board.boardA.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.plaf.synth.SynthSeparatorUI;

import board.boardA.model.Service.BoardService;

/**
 * Servlet implementation class commentDelete
 */
@WebServlet("/commentDelete")
public class commentDelete extends HttpServlet {
   private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public commentDelete() {
        super();
        // TODO Auto-generated constructor stub
    }

   /**
    * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
    */
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      int commentSubNo = Integer.parseInt(request.getParameter("commentSubNo"));
      int commentNo = Integer.parseInt(request.getParameter("commentNo"));
      String boardType = request.getParameter("boardType");
      
      int result = new BoardService().deleteComment(commentNo);
      
      
      
      System.out.println(result);
      if(result > 0) {
         response.sendRedirect("/boardASelect?boardNumber=" + commentSubNo + "&boardType=" + boardType);
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