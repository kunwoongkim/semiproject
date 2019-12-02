package donation.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import donation.model.service.DonationService;
import donation.model.vo.Donation;

/**
 * Servlet implementation class donationServlet
 */
@WebServlet("/donation.do")
public class donationServlet extends HttpServlet {
   private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public donationServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

   /**
    * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
    */
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      // TODO Auto-generated method stub
      // response.getWriter().append("Served at: ").append(request.getContextPath());
       
       String donationId = request.getParameter("donationId");
       String donationNickname = request.getParameter("donationNickname");
         String donationPg = request.getParameter("donationPg");
         int donationPay = Integer.parseInt(request.getParameter("donationPay"));
       
         Donation don = new Donation();
         
         don.setDonationId(donationId);
         don.setDonationNickname(donationNickname);
         don.setDonationPg(donationPg);
         don.setDonationPay(donationPay);
         
         int result = new DonationService().insertDonation(don);
         
         if ( result > 0) {
            response.sendRedirect("/views/payment/payment.jsp");

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