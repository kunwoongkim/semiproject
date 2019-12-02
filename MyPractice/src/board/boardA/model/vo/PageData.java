package board.boardA.model.vo;

import java.util.ArrayList;

public class PageData {

   private ArrayList<Board> PageList;
   private String PageNavi;
   private ArrayList<BoardComment> CommentList;
   private Board Board;


   public PageData() {
      super();
   }

   
   public PageData(ArrayList<Board> pageList, String pageNavi) {
      super();
      this.PageList = pageList;
      this.PageNavi = pageNavi;
   }

   public PageData(Board board, ArrayList<BoardComment> list) {
      super();
      this.Board = board;
      this.CommentList = list;
   }

   public Board getBoard() {
      return Board;
   }

   public void setBoard(Board board) {
      Board = board;
   }
   
   public ArrayList<BoardComment> getCommentList() {
      return CommentList;
   }

   public void setCommentList(ArrayList<BoardComment> commentList) {
      CommentList = commentList;
   }
   
   
   public ArrayList<Board> getPageList() {
      return PageList;
   }

   public void setPageList(ArrayList<Board> pageList) {
      PageList = pageList;
   }

   public String getPageNavi() {
      return PageNavi;
   }

   public void setPageNavi(String pageNavi) {
      PageNavi = pageNavi;
   }

}