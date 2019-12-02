package board.boardA.model.Dao;

import java.io.StringReader;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import board.boardA.controller.board;
import board.boardA.model.vo.Board;

import board.boardA.model.vo.PictureData;
import board.boardA.model.vo.BoardComment;
import common.JDBCTemplate;

public class BoardDao {

   public ArrayList<Board> selectAll(Connection conn, int currentPage, int countperPage , String boardType) {
      
      ArrayList<Board> bList = new ArrayList<Board>();
      PreparedStatement pstmt = null;
      ResultSet rset = null;
      
      int start = currentPage * countperPage - (countperPage - 1);
      int end = currentPage * countperPage;

      String query = "SELECT * FROM (SELECT ROW_NUMBER() OVER(ORDER BY BOARD_NUMBER ASC) AS DNUM , ROW_NUMBER() OVER(ORDER BY BOARD_NUMBER DESC) AS NUM , BOARD.* FROM BOARD WHERE BOARD_TYPE = ?)WHERE NUM BETWEEN ? AND ?";

      try {
         pstmt = conn.prepareStatement(query);
         pstmt.setString(1, boardType);
         pstmt.setInt(2, start);
         pstmt.setInt(3, end);
         

         rset = pstmt.executeQuery();

         while (rset.next()) {
            Board board = new Board();
            
            board.setdNum(rset.getInt("DNUM"));
            board.setBoardNumber(rset.getInt("BOARD_NUMBER"));
            board.setUserId(rset.getString("USER_ID"));
            board.setUserNickName(rset.getString("USER_NICKNAME"));
            board.setBoardContent(rset.getString("BOARD_CONTENT"));
            board.setMakeDate(rset.getTimestamp("MAKE_DATE"));
            board.setTitle(rset.getString("TITLE"));
            board.setBoardPublic(rset.getString("BOARD_PUBLIC"));
            board.setBoardType(rset.getString("BOARD_TYPE"));
            board.setClickCount(rset.getInt("CLICK_COUNT"));
            board.setModDate(rset.getTimestamp("MOD_DATE"));

            bList.add(board);

         }
      } catch (SQLException e) {
         e.printStackTrace();
      } finally {
         JDBCTemplate.close(rset);
         JDBCTemplate.close(pstmt);
      }
      System.out.println("DAO : "+bList.size());
      return bList;
   }

