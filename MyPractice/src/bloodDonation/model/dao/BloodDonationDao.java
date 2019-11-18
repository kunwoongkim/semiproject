package bloodDonation.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import bloodDonation.model.vo.BloodDonation;
import common.JDBCTemplate;

public class BloodDonationDao {

	public ArrayList<BloodDonation> donationList(Connection conn, int currentPage, int recordCountPerPage) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<BloodDonation> bdList = null;
		
		int start = currentPage * recordCountPerPage - (recordCountPerPage - 1);
		int end = currentPage * recordCountPerPage;
		
		String query = "SELECT * FROM (SELECT ROW_NUMBER() OVER(ORDER BY USER_ID DESC) AS NUM, BLOOD_DONOR_CARD.* FROM BLOOD_DONOR_CARD) WHERE NUM BETWEEN ? AND ?";

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);
			rset = pstmt.executeQuery();

			bdList = new ArrayList<BloodDonation>();
			while (rset.next()) {
				BloodDonation bd = new BloodDonation();
				bd.setUserId(rset.getString("USER_ID"));
				bd.setUserName(rset.getString("USER_NAME"));
				bd.setBloodType(rset.getString("BLOOD_TYPE"));
				bd.setDonorDate(rset.getString("DONOR_DATE"));
				bd.setUserBirth(rset.getString("USER_BIRTH"));
				bd.setGender(rset.getString("GENDER"));
				bd.setCardNumber(rset.getString("CARD_NUMBER"));
				bd.setDonorType(rset.getString("DONOR_TYPE"));

				bdList.add(bd);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(pstmt);
			JDBCTemplate.close(rset);
		}
		return bdList;
	}
	
		public String getPageNavi(Connection conn, int currentPage, int recordCountPerPage, int naviCountPerPage) {
			int recordTotalCount = totalCount(conn); 
			int pageTotalCount = 0;

			if (recordTotalCount % recordCountPerPage > 0) {
				pageTotalCount = recordTotalCount / recordCountPerPage + 1;
			} else {
				pageTotalCount = recordTotalCount / recordCountPerPage;
			}

			if (currentPage < 1) {
				currentPage = 1;
			} else if (currentPage > pageTotalCount) {
				currentPage = pageTotalCount;
			}

			int startNavi = ((currentPage - 1) / naviCountPerPage) * naviCountPerPage + 1;
			int endNavi = startNavi + naviCountPerPage - 1;

			if (endNavi > pageTotalCount) {
				endNavi = pageTotalCount;
			}
			boolean needPrev = true;
			boolean needNext = true;

			if (startNavi == 1) {
				needPrev = false;
			}
			if (endNavi == pageTotalCount) {
				needNext = false;
			}
			
			StringBuilder sb = new StringBuilder();
			if (needPrev) {
				sb.append("<a href='/bloodDonation?currentPage=" + (startNavi - 1) + "'>< </a>");
			}
			for (int i = startNavi; i <= endNavi; i++) {
				if (i == currentPage) {
					sb.append("<a href='/bloodDonation?currentPage=" + i + "'><b>" + i + "</b></a>");
				} else {
					sb.append("<a href='/bloodDonation?currentPage=" + i + "'>" + i + "</a>");
				}
			}
			if (needNext) {
				sb.append("<a href='/bloodDonation?currentPage=" + (endNavi + 1) + "'> ></a>");
			}

			return sb.toString();
		}

		public int totalCount(Connection conn) {
			PreparedStatement pstmt = null;
			int recordTotalCount = 0;
			ResultSet rset = null;
			String query = "SELECT COUNT(*) AS totalCount FROM BLOOD_DONOR_CARD";

			try {
				pstmt = conn.prepareStatement(query);
				rset = pstmt.executeQuery();
				rset.next();
				recordTotalCount = rset.getInt("totalCount");

			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally {
				JDBCTemplate.close(pstmt);
				JDBCTemplate.close(rset);
			}
			return recordTotalCount;
		}
		
		public ArrayList<BloodDonation> bdSearchList(Connection conn, String search, int currentPage, int recordCountPerPage) {
			PreparedStatement pstmt = null;
			ResultSet rset = null;
			ArrayList<BloodDonation> bdList = null;
			String query = "SELECT * FROM (SELECT BLOOD_DONOR_CARD.*, ROW_NUMBER() OVER(ORDER BY USER_NAME DESC) AS NUM FROM BLOOD_DONOR_CARD WHERE USER_NAME LIKE ?) WHERE NUM BETWEEN ? and ?";

			int start = currentPage * recordCountPerPage - (recordCountPerPage - 1);
			int end = currentPage * recordCountPerPage;

			try {
				pstmt = conn.prepareStatement(query);
				pstmt.setString(1, "%" + search + "%");
				pstmt.setInt(2, start);
				pstmt.setInt(3, end);
				rset = pstmt.executeQuery();
				bdList = new ArrayList<BloodDonation>();

				while (rset.next()) {
					BloodDonation bd = new BloodDonation();
					bd.setUserId(rset.getString("USER_ID"));
					bd.setUserName(rset.getString("USER_NAME"));
					bd.setBloodType(rset.getString("BLOOD_TYPE"));
					bd.setDonorDate(rset.getString("DONOR_DATE"));
					bd.setUserBirth(rset.getString("USER_BIRTH"));
					bd.setGender(rset.getString("GENDER"));
					bd.setCardNumber(rset.getString("CARD_NUMBER"));
					bd.setDonorType(rset.getString("DONOR_TYPE"));
					bdList.add(bd);
				}

			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally {
				JDBCTemplate.close(pstmt);
				JDBCTemplate.close(rset);
			}
			return bdList;
		}
		
		public String getSearchPageNavi(Connection conn, int currentPage, int recordCountPerPage, int naviCountPerPage,
				String search) {
			int recordTotalCount = getSearchTotalCount(conn, search);
			int pageTotalCount = 0;

			if (recordTotalCount % recordCountPerPage > 0) {
				pageTotalCount = recordTotalCount / recordCountPerPage + 1;
			} else {
				pageTotalCount = recordTotalCount / recordCountPerPage;
			}

			if (currentPage < 1) {
				currentPage = 1;
			} else if (currentPage > pageTotalCount) {
				currentPage = pageTotalCount;
			}

			int startNavi = ((currentPage - 1) / naviCountPerPage) * naviCountPerPage + 1;
			int endNavi = startNavi + naviCountPerPage - 1;

			if (endNavi > pageTotalCount) {
				endNavi = pageTotalCount;
			}

			boolean needPrev = true;
			boolean needNext = true;

			if (startNavi == 1) {
				needPrev = false;
			}
			if (endNavi == pageTotalCount) {
				needNext = false;
			}

			StringBuilder sb = new StringBuilder();

			if (needPrev) {
				sb.append("<a href='/bdSearch?search=" + search + "&currentPage=" + (startNavi - 1) + "'>< </a>");
			}
			for (int i = startNavi; i <= endNavi; i++) {
				if (i == currentPage) {
					sb.append("<a href='/bdSearch?search=" + search + "&currentPage=" + i + "'><b>" + i + "</b></a>");
				} else {
					sb.append("<a href='/bdSearch?search=" + search + "&currentPage=" + i + "'>" + i + "</a>");
				}
			}
			if (needNext) {
				sb.append("<a href='/bdSearch?search=" + search + "&currentPage=" + (endNavi + 1) + "'> ></a>");
			}
			return sb.toString();

		}

		public int getSearchTotalCount(Connection conn, String search) {
			PreparedStatement pstmt = null;
			ResultSet rset = null;
			String query = "SELECT COUNT(*) AS TOTALCOUNT FROM BLOOD_DONOR_CARD WHERE USER_NAME LIKE ? ";
			int recordTotalCount = 0;
			try {
				pstmt = conn.prepareStatement(query);
				pstmt.setString(1, "%" + search + "%");
				rset = pstmt.executeQuery();
				rset.next();
				recordTotalCount = rset.getInt("TOTALCOUNT");

			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally {
				JDBCTemplate.close(pstmt);
				JDBCTemplate.close(rset);
			}
			return recordTotalCount;

		}

}
