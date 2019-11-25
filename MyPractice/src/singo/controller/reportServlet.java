package singo.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import singo.model.service.SingoService;
import singo.model.vo.Singo;

/**
 * Servlet implementation class reportServlet
 */
@WebServlet("/report")
public class reportServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public reportServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				
		
				request.setCharacterEncoding("UTF-8");
				String root = getServletContext().getRealPath("/");
				String saveDirectory = root + "upload/report";
				String reports = "접수";
				System.out.println(saveDirectory);
			
				int maxSize = 10 * 1024 * 1024;
				
				MultipartRequest mRequest = new MultipartRequest(request, saveDirectory, maxSize, "UTF-8",
						new DefaultFileRenamePolicy());
				Singo singo = new Singo();
				 singo.setTitle(mRequest.getParameter("title"));
				singo.setReportContent( mRequest.getParameter("contentarea"));
				singo.setReporterId( mRequest.getParameter("writer"));
				singo.setFileName(mRequest.getOriginalFileName("filename"));
				singo.setFilePath(mRequest.getFilesystemName("filename"));
				singo.setReportedId(mRequest.getParameter("report"));
				singo.setReportType(mRequest.getParameter("type"));
				singo.setReportSuccess(reports);
				int result = new SingoService().insertReport(singo);
				
				
				if (result > 0) {
					
					response.getWriter().write("success");
				}else {
					
					response.getWriter().write("false");
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
