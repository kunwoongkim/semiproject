package board.boardA.model.vo;

public class BoardComment {

   
   private int commentNo;
   private String commentNickName;
   private String commentId;
   private String commentContent;
   private int commentLevel;
   private int commentSubNo;
   private int recommentSubNo;
   
   public BoardComment() {
      super();
   }
   
   public BoardComment(int commentNo , String commentNickName , String commentContent , int commentLevel , int commentSubNo , int recommentSubNo) {
      super();
      this.commentNo = commentNo;
      this.commentNickName = commentNickName;
      this.commentContent = commentContent;
      this.commentLevel = commentLevel;
      this.commentSubNo = commentSubNo;
      this.recommentSubNo = recommentSubNo;
   }

   public int getCommentNo() {
      return commentNo;
   }

   public void setCommentNo(int commentNo) {
      this.commentNo = commentNo;
   }

   public String getCommentNickName() {
      return commentNickName;
   }

   public void setCommentNickName(String commentNickName) {
      this.commentNickName = commentNickName;
   }

   public String getCommentId() {
      return commentId;
   }

   public void setCommentId(String commentId) {
      this.commentId = commentId;
   }

   public String getCommentContent() {
      return commentContent;
   }

   public void setCommentContent(String commentContent) {
      this.commentContent = commentContent;
   }

   public int getCommentLevel() {
      return commentLevel;
   }

   public void setCommentLevel(int commentLevel) {
      this.commentLevel = commentLevel;
   }

   public int getCommentSubNo() {
      return commentSubNo;
   }

   public void setCommentSubNo(int commentSubNo) {
      this.commentSubNo = commentSubNo;
   }

   public int getRecommentSubNo() {
      return recommentSubNo;
   }

   public void setRecommentSubNo(int recommentSubNo) {
      this.recommentSubNo = recommentSubNo;
   }
   
   
}