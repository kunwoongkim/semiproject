package bloodDonation.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import bloodDonation.model.dao.BloodDonationDao;
import bloodDonation.model.vo.BloodDonation;
import bloodDonation.model.vo.PageData;
import common.JDBCTemplate;

public class BloodDonationService {
	public PageData donationList(int currentPage) {
		Connection conn = JDBCTemplate.getConnection();

		int recordCountPerPage = 10;
		int naviCountPerPage = 5;

		PageData pd = new PageData();
		pd.setPageList(new BloodDonationDao().donationList(conn, currentPage, recordCountPerPage));
		pd.setPageNavi(new BloodDonationDao().getPageNavi(conn, currentPage, recordCountPerPage, naviCountPerPage));

		JDBCTemplate.close(conn);
		return pd;

	}

	public PageData bdSearchList(int currentPage, String search) {

		Connection conn = JDBCTemplate.getConnection();
		int recordCountPerPage = 10;
		int naviCountPerPage = 5;
		PageData pd = new PageData();
		pd.setPageList(new BloodDonationDao().bdSearchList(conn, search, currentPage, recordCountPerPage));
		pd.setPageNavi(new BloodDonationDao().getSearchPageNavi(conn, currentPage, recordCountPerPage, naviCountPerPage, search));
		JDBCTemplate.close(conn);

		return pd;
	}
}
