package donation.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import donation.model.service.DonationService;
import donation.model.vo.Donation;
import member.model.vo.Member;

/**
 * Servlet implementation class donationMyServlet
 */
@WebServlet("/donationMy.do")
public class donationMyServlet extends HttpServlet {
   private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public donationMyServlet() {
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
      /*String userId = request.getParameter("donationId");*/
       HttpSession session = request.getSession(false);
         
         if (session != null && session.getAttribute("member") != null) {
              String userId = ((Member) session.getAttribute("member")).getUserId();
              ArrayList<Donation> myList = new DonationService().donationMy(userId);
              int totalCount = new DonationService().donationMyCount(userId);
            
            if(myList != null) {
               RequestDispatcher views = request.getRequestDispatcher("/views/payment/donationMy.jsp");
               request.setAttribute("myList", myList);
               request.setAttribute("donationMyCount", totalCount);
               views.forward(request, response);
               
               }else {
               response.sendRedirect("/views/payment/donation_Error.html");
               }
         }else {
         response.sendRedirect("/views/payment/donation_Error.html");
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