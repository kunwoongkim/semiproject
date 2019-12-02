package notice.model.vo;

import java.util.ArrayList;

public class NoticePageData {


   private ArrayList<Notice> nPageData;
   private String nPageNavi;
   
   public NoticePageData() {}

   public ArrayList<Notice> getnPageData() {
      return nPageData;
   }

   public void setnPageData(ArrayList<Notice> nPageData) {
      this.nPageData = nPageData;
   }

   public String getnPageNavi() {
      return nPageNavi;
   }

   public void setnPageNavi(String nPageNavi) {
      this.nPageNavi = nPageNavi;
   }
   
   
   
   
}