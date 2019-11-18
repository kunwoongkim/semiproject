package board.model.vo;

import java.util.ArrayList;

public class PageData {

	private ArrayList<Board> pageList;
	private String pageNavi;
	private ArrayList<Comment> commentList;
	
	public PageData() {
		super();
		
	}
	
	public ArrayList<Comment> getCommentList() {
		return commentList;
	}

	public void setCommentList(ArrayList<Comment> commentList) {
		this.commentList = commentList;
	}

	public PageData(ArrayList<Board> pageList,String pageNavi) {
		super();
		this.pageList = pageList;
		this.pageNavi = pageNavi;
	}

	public ArrayList<Board> getPageList() {
		return pageList;
	}

	public void setPageList(ArrayList<Board> pageList) {
		this.pageList = pageList;
	}

	public String getPageNavi() {
		return pageNavi;
	}

	public void setPageNavi(String pageNavi) {
		this.pageNavi = pageNavi;
	}
}