   public String NaviCount(Connection conn, int currentPage, int countperPage, int naviCountPerPage , String boardType) {

      PreparedStatement pstmt = null;
      ResultSet rset = null;

      int recordtotalCount = 0;
      
      String query = "SELECT COUNT(*) AS totalCount FROM BOARD WHERE BOARD_TYPE = ?";

      try {
         pstmt = conn.prepareStatement(query);
         pstmt.setString(1, boardType);
         rset = pstmt.executeQuery();
         rset.next();
         recordtotalCount = rset.getInt("totalCount");
      } catch (SQLException e) {
         e.printStackTrace();
      } finally {
         JDBCTemplate.close(pstmt);
         JDBCTemplate.close(rset);
      }
            
      
      
      int pageTotalCount = 0;

      if (recordtotalCount % countperPage > 0) {
         pageTotalCount = recordtotalCount / countperPage + 1;
      } else {
         pageTotalCount = recordtotalCount / countperPage;
      }

      if (currentPage < 1) {
         currentPage = 1;
      } else if (currentPage > pageTotalCount) {
         currentPage = pageTotalCount;
      }

      int StartNavi = ((currentPage - 1) / naviCountPerPage) * naviCountPerPage + 1;
      int EndNavi = StartNavi + naviCountPerPage - 1;

      if (EndNavi > pageTotalCount) {
         EndNavi = pageTotalCount;
      }

      
      StringBuilder sb = new StringBuilder();
   
      
      sb.append("<div class = 'pagination d-flex justify-content-center'>");

      if (StartNavi < naviCountPerPage) {
         sb.append("<a class = 'hidden' href ='#' aria-label='Previous'><span aria-hidden = 'true'></span></a>");
      }else{
         sb.append("<a href ='/boardA?currentPage=" + (StartNavi - naviCountPerPage) +"&boardType="+boardType+ "' aria-label ='Previous'><span aria-hidden='true'>&laquo;</span></a>");
      }
      
      for (int i = StartNavi; i <= EndNavi; i++) {
         
         if (i == currentPage) {
         sb.append("<a class='active' href =/boardA?currentPage="+ i +"&boardType="+boardType+">"+i+"</a>");
         }else {
            sb.append("<a href =/boardA?currentPage="+ i +"&boardType="+boardType+">"+i+"</a>");
         }
      }
      
      if(EndNavi < pageTotalCount) {
         sb.append("<a href=/boardA?currentPage=" +(EndNavi + 1) +"&boardType="+boardType+" aria-label ='Next'><span aria-hidden ='true'>&raquo;</span></a>");
      }else {
         sb.append("<a class ='hidden' href='#' aria-label = 'Next'><span aria-hidden ='true'></span></a>");
      }
   
         
         sb.append("</div>");
         
      return sb.toString();   
   }

   
   public Board boardASelect(Connection conn , int boardNumber){
      PreparedStatement pstmt = null;
      ResultSet rset = null;
      Board board = null;
      String query = "SELECT * FROM BOARD WHERE BOARD_NUMBER = ?";
      
      try {
         pstmt = conn.prepareStatement(query);
         pstmt.setInt(1, boardNumber);
      
         
         rset = pstmt.executeQuery();
         
         if(rset.next()) {
         board = new Board();
         
         
         board.setBoardNumber(rset.getInt("BOARD_NUMBER") );
         board.setUserId(rset.getString("USER_ID"));
         board.setUserNickName(rset.getString("USER_NICKNAME"));
         board.setBoardContent(rset.getString("BOARD_CONTENT"));
         board.setMakeDate(rset.getTimestamp("MAKE_DATE"));
         board.setTitle(rset.getString("TITLE"));
         board.setBoardPublic(rset.getString("BOARD_PUBLIC"));
         board.setBoardType(rset.getString("BOARD_TYPE"));
         board.setClickCount(rset.getInt("CLICK_COUNT"));
         board.setModDate(rset.getTimestamp("MOD_DATE"));
         board.setPhotoOriginFilename(rset.getString("ORIGIN_FILENAME"));
         board.setPhotoRenameFilename(rset.getString("RE_FILENAME"));
         
         }
      } catch (SQLException e) {
         e.printStackTrace();
      }finally {
         JDBCTemplate.close(rset);
         JDBCTemplate.close(pstmt);
      }
      return board;
   }
   
   public int boardWrite(Connection conn , Board board) { 
      
      PreparedStatement pstmt = null;
      int result = 0;
      
      String query = "INSERT INTO BOARD VALUES(BOARDNO.NEXTVAL, ? , ? , ? , SYSDATE , ? , DEFAULT , ? , DEFAULT , NULL , ? , ?)";
      
      try {
         conn.setAutoCommit(false);
         
         
         pstmt = conn.prepareStatement(query);
         pstmt.setString(1, board.getUserId());
         pstmt.setString(2, board.getUserNickName());
         pstmt.setString(3 , board.getBoardContent());
         pstmt.setString(4, board.getTitle());
         pstmt.setString(5, board.getBoardType());
         pstmt.setString(6, board.getPhotoOriginFilename());
         pstmt.setString(7, board.getPhotoRenameFilename());
         
         
         result = pstmt.executeUpdate();
         
      } catch (SQLException e) {
         e.printStackTrace();
      }finally {
         JDBCTemplate.close(pstmt);
      }
      return result;
   }
   
   public int pictureUpload (Connection conn , PictureData pictureData) {
      PreparedStatement pstmt = null;
      int result = 0;
      
      String query = "INSERT INTO UP_PICTURE VALUES(? , ? , ? , ? )";
      
      try {
         pstmt = conn.prepareStatement(query);
         pstmt.setString(1, pictureData.getPictureName());
         pstmt.setString(2 , pictureData.getPicturePath());
         pstmt.setLong(3, pictureData.getPictureSize());
         pstmt.setString(4, pictureData.getUpUserId());
         
         
         result = pstmt.executeUpdate();
         
      } catch (SQLException e) {
         e.printStackTrace();
      }finally{
         JDBCTemplate.close(pstmt);
      }
      return result;
   }
   
