package board.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import board.model.vo.Board;
import board.model.vo.PageData;
import common.JDBCTemplate;




public class BoardDao {

	
	public String getPageNavi(Connection conn, int currentPage,int recordCountPerPage,int naviCountPerPage) {
		int recordTotalCount = totalCount(conn) ; //전체 게시물수
		int pageTotalCount = 0; // 전체 페이지 개수
		
		if(recordTotalCount % recordCountPerPage > 0) {
			pageTotalCount = recordTotalCount / recordCountPerPage+1;
		}else {
			pageTotalCount = recordTotalCount / recordCountPerPage;
		}
		
		
		if (currentPage < 1) {
			currentPage = 1;
		}else if (currentPage > pageTotalCount) {
			currentPage = pageTotalCount;
		}//에러처리
		// 현재 내 페이지가 3페이지면 1~5 4페이지도 1~5 6페이지면  6~10, 8페이지도 6~10
		int startNavi = ((currentPage - 1) / naviCountPerPage) * naviCountPerPage+1;
		// ex) 8페이지일 경우 -> 6~10이 나와야함
		// ((8-1)/5)*5+1=6
		int endNavi = startNavi + naviCountPerPage -1;
		// 6+5-1=10
		
		if(endNavi > pageTotalCount) {
			endNavi = pageTotalCount;
		}
		
		// '<' 모양과 '>' 모양을 준비하기위해
		// 논리형 변수
		boolean needPrev = true;
		boolean needNext =true;
		
		if(startNavi == 1) {
			needPrev = false;
		}
		if(endNavi == pageTotalCount) {
			needNext=false;
		}
		//이후에는 모양을 만드는 것!
		StringBuilder sb = new StringBuilder();
		if(needPrev) {
			sb.append("<a href='/myboard?currentPage="+(startNavi-1)+"'>< </a>");
		}
		for(int i= startNavi; i <= endNavi;i++) {
			if(i==currentPage) {
				sb.append("<a href='/myboard?currentPage="+i+"'><b>"+i+"</b></a>");
			}else {
				sb.append("<a href='/myboard?currentPage="+i+"'>"+i+"</a>");
			}
		}
		if(needNext) {
			sb.append("<a href='/myboard?currentPage="+(endNavi+1)+"'> ></a>");
		}

		return sb.toString();
}
	
	public int totalCount(Connection conn) {
		PreparedStatement pstmt = null;
		int recordTotalCount = 0;
		ResultSet rset = null;
		String query = "select count(*) as totalCount from Board";
		try {
			pstmt = conn.prepareStatement(query);
			rset= pstmt.executeQuery();
			rset.next();
			recordTotalCount = rset.getInt("totalCount");
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally
		{
			JDBCTemplate.close(pstmt);
			JDBCTemplate.close(rset);
		}
		return recordTotalCount;
	}
	
	public ArrayList<Board> BoardAll(Connection conn,String userId,int currentPage,int recordCountPerPage) {
		PreparedStatement pstmt = null;
		ArrayList<Board> blist = null;
		ResultSet rset = null;
		int start = currentPage*recordCountPerPage - (recordCountPerPage-1);
		int end = currentPage*recordCountPerPage;
		String query = "Select* from (select Row_number() OVER(ORDER BY BOARD_NUMBER DESC) as NUM, Board.* FROM Board) WHERE USER_ID=? AND NUM BETWEEN ? AND ?";
		
		try {
			pstmt= conn.prepareStatement(query);
			pstmt.setString(1, userId);
			pstmt.setInt(2, start);
			pstmt.setInt(3, end);
			rset=pstmt.executeQuery();
			blist = new ArrayList<Board>();
			while(rset.next()){
				Board board = new Board();
				board.setBoardNumber(rset.getInt("BOARD_NUMBER"));
				board.setUserId(rset.getString("USER_ID"));
				board.setUserNickname(rset.getString("USER_NICKNAME"));
				board.setBoardContent(rset.getString("BOARD_CONTENT"));
				board.setMakeDate(rset.getDate("MAKE_DATE"));
				board.setTitle(rset.getString("TITLE"));
				board.setBoardPublic(rset.getString("BOARD_PUBLIC"));
				board.setBoardType(rset.getString("BOARD_TYPE"));
				board.setClickCount(rset.getInt("CLICK_COUNT"));
				
				blist.add(board);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			
			JDBCTemplate.close(pstmt);
			JDBCTemplate.close(rset);
		}
		return blist;
	}
}