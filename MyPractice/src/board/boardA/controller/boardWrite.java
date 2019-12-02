package board.boardA.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import board.boardA.model.Service.BoardService;
import board.boardA.model.vo.Board;
import member.model.vo.Member;

/**
 * Servlet implementation class boardWrite
 */
@WebServlet("/boardAWrite")
public class boardWrite extends HttpServlet {
   private static final long serialVersionUID = 1L;

   /**
    * @see HttpServlet#HttpServlet()
    */
   public boardWrite() {
      super();
      // TODO Auto-generated constructor stub
   }

   /**
    * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
    *      response)
    */
   protected void doGet(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {
      
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
        String saveDirectory = root + "upload/boardPhoto";
     
        // 파일최대용량 : cos.jar 업로드 10MB 제한(무료버전)
        int maxSize = 1024*1024*10;
        
        // MultipartReqest 객체 생성 -> 자동파일업로드
        MultipartRequest mRequest = new MultipartRequest(request, saveDirectory, maxSize, "UTF-8", new DefaultFileRenamePolicy());
        
        // *********************** 파일 업로드 로직 끝 ******************************
        
        // 1. 파라미터 값 가져오기
        String boardType = mRequest.getParameter("boardType");
        String boardTitle = mRequest.getParameter("subject");
        String boardContent = mRequest.getParameter("content");
        String renamedFileName = mRequest.getFilesystemName("upfile");
        String originalFileName = mRequest.getOriginalFileName("upfile");
        String boardNickName = mRequest.getParameter("boardNickName");
        String boardId = mRequest.getParameter("boardId");
        
        // notice 객체 생성
        Board board = new Board();
        
        board.setTitle(boardTitle);
        board.setBoardContent(boardContent);
        board.setPhotoOriginFilename(originalFileName);
        board.setPhotoRenameFilename(renamedFileName);
        board.setUserNickName(boardNickName);
        board.setUserId(boardId);
        board.setBoardType(boardType);
        int result = new BoardService().boardWrite(board);
        
        
        if ( result > 0) {
          response.sendRedirect(("/boardA?boardType=" + boardType));
          /* request.setAttribute("boardType", boardType);
           view.forward(request, response);*/
        }else {
           response.sendRedirect("/views/board_A/board_Error.html?boardType=" + boardType);
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