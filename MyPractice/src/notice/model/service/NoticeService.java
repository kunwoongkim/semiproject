package notice.model.service;

import java.sql.Connection;

import common.JDBCTemplate;
import notice.model.dao.NoticeDao;
import notice.model.vo.Notice;
import notice.model.vo.NoticePageData;


public class NoticeService {

   public NoticePageData selectAll(int currentPage) {
      Connection conn = JDBCTemplate.getConnection();
      int recordCountPerPage = 10;
      int naviCountPerPage = 5;
      NoticePageData nPd = new NoticePageData();
      nPd.setnPageData(new NoticeDao().selectAll(conn, currentPage, recordCountPerPage));
      nPd.setnPageNavi(new NoticeDao().getnPageNavi(conn, currentPage,recordCountPerPage , naviCountPerPage));
      JDBCTemplate.close(conn);
      
      return nPd;
   }
   
   public Notice selectContent(int boardNo) {
      Connection conn = JDBCTemplate.getConnection();
      Notice boardOne = new NoticeDao().selectContent(conn, boardNo);
      JDBCTemplate.close(conn);
      
      return boardOne;
   }
   
   public int noticeDelete(int noticeNo) {
      Connection conn = JDBCTemplate.getConnection();
      int result = new NoticeDao().noticeDelete(conn, noticeNo);
      JDBCTemplate.close(conn);
      
      return result;
   }
   
   public int insertNotice (Notice nOne) {
      Connection conn = JDBCTemplate.getConnection();
      int result = new NoticeDao().insertNotice(conn, nOne);
      JDBCTemplate.close(conn);
      
      return result;
   }
   
   /*수정*/
   public int updateNotice (Notice nOne) {
      Connection conn = JDBCTemplate.getConnection();
      int result = new NoticeDao().updateNotice(conn, nOne);
      JDBCTemplate.close(conn);
      
      return result;
   }
   
   /*제목검색*/
   public NoticePageData searchTitle(String search, int currentPage) {
      
      Connection conn = JDBCTemplate.getConnection();
      int recordCountPerPage = 10;
      int naviCountPerPage = 5;
      
      NoticePageData nPd = new NoticePageData();
      nPd.setnPageData(new NoticeDao().searchTitle(conn, currentPage, recordCountPerPage, search));
      nPd.setnPageNavi(new NoticeDao().getSearchTitlePageNavi(conn, currentPage,recordCountPerPage , naviCountPerPage, search));
      JDBCTemplate.close(conn);
      
      return nPd;
   }
   
   /*조회수*/
   public int clickCount (int boardNo) {
      Connection conn = JDBCTemplate.getConnection();
      int result = new NoticeDao().clickCount(conn, boardNo);
      JDBCTemplate.close(conn);
      
      
   return result;
   }
   

   
   
}