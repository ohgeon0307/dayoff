package edu.project.vo;

import java.util.List;

public class PhotoVo {
	private int pidx;
	private String pTitle;
	private String pContent;
	private int uidx;
	private int pLikes;
	private String pDelYn;
	private String pHashTag;
	private int pHit;
	private List<AttachImageVo> imageList;
	
	public List<AttachImageVo> getImageList() {
		return imageList;
	}
	public void setImageList(List<AttachImageVo> imageList) {
		this.imageList = imageList;
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
	public String getpContent() {
		return pContent;
	}
	public void setpContent(String pContent) {
		this.pContent = pContent;
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
		return "PhotoVo [pidx=" + pidx + ", pTitle=" + pTitle + ", pContent=" + pContent + ", uidx=" + uidx
				+ ", pLikes=" + pLikes + ", pDelYn=" + pDelYn + ", pHashTag=" + pHashTag + ", pHit=" + pHit
				+ ", imageList=" + imageList + "]";
	}

	
	


}
