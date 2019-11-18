package singo.model.vo;

import java.sql.Date;

public class Singo {

	private String reporterId;
	private String reportedId;
	private String reportContent;
	private Date date;
	private String reportType;
	
	public Singo() {}

	public String getReporterId() {
		return reporterId;
	}

	public void setReporterId(String reporterId) {
		this.reporterId = reporterId;
	}

	public String getReportedId() {
		return reportedId;
	}

	public void setReportedId(String reportedId) {
		this.reportedId = reportedId;
	}

	public String getReportContent() {
		return reportContent;
	}

	public void setReportContent(String reportContent) {
		this.reportContent = reportContent;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getReportType() {
		return reportType;
	}

	public void setReportType(String reportType) {
		this.reportType = reportType;
	}
	
	
}
