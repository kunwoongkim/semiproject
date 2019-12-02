package donation.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import common.JDBCTemplate;
import donation.model.vo.Donation;

public class DonationDao {
   
   public int insertDonation(Connection conn , Donation don) {
      PreparedStatement pstmt = null;
      int result = 0;
      
      String query = "INSERT INTO DONATION VALUES(?, ?, ?, ?, SYSDATE)";
      
      try {
         pstmt = conn.prepareStatement(query);
         pstmt.setString(1, don.getDonationId());
         pstmt.setString(2, don.getDonationNickname());
         pstmt.setString(3, don.getDonationPg());
         pstmt.setInt(4, don.getDonationPay());
         
         result = pstmt.executeUpdate();
      } catch (SQLException e) {
         // TODO Auto-generated catch block
         e.printStackTrace();
      }finally {
         JDBCTemplate.close(pstmt);
      }
   
      return result;
   }
   
   public ArrayList<Donation> donationListAll(Connection conn) {
      Statement stmt = null;
      ResultSet rset = null;
      ArrayList<Donation> donList = new ArrayList<Donation>();
      
      String query="SELECT * FROM DONATION ORDER BY DONATION_DAY DESC";
      
      try {
         stmt = conn.createStatement();
         rset = stmt.executeQuery(query);
         
         while(rset.next()) {
            Donation don = new Donation();
            
            don.setDonationId(rset.getString("DONATION_ID"));
            don.setDonationNickname(rset.getString("USER_NICKNAME"));
            don.setDonationPg(rset.getString("DONATION_PG"));
            don.setDonationPay(rset.getInt("DONATION_PAY"));
            don.setDonationDay(rset.getDate("DONATION_DAY"));
            donList.add(don);
            
         }
         
      } catch (SQLException e) {
         // TODO Auto-generated catch block
         e.printStackTrace();
      }finally {
         JDBCTemplate.close(rset);
         JDBCTemplate.close(stmt);
      }
      
      
      return donList;
      
   }
   
   public ArrayList<Donation> donationMy(Connection conn, String userId) {
      PreparedStatement pstmt = null;
      ResultSet rset = null;
      ArrayList<Donation> myList = new ArrayList<Donation>();
      
      String query ="SELECT * FROM DONATION WHERE DONATION_ID=? ORDER BY DONATION_DAY DESC";
      
      try {
         pstmt = conn.prepareStatement(query);
         pstmt.setString(1, userId);
         
         rset = pstmt.executeQuery();
         
         while(rset.next()) {
            Donation don = new Donation();
            
            don.setDonationId(rset.getString("DONATION_ID"));
            don.setDonationNickname(rset.getString("USER_NICKNAME"));
            don.setDonationPg(rset.getString("DONATION_PG"));
            don.setDonationPay(rset.getInt("DONATION_PAY"));
            don.setDonationDay(rset.getDate("DONATION_DAY"));
            myList.add(don);
            
         }
         
      } catch (SQLException e) {
         // TODO Auto-generated catch block
         e.printStackTrace();
      }finally {
         JDBCTemplate.close(rset);
         JDBCTemplate.close(pstmt);
      }
      
      return myList;
   }
   
   public int donationCount(Connection conn) {

      PreparedStatement pstmt = null;
      ResultSet rset = null;

      int totalCount = 0;

      String query = "SELECT COUNT(*) AS donationCount FROM DONATION";

      try {
         pstmt = conn.prepareStatement(query);
         rset = pstmt.executeQuery();
         rset.next();
         totalCount = rset.getInt("donationCount");
      } catch (SQLException e) {
         // TODO Auto-generated catch block
         e.printStackTrace();
      } finally {
         JDBCTemplate.close(rset);
         JDBCTemplate.close(pstmt);
      }
      return totalCount;
   }
   
   public int donationMyCount(Connection conn, String userId) {

      PreparedStatement pstmt = null;
      ResultSet rset = null;

      int totalCount = 0;

      String query = "SELECT COUNT(*) AS donationMyCount FROM DONATION WHERE DONATION_ID=?";

      try {
         pstmt = conn.prepareStatement(query);
         pstmt.setString(1, userId);
         
         rset = pstmt.executeQuery();
         
         rset.next();
         totalCount = rset.getInt("donationMyCount");
      } catch (SQLException e) {
         // TODO Auto-generated catch block
         e.printStackTrace();
      } finally {
         JDBCTemplate.close(rset);
         JDBCTemplate.close(pstmt);
      }
      return totalCount;
   }
   

}