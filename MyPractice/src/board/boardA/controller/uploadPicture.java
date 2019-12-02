package board.boardA.controller;

import java.io.File;
import java.io.IOException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.activation.FileDataSource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import board.boardA.model.Service.BoardService;
import board.boardA.model.vo.PictureData;
import member.model.vo.Member;

/**
 * Servlet implementation class uploadFile
 */
@WebServlet("/uploadPicture")
public class uploadPicture extends HttpServlet {
   private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public uploadPicture() {
        super();
        // TODO Auto-generated constructor stub
    }

   /**
    * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
    */
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      System.out.println("uploadpictureservlet 시작");
      HttpSession session = request.getSession(false);
      String userId = ((Member)session.getAttribute("member")).getUserId();
      
      int uploadFileSize = 5*1024*1024;
      String encType = "UTF-8";
      String uploadPath = "C:\\WebWorkspace\\MyPractice\\WebContent\\uploadimg" + userId;
      File dir = new File(uploadPath);
      if(!dir.exists()) {
         dir.mkdir();
      }
      
      MultipartRequest multi = new MultipartRequest(request , uploadPath , uploadFileSize , encType , new DefaultFileRenamePolicy());
      
      String pictureName = multi.getFilesystemName("uploadFile");
      File file = new File(uploadPath +"/" + pictureName);
      String picturePath = file.getPath();
      long pictureSize = file.length();
      
      
      PictureData pictureData = new PictureData();
      
      pictureData.setPictureName(pictureName);
      pictureData.setPicturePath(picturePath);
      pictureData.setPictureSize(pictureSize);
      pictureData.setUpUserId(userId);
      
      
      int result = new BoardService().uploadPicture(pictureData);
      
      if(pictureName == null && result < 0) {
         System.out.println("파일 업로드 실패");
      }else {
         RequestDispatcher views = request.getRequestDispatcher("/boardA");
         request.setAttribute("pictureData", pictureData);
         views.forward(request, response);
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