package donation.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import donation.model.service.DonationService;
import donation.model.vo.Donation;

/**
 * Servlet implementation class doantionAll
 */
@WebServlet("/doantionAll.do")
public class donationAllServlet extends HttpServlet {
   private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public donationAllServlet() {
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
      
      ArrayList<Donation> donList = new DonationService().donationListAll();
      int donationCount = new DonationService().donationCount();
      if(donList != null) {
         RequestDispatcher views = request.getRequestDispatcher("/views/payment/donationAll.jsp");
         request.setAttribute("dList", donList);
         request.setAttribute("donationCount", donationCount);
         views.forward(request, response);
         
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