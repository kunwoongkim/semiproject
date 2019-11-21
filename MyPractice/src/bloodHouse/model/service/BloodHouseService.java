package bloodHouse.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import bloodHouse.model.dao.BloodHouseDao;
import bloodHouse.model.vo.BloodHouse;
import bloodHouse.model.vo.PageData;
import common.JDBCTemplate;



public class BloodHouseService {
	
	public PageData bhList(int currentPage) {
		Connection conn = JDBCTemplate.getConnection();
		int recordCountPerPage=10;
		int naviCountPerPage = 5;
		PageData pd = new PageData();
		
		pd.setPageList(new BloodHouseDao().bhList(conn,currentPage,recordCountPerPage));
		pd.setPageNavi(new BloodHouseDao().getPageNavi(conn,currentPage,recordCountPerPage,naviCountPerPage));
		JDBCTemplate.close(conn);
		return pd;
	}

	
	public PageData bhSearchList(int currentPage, String search){
		Connection conn = JDBCTemplate.getConnection();
		int recordCountPerPage =10;
		int naviCountPerPage=5; 
		PageData pd = new PageData();
		pd.setPageList(new BloodHouseDao().bhSearchList(conn, search, recordCountPerPage, currentPage));
		pd.setPageNavi(new BloodHouseDao().getSearchPageNavi(conn, currentPage, recordCountPerPage, naviCountPerPage,search));
		ArrayList<BloodHouse> bhList = new BloodHouseDao().bhSearchList(conn, search, currentPage,recordCountPerPage);
		new BloodHouseDao().getPageNavi(conn, currentPage, recordCountPerPage, naviCountPerPage);
		JDBCTemplate.close(conn);
		return pd;
	}
}
