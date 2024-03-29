package notice.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import notice.model.service.NoticeService;
import notice.model.vo.NoticePageData;

/**
 * Servlet implementation class NoticeSearchServlet
 */
@WebServlet("/noticeSearch.do")
public class NoticeSearchServlet extends HttpServlet {
   private static final long serialVersionUID = 1L;

   /**
    * @see HttpServlet#HttpServlet()
    */
   public NoticeSearchServlet() {
      super();
      // TODO Auto-generated constructor stub
   }

   /**
    * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
    *      response)
    */
   protected void doGet(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {
      // TODO Auto-generated method stub
      // response.getWriter().append("Served at: ").append(request.getContextPath());

      request.setCharacterEncoding("UTF-8");
      
      String search = request.getParameter("search");
      

      int currentPage = 0;
      if (request.getParameter("currentPage") == null) {
         currentPage = 1;
      } else {
         currentPage = Integer.parseInt(request.getParameter("currentPage"));
      }
      
      
      
      NoticePageData abPd = new NoticeService().searchTitle(search, currentPage);

      if (!abPd.getnPageData().isEmpty()) {
         RequestDispatcher views = request.getRequestDispatcher("/views/notice/notice_Search.jsp");
         request.setAttribute("searchPageData", abPd.getnPageData());
         request.setAttribute("searchPageNavi", abPd.getnPageNavi());
         request.setAttribute("search", search);
         views.forward(request, response);
      } else {
         response.sendRedirect("/views/notice/notice_Error.html");
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