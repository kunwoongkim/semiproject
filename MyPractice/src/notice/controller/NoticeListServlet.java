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
 * Servlet implementation class NoticeListServlet
 */
@WebServlet("/noticeList.do")
public class NoticeListServlet extends HttpServlet {
   private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NoticeListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

   /**
    * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
    */
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      // TODO Auto-generated method stub
      // response.getWriter().append("Served at: ").append(request.getContextPath());
      
      request.setCharacterEncoding("UTF-8");
      
      int currentPage = 0;
      if(request.getParameter("currentPage")==null) {
         currentPage = 1; 
      }else {
         currentPage = Integer.parseInt(request.getParameter("currentPage"));
      }
      
      NoticePageData abPd = new NoticeService().selectAll(currentPage);
      
      if(!abPd.getnPageData().isEmpty()) {
         RequestDispatcher views = request.getRequestDispatcher("/views/notice/notice_List.jsp");
         request.setAttribute("nPageData", abPd.getnPageData());
         request.setAttribute("nPageNavi", abPd.getnPageNavi());
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