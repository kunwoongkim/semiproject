package bloodDonation.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bloodDonation.model.service.BloodDonationService;
import bloodDonation.model.vo.BloodDonation;
import bloodDonation.model.vo.PageData;

/**
 * Servlet implementation class BloodDonationServlet
 */
@WebServlet("/bloodDonation")
public class BloodDonationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public BloodDonationServlet() {
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

		request.setCharacterEncoding("utf-8");

		int currentPage = 0;

		if (request.getParameter("currentPage") == null) {
			currentPage = 1;
		} else {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}

		PageData pd = new BloodDonationService().donationList(currentPage);
		HttpSession session = request.getSession();

		if (!pd.getPageList().isEmpty()) {
			RequestDispatcher views = request.getRequestDispatcher("/views/bloodDonation/bloodDonation.jsp");
			request.setAttribute("pageData", pd);
			views.forward(request, response);
		} else {
			response.sendRedirect("/views/member/Error.html");
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