   public int boardUpdate(Connection conn , Board board) {
      PreparedStatement pstmt = null;
      int result = 0;
      
      String query = "UPDATE BOARD SET  BOARD_CONTENT = ? , MOD_DATE = SYSDATE , TITLE = ? , RE_FILENAME = ? WHERE BOARD_NUMBER =?";
      
      try {
         pstmt = conn.prepareStatement(query);
         pstmt.setString(1, board.getBoardContent());
         pstmt.setString(2, board.getTitle());
         pstmt.setString(3, board.getPhotoRenameFilename());
         pstmt.setInt(4, board.getBoardNumber());
         
         result = pstmt.executeUpdate();
      } catch (SQLException e) {
         e.printStackTrace();
      }finally {
         JDBCTemplate.close(pstmt);
      }
      return result;
   }
   
   public int boardDelete(Connection conn , int boardNumber) {
      PreparedStatement pstmt = null;
      int result = 0;
      
      String query = "DELETE FROM BOARD WHERE BOARD_NUMBER = ?";
      
      try {
         pstmt = conn.prepareStatement(query);
         pstmt.setInt(1, boardNumber);
         
         result = pstmt.executeUpdate();
      } catch (SQLException e) {
         e.printStackTrace();
      }finally {
         JDBCTemplate.close(pstmt);
      }
      return result;
      
      }
   
   public ArrayList<BoardComment> boardCommentAll(Connection conn , int boardNumber){
      PreparedStatement pstmt = null;
      ResultSet rset = null;
      ArrayList<BoardComment> cList = new ArrayList<BoardComment>();
      String query  = "SELECT * FROM BOARD_COMMENT WHERE COMMENT_SUBNO = ?";
      
      try {
         pstmt = conn.prepareStatement(query);
         pstmt.setInt(1, boardNumber);
      
         rset = pstmt.executeQuery();
         
         while(rset.next()) {
            BoardComment bc = new BoardComment();
            
            bc.setCommentNo(rset.getInt("COMMENT_NO"));
            bc.setCommentNickName(rset.getString("COMMENT_NICKNAME"));
            bc.setCommentContent(rset.getString("COMMENT_CONTENT"));
            bc.setCommentLevel(rset.getInt("COMMENT_LEVEL"));
            bc.setCommentSubNo(rset.getInt("COMMENT_SUBNO"));
            bc.setRecommentSubNo(rset.getInt("RE_COMMENT_SUBNO"));
            
            cList.add(bc);
                  
            
         }
      } catch (SQLException e) {
         e.printStackTrace();
      }finally {
         JDBCTemplate.close(rset);
         JDBCTemplate.close(pstmt);
      }
            return cList;
   }

   public int insertComment(Connection conn , BoardComment bc) {
      PreparedStatement pstmt = null;
      int result = 0;
      
      String query = "INSERT INTO BOARD_COMMENT VALUES(COMMENTNO.NEXTVAL , ? , ? , ? , ? , ?)";
      
      try {
         pstmt = conn.prepareStatement(query);
         pstmt.setString(1, bc.getCommentNickName());
         pstmt.setString(2, bc.getCommentContent());
         pstmt.setInt(3, bc.getCommentLevel());
         pstmt.setInt(4, bc.getCommentSubNo());
         pstmt.setString(5, bc.getRecommentSubNo()==0?null:String.valueOf(bc.getRecommentSubNo()));
         
         result = pstmt.executeUpdate();
      } catch (SQLException e) {
         e.printStackTrace();
      }finally {
         JDBCTemplate.close(pstmt);
      }
      return result;
   }
   
   public int boardViewCount(Connection conn , int boardNumber) {
      PreparedStatement pstmt = null;
      int result = 0;
      
      String query = "UPDATE BOARD SET CLICK_COUNT = CLICK_COUNT+1 WHERE BOARD_NUMBER = ?";
      
      try {
         pstmt = conn.prepareStatement(query);
         pstmt.setInt(1, boardNumber);
         
         result = pstmt.executeUpdate();
      } catch (SQLException e) {
         e.printStackTrace();
      }finally {
         JDBCTemplate.close(pstmt);
      }
      return result;
   }
   

