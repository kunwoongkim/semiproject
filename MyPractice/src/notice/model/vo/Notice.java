package notice.model.vo;

import java.sql.Date;

public class Notice {
   
   private int boardNumber;
   private String userId;
   private String userNickname;
   private String boardContent;
   private Date makeDate;
   private String title;
   private String boardPublic;
   private String boardType;
   private int clickCount;
   private String photoOriginalFilename;
   private String photoRenamedFilename;
   private int dNum;
   
   public Notice() {}

   public int getBoardNumber() {
      return boardNumber;
   }

   public void setBoardNumber(int boardNumber) {
      this.boardNumber = boardNumber;
   }

   public String getUserId() {
      return userId;
   }

   public void setUserId(String userId) {
      this.userId = userId;
   }

   public String getUserNickname() {
      return userNickname;
   }

   public void setUserNickname(String userNickname) {
      this.userNickname = userNickname;
   }

   public String getBoardContent() {
      return boardContent;
   }

   public void setBoardContent(String boardContent) {
      this.boardContent = boardContent;
   }

   public Date getMakeDate() {
      return makeDate;
   }

   public void setMakeDate(Date makeDate) {
      this.makeDate = makeDate;
   }

   public String getTitle() {
      return title;
   }

   public void setTitle(String title) {
      this.title = title;
   }

   public String getBoardPublic() {
      return boardPublic;
   }

   public void setBoardPublic(String boardPublic) {
      this.boardPublic = boardPublic;
   }

   public String getBoardType() {
      return boardType;
   }

   public void setBoardType(String boardType) {
      this.boardType = boardType;
   }

   public int getClickCount() {
      return clickCount;
   }

   public void setClickCount(int clickCount) {
      this.clickCount = clickCount;
   }

   public int getdNum() {
      return dNum;
   }

   public void setdNum(int dNum) {
      this.dNum = dNum;
   }
   
   public String getPhotoOriginalFilename() {
      return photoOriginalFilename;
   }

   public void setPhotoOriginalFilename(String photoOriginalFilename) {
      this.photoOriginalFilename = photoOriginalFilename;
   }

   public String getPhotoRenamedFilename() {
      return photoRenamedFilename;
   }

   public void setPhotoRenamedFilename(String photoRenamedFilename) {
      this.photoRenamedFilename = photoRenamedFilename;
   }


}