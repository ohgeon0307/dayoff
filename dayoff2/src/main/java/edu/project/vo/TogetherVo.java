package edu.project.vo;

public class TogetherVo {
	private int tidx;
	private String tContent;
	private String tDate;
	private int uidx;
	private int tHit;
	private String tHashTag;
	private String tFilename;
	private String tDelYn;
	private String tTitle;
	
	public String gettTitle() {
		return tTitle;
	}

	public void settTitle(String tTitle) {
		this.tTitle = tTitle;
	}

	public int getTidx() {
		return tidx;
	}
	
	public void setTidx(int tidx) {
		this.tidx = tidx;
	}
	public String gettContent() {
		return tContent;
	}
	public void settContent(String tContent) {
		this.tContent = tContent;
	}
	public String gettDate() {
		return tDate;
	}
	public void settDate(String tDate) {
		this.tDate = tDate;
	}
	public int getUidx() {
		return uidx;
	}
	public void setUidx(int uidx) {
		this.uidx = uidx;
	}
	public int gettHit() {
		return tHit;
	}
	public void settHit(int tHit) {
		this.tHit = tHit;
	}
	public String gettHashTag() {
		return tHashTag;
	}
	public void settHashTag(String tHashTag) {
		this.tHashTag = tHashTag;
	}
	public String gettFilename() {
		return tFilename;
	}
	public void settFilename(String tFilename) {
		this.tFilename = tFilename;
	}
	public String gettDelYn() {
		return tDelYn;
	}
	public void settDelYn(String tDelYn) {
		this.tDelYn = tDelYn;
	}
	
	@Override
	public String toString() {
		return "TogetherVo [tidx=" + tidx + ", tContent=" + tContent + ", tDate=" + tDate + ", uidx=" + uidx + ", tHit="
				+ tHit + ", tHashTag=" + tHashTag + ", tFilename=" + tFilename + ", tDelYn=" + tDelYn + "]";
	}
}
