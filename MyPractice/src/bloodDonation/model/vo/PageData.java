package bloodDonation.model.vo;

import java.util.ArrayList;

public class PageData {
	private ArrayList<BloodDonation> pageList;
	private String pageNavi;

	public PageData() {
		super();
	}

	public PageData(ArrayList<BloodDonation> pageList, String pageNavi) {
		super();
		this.pageList = pageList;
		this.pageNavi = pageNavi;
	}

	public ArrayList<BloodDonation> getPageList() {
		return pageList;
	}

	public void setPageList(ArrayList<BloodDonation> pageList) {
		this.pageList = pageList;
	}

	public String getPageNavi() {
		return pageNavi;
	}

	public void setPageNavi(String pageNavi) {
		this.pageNavi = pageNavi;
	}
	
	
}
