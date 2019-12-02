package board.boardA.controller;

import java.io.IOException;
import java.util.ArrayList;

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
 * Servlet implementation class boardSearch
 */
@WebServlet("/boardSearch")
public class boardSearch extends HttpServlet {
   private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public boardSearch() {
        super();
        // TODO Auto-generated constructor stub
    }

   /**
    * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
    */
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
	   	response.setCharacterEncoding("UTF-8");
	   
	   	 String searchType = request.getParameter("searchType");
         String searchContent = request.getParameter("searchContent");
         String boardType = request.getParameter("boardType");
         
         int currentPage = 0;
         
         if(request.getParameter("currentPage") == null ) {
            currentPage = 1;
         }else {
            currentPage = Integer.parseInt(request.getParameter("currentPage"));
         }
               
         PageData pd = new BoardService().boardASearch(currentPage , searchType , searchContent ,boardType);
         ArrayList<Board> pl = new BoardService().boardASearch(currentPage, searchType, searchContent , boardType).getPageList();
         String pn = new BoardService().boardASearch(currentPage, searchType, searchContent ,boardType).getPageNavi();
         
         RequestDispatcher view = request.getRequestDispatcher("views/board_A/boardSearch.jsp");
         request.setAttribute("pageData", pd);
         request.setAttribute("pageList", pl);
         request.setAttribute("pagenavi", pn);
         request.setAttribute("searchType", searchType);
         request.setAttribute("search", searchContent);
         request.setAttribute("boardType", boardType);
         view.forward(request, response);
   }

   /**
    * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
    */
   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      // TODO Auto-generated method stub
      doGet(request, response);
   }

}