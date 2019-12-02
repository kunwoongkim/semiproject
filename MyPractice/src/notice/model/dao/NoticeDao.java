package notice.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import common.JDBCTemplate;
import notice.model.vo.Notice;

public class NoticeDao {
   /*search Title or searchContent*/
   public ArrayList<Notice> searchTitle (Connection conn, int currentPage, int recordCountPerPage, String search) {
      
      
      PreparedStatement pstmt = null;
      ResultSet rset = null;
      ArrayList<Notice> nList = new ArrayList<Notice>();
         
         String query = "SELECT * FROM(SELECT ROW_NUMBER() OVER(ORDER BY BOARD_NUMBER ASC)AS DNUM , ROW_NUMBER() OVER (ORDER BY BOARD_NUMBER DESC) AS NUM, NOTICE.* FROM NOTICE WHERE TITLE LIKE ?)WHERE NUM BETWEEN ? AND ?";
         
         int start = currentPage * recordCountPerPage - (recordCountPerPage - 1);
         int end = currentPage * recordCountPerPage;
         
         try {
            pstmt = conn.prepareStatement(query);
            pstmt.setString(1, "%"+search+"%");
            pstmt.setInt(2, start);
            pstmt.setInt(3, end);
            rset = pstmt.executeQuery();
            
            while(rset.next()) {
               Notice nOne = new Notice();
               
               nOne.setdNum(rset.getInt("DNUM"));
               nOne.setBoardNumber(rset.getInt("BOARD_NUMBER"));
               nOne.setTitle(rset.getString("TITLE"));
               nOne.setUserNickname(rset.getString("USER_NICKNAME"));
               nOne.setMakeDate(rset.getDate("MAKE_DATE"));
               nOne.setClickCount(rset.getInt("CLICK_COUNT"));
               nOne.setUserId(rset.getString("USER_ID"));
               nOne.setBoardType(rset.getString("BOARD_TYPE"));
               nOne.setBoardPublic(rset.getString("BOARD_PUBLIC"));
               nOne.setBoardContent(rset.getString("BOARD_CONTENT"));
               nList.add(nOne);
            }
            
         } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
         }finally{
            JDBCTemplate.close(rset);
            JDBCTemplate.close(pstmt);
         }
      
