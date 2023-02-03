package edu.project.vo;

import org.springframework.stereotype.Repository;

@Repository
public class ReplyVo {
	private int ridx;
	private String rContent;
	private String redate;
	private int uidx;
	private int bidx;
	private String rdelyn;
	private String writer;
	
	public int getRidx() {
		return ridx;
	}
	public void setRidx(int ridx) {
		this.ridx = ridx;
	}
	public String getrContent() {
		return rContent;
	}
	public void setrContent(String rContent) {
		this.rContent = rContent;
	}
	public String getRedate() {
		return redate;
	}
	public void setRedate(String redate) {
		this.redate = redate;
	}
	public int getUidx() {
		return uidx;
	}
	public void setUidx(int uidx) {
		this.uidx = uidx;
	}
	public int getBidx() {
		return bidx;
	}
	public void setBidx(int bidx) {
		this.bidx = bidx;
	}
	public String getRdelyn() {
		return rdelyn;
	}
	public void setRdelyn(String rdelyn) {
		this.rdelyn = rdelyn;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	
}
