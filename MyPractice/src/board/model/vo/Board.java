package board.model.vo;

import java.sql.Clob;
import java.sql.Date;
import java.sql.Timestamp;


public class Board {

   private int boardNumber;
   private String userId;
   private String userNickName;
   private String boardContent;
   private Timestamp makeDate;
   private String title;
   private String boardPublic;
   private String boardType;
   private int clickCount;
   private int dNum;
   private Timestamp modDate;
   private String photoOriginFilename;
   private String photoRenameFilename;
   
   
   public String getPhotoOriginFilename() {
      return photoOriginFilename;
   }
   public void setPhotoOriginFilename(String photoOriginFilename) {
      this.photoOriginFilename = photoOriginFilename;
   }
   public String getPhotoRenameFilename() {
      return photoRenameFilename;
   }
   public void setPhotoRenameFilename(String photoRenameFilename) {
      this.photoRenameFilename = photoRenameFilename;
   }
   public Board() {

   }
   public Board(int boardNumber, String userId, String userNickName ,String boardContent ,Timestamp makeDate , String title ,String boardPublic ,String boardType , int clickCount , int dNum , Timestamp modDate) {
      this.boardNumber = boardNumber;
      this.userId = userId;
      this.userNickName = userNickName;
      this.boardContent = boardContent;
      this.makeDate = makeDate;
      this.title = title;
      this.boardPublic = boardPublic;
      this.boardType = boardType;
      this.clickCount = clickCount;
      this.dNum = dNum;
      this.modDate =  modDate;
   }
   
   
   public Timestamp getModDate() {
      return modDate;
   }
   public void setModDate(Timestamp modDate) {
      this.modDate = modDate;
   }
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
   public String getUserNickName() {
      return userNickName;
   }
   public void setUserNickName(String userNickName) {
      this.userNickName = userNickName;
   }
   public String getBoardContent() {
      return boardContent;
   }
   public void setBoardContent(String boardContent) {
      this.boardContent = boardContent;
   }
   public Timestamp getMakeDate() {
      return makeDate;
   }
   public void setMakeDate(Timestamp makeDate) {
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
}
   
   