   public ArrayList<Board> boardSearchList(Connection conn , int currentPage , int countPerPage , String searchType , String searchContent ,String boardType){
      PreparedStatement pstmt = null;
      ResultSet rset = null;
      ArrayList<Board> blist = new ArrayList<Board>();
      
      int start = currentPage * countPerPage - (countPerPage - 1);
      int end = currentPage * countPerPage;
      try {
      String query1 ="SELECT * FROM (SELECT ROW_NUMBER() OVER(ORDER BY BOARD_NUMBER ASC) AS DNUM , ROW_NUMBER() OVER(ORDER BY BOARD_NUMBER DESC) AS NUM , BOARD.* FROM BOARD WHERE TITLE LIKE ? and BOARD_TYPE =  ?) WHERE NUM BETWEEN ? AND ?";
      String query2 ="SELECT * FROM (SELECT ROW_NUMBER() OVER(ORDER BY BOARD_NUMBER ASC) AS DNUM , ROW_NUMBER() OVER(ORDER BY BOARD_NUMBER DESC) AS NUM , BOARD.* FROM BOARD WHERE USER_NICKNAME LIKE ? and BOARD_TYPE = ?) WHERE NUM BETWEEN ? AND ?";
      String query3 ="SELECT * FROM (SELECT ROW_NUMBER() OVER(ORDER BY BOARD_NUMBER ASC) AS DNUM , ROW_NUMBER() OVER(ORDER BY BOARD_NUMBER DESC) AS NUM , BOARD.* FROM BOARD WHERE BOARD_CONTENT LIKE ? and BOARD_TYPE = ?) WHERE NUM BETWEEN ? AND ?";
      
      if(searchType.equals("title")) {
         
      
         pstmt = conn.prepareStatement(query1);
         pstmt.setString(1, "%"+ searchContent + "%");
         pstmt.setString(2, boardType);
         pstmt.setInt(3, start);
         pstmt.setInt(4, end);
      
         }
      
      if(searchType.equals("writer")) {
         
   
            
            pstmt = conn.prepareStatement(query2);
            pstmt.setString(1, "%"+ searchContent + "%");
            pstmt.setString(2, boardType);
            pstmt.setInt(3, start);
            pstmt.setInt(4, end);
            
         }   
      if(searchType.equals("content")) {
         
      
            pstmt = conn.prepareStatement(query3);
            pstmt.setString(1, "%"+ searchContent + "%");
            pstmt.setString(2, boardType);
            pstmt.setInt(3, start);
            pstmt.setInt(4, end);
      
      }
      
         rset = pstmt.executeQuery();
         
         while(rset.next()) {
            Board board = new Board();
            
            board.setdNum(rset.getInt("DNUM"));
            board.setBoardNumber(rset.getInt("BOARD_NUMBER"));
            board.setUserId(rset.getString("USER_ID"));
            board.setUserNickName(rset.getString("USER_NICKNAME"));
            board.setBoardContent(rset.getString("BOARD_CONTENT"));
            board.setMakeDate(rset.getTimestamp("MAKE_DATE"));
            board.setTitle(rset.getString("TITLE"));
            board.setBoardPublic(rset.getString("BOARD_PUBLIC"));
            board.setBoardType(rset.getString("BOARD_TYPE"));
            board.setClickCount(rset.getInt("CLICK_COUNT"));
            board.setModDate(rset.getTimestamp("MOD_DATE"));

            blist.add(board);
            
         }
      
   }catch (SQLException e) {
            e.printStackTrace();
         }finally {
            JDBCTemplate.close(rset);
            JDBCTemplate.close(pstmt);
         }   
         return blist;      

}
      
   
   
