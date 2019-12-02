package board.boardA.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import board.boardA.model.Service.BoardService;
import board.boardA.model.vo.Board;
import board.boardA.model.vo.PageData;

/**
 * Servlet implementation class boardA
 */
@WebServlet("/boardA")
public class board extends HttpServlet {
   private static final long serialVersionUID = 1L;

   /**
    * @see HttpServlet#HttpServlet()
    */
   public board() {
      super();
      // TODO Auto-generated constructor stub
   }

   /**
    * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
    *      response)
    */
   protected void doGet(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {
      String boardType = request.getParameter("boardType");
      int currentPage = 0;

      if (request.getParameter("currentPage") == null) {
         currentPage = 1;
      } else {
         currentPage = Integer.parseInt(request.getParameter("currentPage"));
      }
      
      PageData pd = new BoardService().selectAll(currentPage,boardType);
      ArrayList<Board> pl = new BoardService().selectAll(currentPage,boardType).getPageList();
      String pn = new BoardService().selectAll(currentPage,boardType).getPageNavi();
      HttpSession session = request.getSession();
      Board board = (Board) session.getAttribute("board");
      
      
      if (!pd.getPageList().isEmpty()) {
         RequestDispatcher view = request.getRequestDispatcher("views/board_A/boardList.jsp");
         request.setAttribute("pageData", pd);
         request.setAttribute("pageList", pl);
         request.setAttribute("pagenavi", pn);
         request.setAttribute("boardType", boardType);
         
         if (board != null) {
            request.setAttribute("board", board);
         }
         view.forward(request, response);
      } else {
         response.sendRedirect("views/board_A/boardError.html");
      }

   }

   

   /**
    * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
    *      response)
    */
   protected void doPost(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {
      // TODO Auto-generated method stub
      doGet(request, response);
   }

}