package donation.model.vo;

import java.sql.Date;

public class Donation {
   private String donationId;
   private String donationNickname;
   private String donationPg;
   private int donationPay;
   private Date donationDay;
   
   public Donation() {}
   
   
   public String getDonationId() {
      return donationId;
   }
   public void setDonationId(String donationId) {
      this.donationId = donationId;
   }
   public String getDonationNickname() {
      return donationNickname;
   }
   public void setDonationNickname(String donationNickname) {
      this.donationNickname = donationNickname;
   }
   public String getDonationPg() {
      return donationPg;
   }
   public void setDonationPg(String donationPg) {
      this.donationPg = donationPg;
   }
   public int getDonationPay() {
      return donationPay;
   }
   public void setDonationPay(int donationPay) {
      this.donationPay = donationPay;
   }
   public Date getDonationDay() {
      return donationDay;
   }
   public void setDonationDay(Date donationDay) {
      this.donationDay = donationDay;
   }
   
   
}