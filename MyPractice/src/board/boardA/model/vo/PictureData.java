package board.boardA.model.vo;
import java.sql.Timestamp;


   public class PictureData {
      
      private String pictureName;
      private String picturePath;
      private long pictureSize;
      private String upUserId;
      private Timestamp uploadTime;
      
      public PictureData() {}

      public String getPictureName() {
         return pictureName;
      }
      public void setPictureName(String pictureName) {
         this.pictureName = pictureName;
      }

      public String getPicturePath() {
         return picturePath;
      }

      public void setPicturePath(String picturePath) {
         this.picturePath = picturePath;
      }

      public long getPictureSize() {
         return pictureSize;
      }

      public void setPictureSize(long pictureSize) {
         this.pictureSize = pictureSize;
      }

      public String getUpUserId() {
         return upUserId;
      }

      public void setUpUserId(String upUserId) {
         this.upUserId = upUserId;
      }

      public Timestamp getUploadTime() {
         return uploadTime;
      }

      public void setUploadTime(Timestamp uploadTime) {
         this.uploadTime = uploadTime;
      }

   }