   public String boardSearchNavi(Connection conn , int currentPage , int countperPage , int naviCountPerPage , String searchType , String searchContent , String boardType) {
      PreparedStatement pstmt = null;
      ResultSet rset = null;
      int recordTotalCount = 0;
      StringBuilder sb = new StringBuilder();
      String query1 = "SELECT COUNT(*) AS totalCount FROM BOARD WHERE TITLE LIKE ? AND BOARD_TYPE = ?";
      String query2 = "SELECT COUNT(*) AS totalCount FROM BOARD WHERE USER_NICKNAME LIKE ? AND BOARD_TYPE = ?";
      String query3 = "SELECT COUNT(*) AS totalCount FROM BOARD WHERE BOARD_CONTENT LIKE ? AND BOARD_TYPE = ?";

      
      if(searchType.equals("title")) {
         try {
            pstmt = conn.prepareStatement(query1);
            pstmt.setString(1, "%" + searchContent + "%");
            pstmt.setString(2, boardType);
            rset = pstmt.executeQuery();
            rset.next();
            
            recordTotalCount = rset.getInt("totalCount");
         } catch (SQLException e) {
            e.printStackTrace();
         }finally {
            JDBCTemplate.close(rset);
            JDBCTemplate.close(pstmt);
         }
      }
      
      if(searchType.equals("writer")) {
         try {
            pstmt = conn.prepareStatement(query2);
            pstmt.setString(1, "%" + searchContent + "%");
            pstmt.setString(2, boardType);
            
            rset = pstmt.executeQuery();
            rset.next();
            
            recordTotalCount = rset.getInt("totalCount");
         } catch (SQLException e) {
            e.printStackTrace();
         }finally {
            JDBCTemplate.close(rset);
            JDBCTemplate.close(pstmt);
         }
      }
      
      if(searchType.equals("content")) {
         try {
            pstmt = conn.prepareStatement(query3);
            pstmt.setString(1, "%" + searchContent + "%");
            pstmt.setString(2, boardType);
            
            rset = pstmt.executeQuery();
            rset.next();
            
            recordTotalCount = rset.getInt("totalCount");
         
         } catch (SQLException e) {
            e.printStackTrace();
         }finally {
            JDBCTemplate.close(rset);
            JDBCTemplate.close(pstmt);
         }
      }
      
      
      int pageTotalCount = 0;

      if (recordTotalCount % countperPage > 0) {
         pageTotalCount = recordTotalCount / countperPage + 1;
      } else {
         pageTotalCount = recordTotalCount / countperPage;
      }

      if (currentPage < 1) {
         currentPage = 1;
      } else if (currentPage > pageTotalCount) {
         currentPage = pageTotalCount;
      }

      int StartNavi = ((currentPage - 1) / naviCountPerPage) * naviCountPerPage + 1;
      int EndNavi = StartNavi + naviCountPerPage - 1;

      if (EndNavi > pageTotalCount) {
         EndNavi = pageTotalCount;
      }

      
      
   
      
      sb.append("<div class = 'pagination d-flex justify-content-center'>");

      if (StartNavi < naviCountPerPage) {
         sb.append("<a class = 'hidden' href ='#' aria-label='Previous'><span aria-hidden = 'true'></span></a>");
      }else{
         sb.append("<a href ='/boardSearch?searchContent="+searchContent+"&searchType="+searchType+"&currentPage="+ (StartNavi - naviCountPerPage) + "' aria-label ='Previous'><span aria-hidden='true'>&laquo;</span></a>");
      }
      
      for (int i = StartNavi; i <= EndNavi; i++) {
         
         if (i == currentPage) {
         sb.append("<a class='active' href =/boardSearch?searchContent="+searchContent+"&searchType="+searchType+"&currentPage="+ i +">"+i+"</a>");
         }else {
            sb.append("<a href =/boardSearch?searchContent="+searchContent+"&searchType="+searchType+"&currentPage="+ i +">"+i+"</a>");
         }
      }
      
      if(EndNavi < pageTotalCount) {
         sb.append("<a href=/boardSearch?searchContent="+searchContent+"&searchType="+searchType+"&currentPage="+(EndNavi + 1) +" aria-label ='Next'><span aria-hidden ='true'>&raquo;</span></a>");
      }else {
         sb.append("<a class ='hidden' href='#' aria-label = 'Next'><span aria-hidden ='true'></span></a>");
      }
   
         
         sb.append("</div>");
         
      return sb.toString();   
   }
   
   public int deleteComment(Connection conn , int commentNo) {
      PreparedStatement pstmt = null;
      int result = 0;
      
      String query = "DELETE FROM BOARD_COMMENT WHERE COMMENT_NO = ?";
      
      try {
         pstmt = conn.prepareStatement(query);
         pstmt.setInt(1, commentNo);
         System.out.println(commentNo);
      
         result = pstmt.executeUpdate();
         
         
      } catch (SQLException e) {
         e.printStackTrace();
      }finally {
         JDBCTemplate.close(pstmt);
      }
      
      return result;
   }
   
   public int updateComment(Connection conn , int commentNo ,String commentContent) {
      PreparedStatement pstmt = null;
      int result = 0;
      
      String query = "UPDATE BOARD_COMMENT SET COMMENT_CONTENT = ? WHERE COMMENT_NO = ?";
      
      try {
         pstmt = conn.prepareStatement(query);
         pstmt.setString(1, commentContent);
         pstmt.setInt(2, commentNo);
         
         result = pstmt.executeUpdate();
         
      
      } catch (SQLException e) {
         e.printStackTrace();
      }finally {
         JDBCTemplate.close(pstmt);
      }
      
      return result;
   }
   
   

}