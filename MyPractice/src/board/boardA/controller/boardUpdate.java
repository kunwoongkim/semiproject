package board.boardA.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.boardA.model.Service.BoardService;
import board.boardA.model.vo.Board;
import board.boardA.model.vo.PageData;

/**
 * Servlet implementation class boardUpdate
 */
@WebServlet("/boardUpdate")
public class boardUpdate extends HttpServlet {
   private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public boardUpdate() {
        super();
        // TODO Auto-generated constructor stub
    }

   /**
    * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
    */
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      int boardNumber = Integer.parseInt(request.getParameter("boardNumber"));
      PageData pageData = new BoardService().boardASelect(boardNumber);
      
      
      if(pageData != null) {
         RequestDispatcher view = request.getRequestDispatcher("views/board_A/boardUpdate.jsp");
         request.setAttribute("board", pageData.getBoard());
         view.forward(request, response);
      }else {
         
         response.sendRedirect("views/board_A/boardError.html");
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