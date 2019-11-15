package board.model.service;

import java.sql.Connection;

import board.model.dao.BoardDao;
import board.model.vo.PageData;
import common.JDBCTemplate;



public class BoardService {
	
	
	
	public PageData BoardAll(String userId, int currentPage) {
		
		
		Connection conn = JDBCTemplate.getConnection();
		int recordCountPerPage = 10;
		int naviCountPerPage=5;
		PageData pd = new PageData();
		pd.setPageList(new BoardDao().BoardAll(conn,userId, currentPage, recordCountPerPage));
		pd.setPageNavi(new BoardDao().getPageNavi(conn, currentPage, recordCountPerPage, naviCountPerPage));
		JDBCTemplate.close(conn);
		return pd;
		
	}

}