      return nList;
   }
   
   public String getSearchTitlePageNavi (Connection conn, int currentPage, int recordCountPerPage, int naviCountPerPage, String search) {
      int recordTotalCount = titleTotalCount(conn, search);
      int pageTotalCount = 0; // 전체 페이지 개수

      // 만들 전체페이지의 개수
      if (recordTotalCount % recordCountPerPage > 0) {
         pageTotalCount = recordTotalCount / recordCountPerPage + 1;
      } else {
         pageTotalCount = recordTotalCount / recordCountPerPage;
      }

      if (currentPage < 1) {
         currentPage = 1;
      } else if (currentPage > pageTotalCount) {
         currentPage = pageTotalCount;
      }

      // 현재 내페이지가 3페이지면, 1~5 4페이지도 1~5
      // 6페이지면 6~10, 8 페이지도 6~0
      int startNavi = ((currentPage - 1) / naviCountPerPage) * naviCountPerPage + 1;
      // ex) 8페이지일 경우 -> 6~10이 나와야함
      // ((8-1)/5)*5+1 => 6
      int endNavi = startNavi + naviCountPerPage - 1;
      // 6+5-1 => 10

      if (endNavi > pageTotalCount) {
         endNavi = pageTotalCount;
      }

      // '<' 모양과 '>' 모양을 준비하기 위해
      // 변수와 검증을 진행하기 위한 논리형 변수
      boolean needPrev = true;
      boolean needNext = true;

      if (startNavi == 1) {
         needPrev = false;
      }
      if (endNavi == pageTotalCount) {
         needNext = false;
      }

      // 이후에는 모양을 만드는 것!
      StringBuilder sb = new StringBuilder();
      if (needPrev) {
         sb.append("<a href='/noticeSearch.do?searchType=st1&search="+search+"&currentPage=" + (startNavi - 1) + "'>< </a>");
      }
      // ===================================================================
      for (int i = startNavi; i <= endNavi; i++) {
         if (i == currentPage) {
            sb.append("<a href='/noticeSearch.do?searchType=st1&search="+search+"&currentPage=" + i + "'><b>" + i + "</b></a>");
         } else {
            sb.append("<a href='/noticeSearch.do?searchType=st1&search="+search+"&currentPage=" + i + "'>" + i + "</a>");
         }
      }
      // ===================================================================
      if (needNext) {
         sb.append("<a href='//noticeSearch.do?searchType=st1&search="+search+"&currentPage=" + (endNavi + 1) + "'> ></a>");
      }

      return sb.toString();
   }
   
   
   public int titleTotalCount(Connection conn, String search) {
      
      
      PreparedStatement pstmt = null;
      ResultSet rset = null;
      int recordTotalCount = 0;
      
         String query = "SELECT COUNT(*) AS totalCount FROM NOTICE WHERE TITLE LIKE ?";
         try {
            pstmt = conn.prepareStatement(query);
            pstmt.setString(1, "%"+search+"%");
            rset = pstmt.executeQuery();
            rset.next();
            recordTotalCount = rset.getInt("totalCount");
         } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
         } finally {
            JDBCTemplate.close(rset);
            JDBCTemplate.close(pstmt);
         }
      

      
      return recordTotalCount;
   }
   
   
   
   
   
   
   /*noticeAll List*/
   public ArrayList<Notice> selectAll (Connection conn, int currentPage, int recordCountPerPage) {
      PreparedStatement pstmt = null;
      ResultSet rset = null;
      ArrayList<Notice> abList = new ArrayList<Notice>();
      
      String query = "SELECT * FROM(SELECT ROW_NUMBER() OVER(ORDER BY BOARD_NUMBER ASC)AS DNUM , ROW_NUMBER() OVER (ORDER BY BOARD_NUMBER DESC) AS NUM, NOTICE.* FROM NOTICE)WHERE NUM BETWEEN ? AND ?";
      
      int start = currentPage * recordCountPerPage - (recordCountPerPage - 1);
      int end = currentPage * recordCountPerPage;
      
      try {
         pstmt = conn.prepareStatement(query);
         pstmt.setInt(1, start);
         pstmt.setInt(2, end);
         rset = pstmt.executeQuery();
         
         while(rset.next()) {
            Notice abOne = new Notice();
            
            abOne.setdNum(rset.getInt("DNUM"));
            abOne.setBoardNumber(rset.getInt("BOARD_NUMBER"));
            abOne.setTitle(rset.getString("TITLE"));
            abOne.setUserNickname(rset.getString("USER_NICKNAME"));
            abOne.setMakeDate(rset.getDate("MAKE_DATE"));
            abOne.setClickCount(rset.getInt("CLICK_COUNT"));
            abOne.setUserId(rset.getString("USER_ID"));
            abOne.setBoardType(rset.getString("BOARD_TYPE"));
            abOne.setBoardPublic(rset.getString("BOARD_PUBLIC"));
            abOne.setBoardContent(rset.getString("BOARD_CONTENT"));
            abList.add(abOne);
         }
         
      } catch (SQLException e) {
         // TODO Auto-generated catch block
         e.printStackTrace();
      }finally{
         JDBCTemplate.close(rset);
         JDBCTemplate.close(pstmt);
      }
      
      
      return abList;
   }
   
   public String getnPageNavi (Connection conn, int currentPage, int recordCountPerPage, int naviCountPerPage) {
      int recordTotalCount = totalCount(conn);
      int pageTotalCount = 0; // 전체 페이지 개수

      // 만들 전체페이지의 개수
      if (recordTotalCount % recordCountPerPage > 0) {
         pageTotalCount = recordTotalCount / recordCountPerPage + 1;
      } else {
         pageTotalCount = recordTotalCount / recordCountPerPage;
      }

      if (currentPage < 1) {
         currentPage = 1;
      } else if (currentPage > pageTotalCount) {
         currentPage = pageTotalCount;
      }

      // 현재 내페이지가 3페이지면, 1~5 4페이지도 1~5
      // 6페이지면 6~10, 8 페이지도 6~0
      int startNavi = ((currentPage - 1) / naviCountPerPage) * naviCountPerPage + 1;
      // ex) 8페이지일 경우 -> 6~10이 나와야함
      // ((8-1)/5)*5+1 => 6
      int endNavi = startNavi + naviCountPerPage - 1;
      // 6+5-1 => 10

      if (endNavi > pageTotalCount) {
         endNavi = pageTotalCount;
      }

      // '<' 모양과 '>' 모양을 준비하기 위해
      // 변수와 검증을 진행하기 위한 논리형 변수
      boolean needPrev = true;
      boolean needNext = true;

      if (startNavi == 1) {
         needPrev = false;
      }
      if (endNavi == pageTotalCount) {
         needNext = false;
      }

      // 이후에는 모양을 만드는 것!
      StringBuilder sb = new StringBuilder();
      if (needPrev) {
         sb.append("<a href='/noticeList.do?currentPage=" + (startNavi - 1) + "'>< </a>");
      }
      // ===================================================================
      for (int i = startNavi; i <= endNavi; i++) {
         if (i == currentPage) {
            sb.append("<a href='/noticeList.do?currentPage=" + i + "'><b>" + i + "</b></a>");
         } else {
            sb.append("<a href='/noticeList.do?currentPage=" + i + "'>" + i + "</a>");
         }
      }
      // ===================================================================
      if (needNext) {
         sb.append("<a href='/noticeList.do?currentPage=" + (endNavi + 1) + "'> ></a>");
      }

      return sb.toString();
   }
   
   
   public int totalCount(Connection conn) {

      PreparedStatement pstmt = null;
      ResultSet rset = null;

      int recordTotalCount = 0;

      String query = "SELECT COUNT(*) AS totalCount FROM NOTICE";

      try {
         pstmt = conn.prepareStatement(query);
         rset = pstmt.executeQuery();
         rset.next();
         recordTotalCount = rset.getInt("totalCount");
      } catch (SQLException e) {
         // TODO Auto-generated catch block
         e.printStackTrace();
      } finally {
         JDBCTemplate.close(rset);
         JDBCTemplate.close(pstmt);
      }
      return recordTotalCount;
   }
   
   /*게시판 내용 확인*/
   public Notice selectContent(Connection conn, int boardNo) {
      Notice boardOne = null;
      PreparedStatement pstmt = null;
      ResultSet rset = null;
      
      String query="SELECT * FROM NOTICE WHERE BOARD_NUMBER=? AND BOARD_TYPE='NOTICE'";
      
      try {
         pstmt = conn.prepareStatement(query);
         pstmt.setInt(1, boardNo);
         rset = pstmt.executeQuery();
         
         if(rset.next()) {
            boardOne = new Notice();
            
            boardOne.setBoardNumber(rset.getInt("BOARD_NUMBER"));
            boardOne.setTitle(rset.getString("TITLE"));
            boardOne.setUserNickname(rset.getString("USER_NICKNAME"));
            boardOne.setMakeDate(rset.getDate("MAKE_DATE"));
            boardOne.setClickCount(rset.getInt("CLICK_COUNT"));
            boardOne.setUserId(rset.getString("USER_ID"));
            boardOne.setBoardType(rset.getString("BOARD_TYPE"));
            boardOne.setBoardPublic(rset.getString("BOARD_PUBLIC"));
            boardOne.setBoardContent(rset.getString("BOARD_CONTENT"));
            boardOne.setPhotoOriginalFilename(rset.getString("PHOTOORIGINALFILENAME"));
            boardOne.setPhotoRenamedFilename(rset.getString("PHOTORENAMEDFILENAME"));
         }
         
      } catch (SQLException e) {
         // TODO Auto-generated catch block
         e.printStackTrace();
      }finally {
         JDBCTemplate.close(rset);
         JDBCTemplate.close(pstmt);
      }
      
      
      return boardOne;
   }
   
   public int noticeDelete(Connection conn, int noticeNo) {
      PreparedStatement pstmt = null;
      int result = 0;
      
      String query="DELETE FROM NOTICE WHERE BOARD_NUMBER=?";
      
      try {
         pstmt = conn.prepareStatement(query);
         pstmt.setInt(1, noticeNo);
         
         result = pstmt.executeUpdate();
         
      } catch (SQLException e) {
         // TODO Auto-generated catch block
         e.printStackTrace();
      }finally {
         JDBCTemplate.close(pstmt);
      }
      
      
      return result;
   }
   
   public int insertNotice (Connection conn, Notice nOne) {
      PreparedStatement pstmt = null;
      int result = 0;
      
      String query="INSERT INTO NOTICE VALUES(NOTICE_NO.NEXTVAL,?,?,?,SYSDATE,?,'Y','NOTICE',0,?,?)";
      
      try {
         pstmt = conn.prepareStatement(query);
         pstmt.setString(1, nOne.getUserId());
         pstmt.setString(2, nOne.getUserNickname());
         pstmt.setString(3, nOne.getBoardContent());
         pstmt.setString(4, nOne.getTitle());
         pstmt.setString(5, nOne.getPhotoOriginalFilename());
         pstmt.setString(6, nOne.getPhotoRenamedFilename());
         
         result = pstmt.executeUpdate();
         
      } catch (SQLException e) {
         // TODO Auto-generated catch block
         e.printStackTrace();
      }finally {
         JDBCTemplate.close(conn);
      }
      
      
   return result;
   }
   
   
   /*Modify*/
   

   public int updateNotice (Connection conn, Notice nOne) {
      PreparedStatement pstmt = null;
      int result = 0;
      
      String query="UPDATE NOTICE SET BOARD_CONTENT=?, TITLE=?, MAKE_DATE=SYSDATE, PHOTORENAMEDFILENAME=? WHERE BOARD_NUMBER=?";
      
      try {
         pstmt = conn.prepareStatement(query);
         pstmt.setString(1, nOne.getBoardContent());
         pstmt.setString(2, nOne.getTitle());
         pstmt.setString(3, nOne.getPhotoRenamedFilename());
         pstmt.setInt(4, nOne.getBoardNumber());
         
         
         result = pstmt.executeUpdate();
         
      } catch (SQLException e) {
         // TODO Auto-generated catch block
         e.printStackTrace();
      }finally {
         JDBCTemplate.close(conn);
      }
      
      
   return result;
   }
   
   
   /*clickCount*/
   public int clickCount(Connection conn, int boardNo) {
      PreparedStatement pstmt = null;
      int result = 0;
      
      String query="UPDATE NOTICE SET CLICK_COUNT=CLICK_COUNT+1 WHERE BOARD_NUMBER=?";
      
      try {
         pstmt = conn.prepareStatement(query);
         pstmt.setInt(1, boardNo);

         result = pstmt.executeUpdate();
         
      } catch (SQLException e) {
         // TODO Auto-generated catch block
         e.printStackTrace();
      }finally {
         JDBCTemplate.close(conn);
      }
      
      
   return result;
   }
   
}