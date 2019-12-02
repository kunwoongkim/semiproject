package notice.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import notice.model.service.NoticeService;
import notice.model.vo.Notice;

/**
 * Servlet implementation class NoticeContentServlet
 */
@WebServlet("/noticeContent.do")
public class NoticeContentServlet extends HttpServlet {
   private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NoticeContentServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

   /**
    * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
    */
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      // TODO Auto-generated method stub
      //response.getWriter().append("Served at: ").append(request.getContextPath());
      
      request.setCharacterEncoding("UTF-8");
      
      int boardNo = Integer.parseInt(request.getParameter("boardNumber"));
      
      
      int result = new NoticeService().clickCount(boardNo);
      Notice BoardOne = new NoticeService().selectContent(boardNo);
      
      if(BoardOne != null) {
         RequestDispatcher views = request.getRequestDispatcher("/views/notice/notice_Content.jsp");
         request.setAttribute("noticeContent", BoardOne);
         views.forward(request, response);
      }else {
         response.sendRedirect("/views/notice/notice_Error.html");
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