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
 * Servlet implementation class boardASelect
 */
@WebServlet("/boardASelect")
public class boardSelect extends HttpServlet {
   private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public boardSelect() {
        super();
        // TODO Auto-generated constructor stub
    }

   /**
    * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
    */
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      
      int boardNumber = Integer.parseInt(request.getParameter("boardNumber"));
      int result = new BoardService().boardViewCount(boardNumber);
      PageData pageData = new BoardService().boardASelect(boardNumber);
      
      if(pageData.getBoard() != null) {
         
         request.setAttribute("board", pageData.getBoard());
         request.setAttribute("commentList", pageData.getCommentList());
         request.setAttribute("boardType", pageData.getBoard().getBoardType());
         request.getRequestDispatcher("views/board_A/boardView.jsp").forward(request, response);
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