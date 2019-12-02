package board.boardA.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.boardA.model.Service.BoardService;
import board.boardA.model.vo.Board;

/**
 * Servlet implementation class boardDelete
 */
@WebServlet("/boardDelete")
public class boardDelete extends HttpServlet {
   private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public boardDelete() {
        super();
        // TODO Auto-generated constructor stub
    }

   /**
    * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
    */
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      int boardNumber = Integer.parseInt(request.getParameter("boardNumber"));
      String boardType = request.getParameter("boardType");
      
      int result = new BoardService().boardDelete(boardNumber);
      
      if(result > 0) {
         response.sendRedirect("/boardA?boardType=" + boardType);
      }else {
         response.sendRedirect("views/board_A/boardDelteFail.html");
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