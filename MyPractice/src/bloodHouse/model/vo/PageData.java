package bloodHouse.model.vo;

import java.util.ArrayList;

public class PageData {
	private ArrayList<BloodHouse> pageList;
	private String pageNavi;

	public PageData() {
		super();
	}

	public PageData(ArrayList<BloodHouse> pageList, String pageNavi) {
		super();
		this.pageList = pageList;
		this.pageNavi = pageNavi;
	}

	public ArrayList<BloodHouse> getPageList() {
		return pageList;
	}

	public void setPageList(ArrayList<BloodHouse> pageList) {
		this.pageList = pageList;
	}

	public String getPageNavi() {
		return pageNavi;
	}

	public void setPageNavi(String pageNavi) {
		this.pageNavi = pageNavi;
	}
	
	
}
