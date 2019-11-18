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
}
