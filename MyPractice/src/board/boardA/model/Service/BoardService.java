package board.boardA.model.Service;

import java.sql.Connection;
import java.util.ArrayList;

import board.boardA.controller.boardDelete;
import board.boardA.model.Dao.BoardDao;
import board.boardA.model.vo.Board;
import board.boardA.model.vo.PictureData;
import board.boardA.model.vo.BoardComment;
import board.boardA.model.vo.PageData;
import common.JDBCTemplate;

public class BoardService {

   
   public PageData selectAll(int currentPage , String boardType){
      Connection conn = JDBCTemplate.getConnection();
      int countperPage = 15;
      int naviCountPerPage = 5;
      
      PageData pd = new PageData(); 
      pd.setPageList(new BoardDao().selectAll(conn,currentPage,countperPage,boardType)); 
      pd.setPageNavi(new BoardDao().NaviCount(conn,currentPage,countperPage,naviCountPerPage,boardType));
      JDBCTemplate.close(conn);
      return pd;
   }
   
   public PageData boardASelect(int boardNumber) {
      Connection conn = JDBCTemplate.getConnection();
      Board board = new BoardDao().boardASelect(conn , boardNumber);
      ArrayList<BoardComment> list = new BoardDao().boardCommentAll(conn, boardNumber);
      PageData pd = new PageData(board, list);
      JDBCTemplate.close(conn);
      return pd;
   }
   
   public int boardWrite(Board board) {
      Connection conn = JDBCTemplate.getConnection();
      int result = new BoardDao().boardWrite(conn , board);
      
      if(result > 0) {
         JDBCTemplate.commit(conn);
         
      }else {
         JDBCTemplate.rollback(conn);
      }
      JDBCTemplate.close(conn);
      return result;
   }
   
   public int uploadPicture(PictureData pictureData) {
      Connection conn = JDBCTemplate.getConnection();
      
      int result = new BoardDao().pictureUpload(conn, pictureData);

      if(result > 0 ) {
         JDBCTemplate.commit(conn);
      }else {
         JDBCTemplate.rollback(conn);
      }
      JDBCTemplate.close(conn);
      return result;
   }
   
   public int boardUpdate(Board board) {
      Connection conn = JDBCTemplate.getConnection();
      
      int result = new BoardDao().boardUpdate(conn , board);
      
      if(result > 0) {
         JDBCTemplate.commit(conn);
      }else {
         JDBCTemplate.rollback(conn);
      }
      JDBCTemplate.close(conn);
      return result;
   }
   
   
   public int boardDelete(int boardNumber) {
      Connection conn = JDBCTemplate.getConnection();
      
      int result = new BoardDao().boardDelete(conn , boardNumber);
      
      if(result > 0) {
         JDBCTemplate.commit(conn);
      }else {
         JDBCTemplate.rollback(conn);
      }
      JDBCTemplate.close(conn);
      return result;
   }
   
   public int insertComment(BoardComment bc) {
      Connection conn = JDBCTemplate.getConnection();
      
      int result = new BoardDao().insertComment(conn , bc);
      
      if(result > 0) {
         JDBCTemplate.commit(conn);
      }else {
         JDBCTemplate.rollback(conn);
      }
      JDBCTemplate.close(conn);
      return result;
   }
   
   public int boardViewCount(int boardNumber) {
      Connection conn =JDBCTemplate.getConnection();
      
      int result = new BoardDao().boardViewCount(conn , boardNumber);
      
      if(result > 0) {
         JDBCTemplate.commit(conn);
      }else {
         JDBCTemplate.rollback(conn);
      }
      JDBCTemplate.close(conn);
      return result;
   }
   
   public PageData boardASearch(int currentPage , String searchType , String searchContent ,String boardType) {
      Connection conn = JDBCTemplate.getConnection();
      int countperPage = 15;
      int naviCountPerPage = 5;
      
      PageData pd = new PageData();
      
      pd.setPageList(new BoardDao().boardSearchList(conn , currentPage , countperPage , searchType , searchContent , boardType));
      pd.setPageNavi(new BoardDao().boardSearchNavi(conn , currentPage , countperPage , naviCountPerPage , searchType , searchContent , boardType));
      
      JDBCTemplate.close(conn);
      
      return pd;
      
   }
   
   public int deleteComment(int commentNo) {
      Connection conn = JDBCTemplate.getConnection();
      
      int result = new BoardDao().deleteComment(conn , commentNo);
      
   
      if(result > 0) {
         JDBCTemplate.commit(conn);
      }else {
         JDBCTemplate.rollback(conn);
      }
      JDBCTemplate.close(conn);
      return result;
   }
   
   public int updateComment(int commentNo , String commentContent) {
      Connection conn = JDBCTemplate.getConnection();
      
      int result = new BoardDao().updateComment(conn , commentNo , commentContent);
      
      if(result > 0 ) {
         JDBCTemplate.commit(conn);
      }else {
         JDBCTemplate.rollback(conn); 
      }
      JDBCTemplate.close(conn);
      return result;
         
   }
}