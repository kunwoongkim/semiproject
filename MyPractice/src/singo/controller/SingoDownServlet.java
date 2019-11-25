package singo.controller;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import singo.model.service.SingoService;
import singo.model.vo.Singo;

/**
 * Servlet implementation class SingoDownServlet
 */
@WebServlet("/singoDown")
public class SingoDownServlet extends HttpServlet {
   private static final long serialVersionUID = 1L;

   /**
    * @see HttpServlet#HttpServlet()
    */
   public SingoDownServlet() {
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

      int reportNo = Integer.parseInt(request.getParameter("reportNo"));
      Singo singo = new SingoService().selectReportNo(reportNo);

      String filename = singo.getFileName();
      String filepath = singo.getFilePath();
      
      //다운로드 넘 느려서 버퍼씀
      String saveDirectory = getServletContext().getRealPath("/upload/report/");
      BufferedInputStream bis = new BufferedInputStream(new FileInputStream(saveDirectory + filepath));
      ServletOutputStream sos = response.getOutputStream();
      BufferedOutputStream bos = new BufferedOutputStream(sos);
      // 브라우저가 IE인지 판단
      String resFilename = "";
      boolean bool = request.getHeader("user-agent").indexOf("MSIE") != -1
            || request.getHeader("user-agent").indexOf("Trident") != -1;
      System.out.println("IE여부 : " + bool);
      if (bool) { // 브라우저가 IE인경우
         resFilename = URLEncoder.encode(filename, "UTF-8");
         resFilename = resFilename.replaceAll("\\\\", "%20");
      } else { // 그외 브라우저의 경우
         resFilename = new String(filename.getBytes("UTF-8"), "ISO-8859-1");
      }
      // 파일 다운로드를 위한 HTTP Header설정
      response.setContentType("application/octet-stream");
      response.setHeader("Content-Disposition", "attachment;filename=" + resFilename);
      // 파일전송
      int read = -1;
      while ((read = bis.read()) != -1) {
         bos.write(read);
      }
      bos.close();
      bis.close();
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