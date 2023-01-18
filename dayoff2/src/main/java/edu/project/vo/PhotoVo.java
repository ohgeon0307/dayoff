package edu.project.vo;

public class PhotoVo {
	private int pidx;
	private String pTitle;
	private int uidx;
	private int pLikes;
	private String pDelYn;
	private String pHashTag;
	private int pHit;
	
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
	public int getpLikes() {
		return pLikes;
	}
	public void setpLikes(int pLikes) {
		this.pLikes = pLikes;
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
		return "PhotoVo [pidx=" + pidx + ", pTitle=" + pTitle + ", uidx=" + uidx + ", pLikes=" + pLikes + ", pDelYn="
				+ pDelYn + ", pHashTag=" + pHashTag + ", pHit=" + pHit + "]";
	}
}
