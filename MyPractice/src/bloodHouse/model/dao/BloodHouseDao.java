package bloodHouse.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import bloodHouse.model.vo.BloodHouse;
import common.JDBCTemplate;
import singo.model.vo.Singo;

public class BloodHouseDao {

	public ArrayList<BloodHouse>bhList(Connection conn, int currentPage, int recordCountPerPage ){
		ArrayList<BloodHouse> bhList = new ArrayList<BloodHouse>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		int start = currentPage* recordCountPerPage - (recordCountPerPage - 1);
		int end = currentPage * recordCountPerPage;
		
		String query = "SELECT * FROM(SELECT ROW_NUMBER() OVER(ORDER BY HOUSE_NAME DESC) AS NUM, BLOOD_HOUSE.* FROM BLOOD_HOUSE)WHERE NUM BETWEEN ? AND ?";
		 try {
			pstmt=conn.prepareStatement(query);
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);
			rset = pstmt.executeQuery();
			bhList = new ArrayList<BloodHouse>();
			
			while(rset.next()) {
				BloodHouse bhOne = new BloodHouse();
				bhOne.setHouseName(rset.getString("HOUSE_NAME"));
				bhOne.setHouseAddr(rset.getString("HOUSE_ADDR"));
				bhOne.setPhoneNum(rset.getString("PHONE_NUM"));
				bhList.add(bhOne);
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		 return bhList;
		
	}
	
	
	
	public String getPageNavi(Connection conn, int currentPage, int recordCountPerPage, int naviCountPerPage) {
		int recordTotalCount = totalCount(conn);
		int PageTotalCount = 0;// 전체 페이지 개수

		if (recordTotalCount % recordCountPerPage > 0) {
			PageTotalCount = recordTotalCount / recordCountPerPage + 1;
		} else {
			PageTotalCount = recordTotalCount / recordCountPerPage;
		}
		if (currentPage < 1) { //일종의 오류처리
			currentPage = 1;
		} else if (currentPage > PageTotalCount) {
			currentPage = PageTotalCount;
		}
		int startNavi = ((currentPage - 1) / naviCountPerPage) * naviCountPerPage + 1;//(나머지)*5+1
		int endNavi = startNavi + naviCountPerPage - 1;

		if (endNavi > PageTotalCount) {//일종의 오류처리
			endNavi = PageTotalCount;
		}
		boolean needPrev = true;
		boolean needNext = true;

		if (startNavi == 1) {
			needPrev = false;
		}
		if (endNavi == PageTotalCount) {
			needNext = false;
		}
		
		StringBuilder sb = new StringBuilder();
		if(needPrev) {
			sb.append("<a href='/bloodHouse?currentPage="+(startNavi -1)+"'>< </a>");
		}
		for(int i = startNavi; i <= endNavi; i++) {
			if(i == currentPage) {
				sb.append("<a href='/bloodHouse?currentPage="+i+"'><b>"+i+"</b></a>");
			}else {
				sb.append("<a href='/bloodHouse?currentPage="+i+"'>"+i+"</a>");
			}
		}if(needNext) {
			sb.append("<a href='/bloodHouse?currentPage="+(endNavi+1)+"'> ></a>");
		}
		return sb.toString();

	}
	
	public int totalCount(Connection conn) {
		ResultSet rset = null;
		PreparedStatement pstmt = null;
		int recordTotalCount =0;
		
		String query = "SELECT COUNT(*) AS TOTALCOUNT FROM BLOOD_HOUSE";
		
		try {
			pstmt = conn.prepareStatement(query);
			rset = pstmt.executeQuery();
			rset.next();
			recordTotalCount = rset.getInt("TOTALCOUNT");
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return recordTotalCount;
	}
	

	public ArrayList<BloodHouse> bhSearchList(Connection conn, String search, int recordCountPerPage, int currentPage) {
		ArrayList<BloodHouse> bhList = new ArrayList<BloodHouse>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;

		String query = "select * FROM (Select BLOOD_HOUSE.*, ROW_NUMBER() OVER(ORDER BY HOUSE_NAME DESC) AS NUM FROM BLOOD_HOUSE WHERE HOUSE_ADDR LIKE ?) WHERE NUM BETWEEN ? and ?";

		int start = currentPage * recordCountPerPage - (recordCountPerPage - 1);
		int end = currentPage * recordCountPerPage;
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, "%" + search + "%");
			pstmt.setInt(2, start);
			pstmt.setInt(3, end);
			rset = pstmt.executeQuery();

			while(rset.next()) {
				BloodHouse bhOne = new BloodHouse();
				bhOne.setHouseName(rset.getString("HOUSE_NAME"));
				bhOne.setHouseAddr(rset.getString("HOUSE_ADDR"));
				bhOne.setPhoneNum(rset.getString("PHONE_NUM"));
				bhList.add(bhOne);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}

		return bhList;
	}
	
	
	public String getSearchPageNavi(Connection conn, int currentPage, int recordCountPerPage, int naviCountPerPage,String search) {

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
			sb.append("<a href='/bloodHouseSearch?search=" + search + "&currentPage=" + (startNavi - 1) + "'>< </a>");

		}
		for (int i = startNavi; i <= endNavi; i++) {
			if (i == currentPage) {
				sb.append("<a href='/bloodHouseSearch?search=" + search + "&currentPage=" + i + "'><b>" + i + "</b></a>");
			}else {
				sb.append("<a href='/bloodHouseSearch?search=" + search + "&currentPage=" + i + "'>" + i + "</a>");
			}
		}
		if(needNext) {
			sb.append("<a href='/bloodHouseSearch?search="+search+"&currentPage="+(endNavi+1)+"'> ></a>");
		}
		return sb.toString();
	}

	
	
	public int getSearchTotalCount(Connection conn, String search) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;

		String query = "SELECT COUNT(*) AS TOTALCOUNT FROM BLOOD_HOUSE WHERE HOUSE_NAME LIKE ?"; 
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
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return recordTotalCount;

	}
	
	
	

}
