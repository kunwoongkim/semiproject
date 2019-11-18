package singo.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import common.JDBCTemplate;
import member.model.vo.Member;
import singo.model.vo.Singo;


public class SingoDao {
	
	
	public int singoDelete(Connection conn, String reportedId) {
		PreparedStatement pstmt = null;
		int result = 0;
		String query = "DELETE CASCADE FROM MEMBER WHERE USER_ID = ?"; 
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, reportedId);
			result = pstmt.executeUpdate();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(pstmt);
		}
		return result;
	}

	
	public ArrayList<Singo> singoList(Connection conn, int currentPage, int recordCountPerPage) {

		ArrayList<Singo> singoList = new ArrayList<Singo>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;

		int start = currentPage * recordCountPerPage - (recordCountPerPage - 1);
		int end = currentPage * recordCountPerPage;

		String query = "SELECT * FROM (Select ROW_NUMBER() OVER(ORDER BY REPORTED_ID DESC) AS NUM, REPORT_LIST.* FROM REPORT_LIST) where NUM between ? and ?";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);
			rset = pstmt.executeQuery();
			singoList = new ArrayList<Singo>();

			while (rset.next()) {
				Singo sOne = new Singo();
				sOne.setReporterId(rset.getString("REPORTER_ID"));
				sOne.setReportedId(rset.getString("REPORTED_ID"));
				sOne.setReportContent(rset.getString("REPORT_CONTENT"));
				sOne.setDate(rset.getDate("REPORT_DATE"));
				sOne.setReportType(rset.getString("REPORT_TYPE"));
				

				singoList.add(sOne);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return singoList;
	}
	
	
	public String getPageNavi(Connection conn, int currentPage, int recordCountPerPage, int naviCountPerPage) {
		int recordTotalCount = totalCount(conn);
		int PageTotalCount = 0;// 전체 페이지 개수

		if (recordTotalCount % recordCountPerPage > 0) {
			PageTotalCount = recordTotalCount / recordCountPerPage + 1;
		} else {
			PageTotalCount = recordTotalCount / recordCountPerPage;
		}
		if (currentPage < 1) {
			currentPage = 1;
		} else if (currentPage > PageTotalCount) {
			currentPage = PageTotalCount;
		}
		int startNavi = ((currentPage - 1) / naviCountPerPage) * naviCountPerPage + 1;
		int endNavi = startNavi + naviCountPerPage - 1;

		if (endNavi > PageTotalCount) {
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
		if (needPrev) {
			sb.append("<a href='/singoList?currentPage=" + (startNavi - 1) + "'>< </a>");
		}
		for (int i = startNavi; i <= endNavi; i++) {
			if (i == currentPage) {
				sb.append("<a href='/singoList?currentPage=" + i + "'><b>" + i + "</b></a>");

			} else {
				sb.append("<a href='/singoList?currentPage=" + i + "'>" + i + "</a>");
			}
		}
		if (needNext) {
			sb.append("<a href='/singoList?currentPage=" + (endNavi + 1) + "'> ></a>");
		}
		return sb.toString();
	}
	
	
	public int totalCount(Connection conn) {
		ResultSet rset = null;
		PreparedStatement pstmt = null;
		int recordTotalCount =0;
		
		String query = "SELECT COUNT(*) AS TOTALCOUNT FROM REPORT_LIST";
		
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
	
	
	
	public ArrayList<Singo> singoSearchList(Connection conn, String search, int recordCountPerPage, int currentPage) {
		ArrayList<Singo> singoList = new ArrayList<Singo>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;

		String query = "select * FROM (Select REPORT_LIST.*, ROW_NUMBER() OVER(ORDER BY REPORTED_ID DESC) AS NUM FROM REPORT_LIST WHERE REPORTED_ID LIKE ?) WHERE NUM BETWEEN ? and ?";

		int start = currentPage * recordCountPerPage - (recordCountPerPage - 1);
		int end = currentPage * recordCountPerPage;
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, "%" + search + "%");
			pstmt.setInt(2, start);
			pstmt.setInt(3, end);
			rset = pstmt.executeQuery();

			while (rset.next()) {
				Singo sOne = new Singo();
				sOne.setReporterId(rset.getString("REPORTER_ID"));
				sOne.setReportedId(rset.getString("REPORTED_ID"));
				sOne.setReportContent(rset.getString("REPORT_CONTENT"));
				sOne.setDate(rset.getDate("REPORT_DATE"));
				sOne.setReportType(rset.getString("REPORT_TYPE"));
				

				singoList.add(sOne);

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}

		return singoList;
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
			sb.append("<a href='/singoSearch?search=" + search + "&currentPage=" + (startNavi - 1) + "'>< </a>");

		}
		for (int i = startNavi; i <= endNavi; i++) {
			if (i == currentPage) {
				sb.append("<a href='singoSearch?search=" + search + "&currentPage=" + i + "'><b>" + i + "</b></a>");
			}else {
				sb.append("<a href='singoSearch?search=" + search + "&currentPage=" + i + "'>" + i + "</a>");
			}
		}
		if(needNext) {
			sb.append("<a href='/singoSearch?search="+search+"&currentPage="+(endNavi+1)+"'> ></a>");
		}
		return sb.toString();
	}

	
	
	public int getSearchTotalCount(Connection conn, String search) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;

		String query = "SELECT COUNT(*) AS TOTALCOUNT FROM REPORT_LIST WHERE REPORTED_ID LIKE ?"; 
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
