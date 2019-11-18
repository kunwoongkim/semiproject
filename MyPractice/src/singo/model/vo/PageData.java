package singo.model.vo;

import java.util.ArrayList;

public class PageData {
	private ArrayList<Singo> pageList;
	private String pageNavi;
	
	public PageData() {
		super();
	}
	
	public ArrayList<Singo> getPageList() {
		return pageList;
	}

	public void setPageList(ArrayList<Singo> pageList) {
		this.pageList = pageList;
	}

	public String getPageNavi() {
		return pageNavi;
	}

	public void setPageNavi(String pageNavi) {
		this.pageNavi = pageNavi;
	}

	public PageData(ArrayList<Singo> pageList, String pageNavi) {
		
		super();
		this.pageList = pageList;
		this.pageNavi = pageNavi;
	}

}
