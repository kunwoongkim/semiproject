package member.model.vo;

import java.util.ArrayList;

public class PageData {
	private ArrayList<Member> pageList;
	private String pageNavi;
	
	public PageData() {
		super();
	}
	
	public ArrayList<Member> getPageList() {
		return pageList;
	}

	public void setPageList(ArrayList<Member> pageList) {
		this.pageList = pageList;
	}

	public String getPageNavi() {
		return pageNavi;
	}

	public void setPageNavi(String pageNavi) {
		this.pageNavi = pageNavi;
	}

	public PageData(ArrayList<Member> pageList, String pageNavi) {
		
		super();
		this.pageList = pageList;
		this.pageNavi = pageNavi;
	}

}
