package notice.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import notice.model.service.NoticeService;
import notice.model.vo.Notice;

/**
 * Servlet implementation class NoticeWriteServlet
 */
@WebServlet("/noticeWrite.do")
public class NoticeWriteServlet extends HttpServlet {
   private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NoticeWriteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

   /**
    * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
    */
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      // TODO Auto-generated method stub
      // response.getWriter().append("Served at: ").append(request.getContextPath());
      // TODO Auto-generated method stub
            // response.getWriter().append("Served at: ").append(request.getContextPath());
            
            RequestDispatcher reqDispatcher = null;
            
            // ********************** 파일 업로드 로직 시작 ****************************
            
            // enctype="multipart/form-data"로 전송되었는지 확인
            if(!ServletFileUpload.isMultipartContent(request)) {
               reqDispatcher = request.getRequestDispatcher("/views/common/msg.jsp");
                     request.setAttribute("msg", "사진게시판 작성오류 [form:enctype] 관리자에게 문의하세요");
                     reqDispatcher.forward(request, response);
            }
            // 현재 웹 컨테이너에서 구동중인 웹 어플리케이션의 루트 절대경로 알아내기
            // Session 객체 -> Servlet Context 객체 -> 절대경로
            String root = request.getSession().getServletContext().getRealPath("/");
            String saveDirectory = root + "upload/noticePhoto";
            System.out.println("saveDirectory => " + saveDirectory);
            
            // 파일최대용량 : cos.jar 업로드 10MB 제한(무료버전)
            int maxSize = 1024*1024*10;
            
            // MultipartReqest 객체 생성 -> 자동파일업로드
            MultipartRequest mRequest = new MultipartRequest(request, saveDirectory, maxSize, "UTF-8", new DefaultFileRenamePolicy());
            
            // *********************** 파일 업로드 로직 끝 ******************************
            
            // 1. 파라미터 값 가져오기
            String userId = mRequest.getParameter("userId");
            String noticeTitle = mRequest.getParameter("title");
            String noticeWriter = mRequest.getParameter("writer");
            String noticeContent = mRequest.getParameter("p_content");
            
            String renamedFileName = mRequest.getFilesystemName("upfile");
            String originalFileName = mRequest.getOriginalFileName("upfile");
            
            // notice 객체 생성
            Notice nOne = new Notice();
            
            nOne.setUserId(userId);
            nOne.setTitle(noticeTitle);
            nOne.setUserNickname(noticeWriter);
            nOne.setBoardContent(noticeContent);
            nOne.setPhotoOriginalFilename(originalFileName);
            nOne.setPhotoRenamedFilename(renamedFileName);
            
            int result = new NoticeService().insertNotice(nOne);
            
            
            if ( result > 0) {
               response.sendRedirect("/noticeList.do");

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