package singo.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import common.JDBCTemplate;
import singo.model.dao.SingoDao;
import singo.model.vo.PageData;
import singo.model.vo.Singo;





public class SingoService {
	
	public int singoDelete(String reportedId) {
		Connection conn = JDBCTemplate.getConnection();
		int result = new SingoDao().singoDelete(conn, reportedId);
		
		if(result>0) {
			JDBCTemplate.commit(conn);
		} else {
			JDBCTemplate.rollback(conn);
		}
		/*JDBCTemplate.close(conn);*/
		return result;	
		
	}
	
	public PageData singoList(int currentPage){
		Connection conn = JDBCTemplate.getConnection();
		int recordCountPerPage =10;
		int naviCountPerPage=5;
		PageData pd = new PageData();
		
		pd.setPageList(new SingoDao().singoList(conn,currentPage,recordCountPerPage));
		pd.setPageNavi(new SingoDao().getPageNavi(conn,currentPage, recordCountPerPage,naviCountPerPage));
		
		JDBCTemplate.close(conn);
		return pd;
	}
	
	
	public PageData singoMemberList(String userId, int currentPage){
		Connection conn = JDBCTemplate.getConnection();
		int recordCountPerPage =10;
		int naviCountPerPage=5;
		PageData pd = new PageData();
		
		pd.setPageList(new SingoDao().singoMemberList(conn,userId,currentPage,recordCountPerPage));
		pd.setPageNavi(new SingoDao().getuserPageNavi(conn,userId,currentPage, recordCountPerPage,naviCountPerPage));
		
		JDBCTemplate.close(conn);
		return pd;
	}

	
	public PageData singoSearchList(int currentPage, String search){
		Connection conn = JDBCTemplate.getConnection();
		int recordCountPerPage =10;
		int naviCountPerPage=5; 
		PageData pd = new PageData();
		pd.setPageList(new SingoDao().singoSearchList(conn, search, recordCountPerPage, currentPage));
		pd.setPageNavi(new SingoDao().getSearchPageNavi(conn, currentPage, recordCountPerPage, naviCountPerPage,search));
		ArrayList<Singo> singoList = new SingoDao().singoSearchList(conn, search, currentPage,recordCountPerPage);
		new SingoDao().getPageNavi(conn, currentPage, recordCountPerPage, naviCountPerPage);
		JDBCTemplate.close(conn);
		return pd;
	}
	
	
	
	public int insertReport(Singo singo) {
		
		Connection conn = JDBCTemplate.getConnection();
		
		int result = new SingoDao().insertReport(conn,singo);
		
		if(result > 0 ) {
			
			JDBCTemplate.commit(conn);
		}else {
			
			JDBCTemplate.rollback(conn);
		}
		
		JDBCTemplate.close(conn);
		return result;
	}
	
	public int updateReport(int reportNo) {
		
		Connection conn = JDBCTemplate.getConnection();
		
		int result = new SingoDao().updateReport(conn,reportNo);
		
		if(result > 0 ) {
			
			JDBCTemplate.commit(conn);
		}else {
			
			JDBCTemplate.rollback(conn);
		}
		
		JDBCTemplate.close(conn);
		return result;
	}
	
	
	
	public Singo selectOneReport(int reportNo) {
		Connection conn = JDBCTemplate.getConnection();
		Singo singo = new SingoDao().selectOneReport(conn, reportNo);

		JDBCTemplate.close(conn);
		return singo;
	}

	public Singo selectReportNo(int reportNo) {
		Connection conn = JDBCTemplate.getConnection();
		Singo singo = new SingoDao().selectReportNo(conn, reportNo);

		JDBCTemplate.close(conn);
		return singo;
	}
}
