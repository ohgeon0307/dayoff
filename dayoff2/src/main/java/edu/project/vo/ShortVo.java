package edu.project.vo;

public class ShortVo {
	private int sidx;
	private String sTitle;
	private int uidx;
	private int sLikes;
	private String sDelYn;
	
	
	public int getSidx() {
		return sidx;
	}
	public void setSidx(int sidx) {
		this.sidx = sidx;
	}
	public String getsTitle() {
		return sTitle;
	}
	public void setsTitle(String sTitle) {
		this.sTitle = sTitle;
	}
	public int getUidx() {
		return uidx;
	}
	public void setUidx(int uidx) {
		this.uidx = uidx;
	}
	public int getsLikes() {
		return sLikes;
	}
	public void setsLikes(int sLikes) {
		this.sLikes = sLikes;
	}
	public String getsDelYn() {
		return sDelYn;
	}
	public void setsDelYn(String sDelYn) {
		this.sDelYn = sDelYn;
	}
	public int getsHit() {
		return sHit;
	}
	public void setsHit(int sHit) {
		this.sHit = sHit;
	}
	private int sHit;


	@Override
	public String toString() {
		return "ShortVo [sidx=" + sidx + ", sTitle=" + sTitle + ", uidx=" + uidx + ", sLikes=" + sLikes + ", sDelYn="
				+ sDelYn + ", sHit=" + sHit + "]";
	}
	
	
}
