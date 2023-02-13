package edu.project.vo;

import java.util.List;

public class PhotoVo {
	private int pidx;
	private String pTitle;
	private int uidx;
	private String pDelYn;
	private String pHashTag;
	private int pHit;
	private String pWriter;
	
	
	public String getpWriter() {
		return pWriter;
	}
	public void setpWriter(String pWriter) {
		this.pWriter = pWriter;
	}
	public int getPidx() {
		return pidx;
	}
	public void setPidx(int pidx) {
		this.pidx = pidx;
	}
	public String getpTitle() {
		return pTitle;
	}
	public void setpTitle(String pTitle) {
		this.pTitle = pTitle;
	}
	public int getUidx() {
		return uidx;
	}
	public void setUidx(int uidx) {
		this.uidx = uidx;
	}
	public String getpDelYn() {
		return pDelYn;
	}
	public void setpDelYn(String pDelYn) {
		this.pDelYn = pDelYn;
	}
	public String getpHashTag() {
		return pHashTag;
	}
	public void setpHashTag(String pHashTag) {
		this.pHashTag = pHashTag;
	}
	public int getpHit() {
		return pHit;
	}
	public void setpHit(int pHit) {
		this.pHit = pHit;
	}
	@Override
	public String toString() {
		return "PhotoVo [pidx=" + pidx + ", pTitle=" + pTitle + ", uidx=" + uidx + ", pDelYn=" + pDelYn + ", pHashTag="
				+ pHashTag + ", pHit=" + pHit + ", pWriter=" + pWriter + "]";
	}
	



}
