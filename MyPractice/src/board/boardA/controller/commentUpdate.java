package board.boardA.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.boardA.model.Service.BoardService;

/**
 * Servlet implementation class commentUpdate
 */
@WebServlet("/commentUpdate")
public class commentUpdate extends HttpServlet {
   private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public commentUpdate() {
        super();
        // TODO Auto-generated constructor stub
    }

   /**
    * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
    */
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      int commentNo = Integer.parseInt(request.getParameter("commentNo"));
      int commentSubNo = Integer.parseInt(request.getParameter("commentSubNo"));
      String commentContent = request.getParameter("commentContent");
      String boardType = request.getParameter("boardType");
   
      
      
      int result = new BoardService().updateComment(commentNo,commentContent);
            
      if(result > 0) {
         RequestDispatcher view = request.getRequestDispatcher("boardASelect?boardNumber=" + commentSubNo);
         request.setAttribute("commentNo", commentNo);
         request.setAttribute("commentSubNo", commentSubNo);
         request.setAttribute("commentContent", commentContent);
         
         view.forward(request, response);
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