package bloodHouse.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bloodHouse.model.service.BloodHouseService;
import bloodHouse.model.vo.PageData;



/**
 * Servlet implementation class BloodHouseSearchServlet
 */
@WebServlet("/bloodHouseSearch")
public class BloodHouseSearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BloodHouseSearchServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("utf-8");

		String search = request.getParameter("search");
		int currentPage = 0;
		if (request.getParameter("currentPage") == null) {
			currentPage = 1;
		} else {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
			
		}
		PageData pd = new BloodHouseService().bhSearchList(currentPage, search);

		RequestDispatcher view = request.getRequestDispatcher("/views/bloodHouse/bloodHouse.jsp");
		request.setAttribute("pageData", pd);
		request.setAttribute("search", search);
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
