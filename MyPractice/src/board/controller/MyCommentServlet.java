package board.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import board.model.service.BoardService;
import board.model.vo.PageData;
import member.model.vo.Member;

/**
 * Servlet implementation class MyCommentServlet
 */
@WebServlet("/myComment")
public class MyCommentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyCommentServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		int currentPage =0;
		if (request.getParameter("currentPage")==null) {
			currentPage=1;
		}else {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}	
		
			HttpSession session = request.getSession();
			String userId =((Member) session.getAttribute("member")).getUserNickName();
			PageData pd = new BoardService().CommentAll(userId, currentPage);
			
			if(pd!=null) {
				
				RequestDispatcher view = request.getRequestDispatcher("/views/board/MyComment.jsp");
				request.setAttribute("pageData", pd);
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
