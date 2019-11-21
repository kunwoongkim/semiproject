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
		pd.setPageNavi(new BoardDao().getPageNavi(conn, currentPage, recordCountPerPage, naviCountPerPage,userId));
		JDBCTemplate.close(conn);
		return pd;
		
	}
	
	
	public PageData CommentAll(String userId, int currentPage) {
		Connection conn = JDBCTemplate.getConnection();
		int recordCountPerPage = 10;
		int naviCountPerPage=5;
		PageData pd = new PageData();
		pd.setCommentList(new BoardDao().CommentAll(conn,userId, currentPage, recordCountPerPage));
		pd.setPageNavi(new BoardDao().getCommentNavi(conn, currentPage, recordCountPerPage, naviCountPerPage, userId));
		JDBCTemplate.close(conn);
		return pd;
		
	}
	
	public int deleteMyBoard(int boardNo) {
		
		Connection conn = JDBCTemplate.getConnection();
		
		int result = new BoardDao().deleteMyBoard(conn,boardNo);
		
		if(result>0) {
			JDBCTemplate.commit(conn);
			
		}else {
			
			JDBCTemplate.rollback(conn);
		}
		
		
		JDBCTemplate.close(conn);
		
		return result;
	}
	
public int deleteMyComment(int commentNo) {
		
		Connection conn = JDBCTemplate.getConnection();
		
		int result = new BoardDao().deleteMyComment(conn,commentNo);
		
		if(result>0) {
			JDBCTemplate.commit(conn);
			
		}else {
			
			JDBCTemplate.rollback(conn);
		}
		
		
		JDBCTemplate.close(conn);
		
		return result;
	}


}
