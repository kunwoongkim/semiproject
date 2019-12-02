package donation.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import common.JDBCTemplate;
import donation.model.dao.DonationDao;
import donation.model.vo.Donation;


public class DonationService {

   public int insertDonation (Donation don) {
      Connection conn = JDBCTemplate.getConnection();
      int result = new DonationDao().insertDonation(conn, don);
      JDBCTemplate.close(conn);
      
      return result;
   }
   
   public ArrayList<Donation> donationListAll() {
      Connection conn = JDBCTemplate.getConnection();
      ArrayList<Donation> donList = new DonationDao().donationListAll(conn);
      JDBCTemplate.close(conn);
      
      return donList; 
   }
   
   public ArrayList<Donation> donationMy(String userId) {
      Connection conn = JDBCTemplate.getConnection();
      ArrayList<Donation> donList = new DonationDao().donationMy(conn, userId);
      JDBCTemplate.close(conn);
      
      return  donList;
   }
   
   public int donationCount() {
      Connection conn = JDBCTemplate.getConnection();
      int donationCount = new DonationDao().donationCount(conn);
      JDBCTemplate.close(conn);
      
      return donationCount;
   }
   
   public int donationMyCount(String userId) {
      Connection conn = JDBCTemplate.getConnection();
      int donationMyCount = new DonationDao().donationMyCount(conn, userId);
      JDBCTemplate.close(conn);
      
      return donationMyCount;
   }
}