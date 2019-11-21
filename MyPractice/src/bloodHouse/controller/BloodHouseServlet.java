package bloodHouse.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bloodHouse.model.service.BloodHouseService;
import bloodHouse.model.vo.PageData;


/**
 * Servlet implementation class BloodHouseServlet
 */
@WebServlet("/bloodHouse")
public class BloodHouseServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BloodHouseServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int currentPage=0;
		if(request.getParameter("currentPage")==null) {
			currentPage =1;
		}else {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		
		PageData pd = new BloodHouseService().bhList(currentPage);
		
		HttpSession session = request.getSession();
		
		
		
		if(!pd.getPageList().isEmpty()) {
			RequestDispatcher views = request.getRequestDispatcher("/views/bloodHouse/bloodHouse.jsp");
			request.setAttribute("pageData", pd);
			
			views.forward(request, response);
		}else {
			response.sendRedirect("/views/member/Error.html");
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
