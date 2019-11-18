package board.model.vo;

import java.sql.Date;

public class Comment {

	
	private String commentId;
	private int boardNumber;
	private String	boardComment;
	private String commentNickName;
	private Date commentDate; 
	private int commentNum;
	
	
	public Comment(){}


	public String getCommentId() {
		return commentId;
	}


	public void setCommentId(String commentId) {
		this.commentId = commentId;
	}


	public int getBoardNumber() {
		return boardNumber;
	}


	public void setBoardNumber(int boardNumber) {
		this.boardNumber = boardNumber;
	}


	public String getBoardComment() {
		return boardComment;
	}


	public void setBoardComment(String boardComment) {
		this.boardComment = boardComment;
	}


	public String getCommentNickName() {
		return commentNickName;
	}


	public void setCommentNickName(String commentNickName) {
		this.commentNickName = commentNickName;
	}


	public Date getCommentDate() {
		return commentDate;
	}


	public void setCommentDate(Date commentDate) {
		this.commentDate = commentDate;
	}


	public int getCommentNum() {
		return commentNum;
	}


	public void setCommentNum(int commentNum) {
		this.commentNum = commentNum;
	}


	
	
	
	
}
