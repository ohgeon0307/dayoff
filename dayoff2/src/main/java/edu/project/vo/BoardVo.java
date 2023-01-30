package edu.project.vo;

public class BoardVo {
	private int bidx;
	private String title;
	private String content;
	private String wdate;
	private int hit;
	private int uidx;
	private String hashTag;
	private String filename;
	private int likes;
	private String bDelYn;
	private String name;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getBidx() {
		return bidx;
	}
	public void setBidx(int bidx) {
		this.bidx = bidx;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getWdate() {
		return wdate;
	}
	public void setWdate(String wdate) {
		this.wdate = wdate;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	public int getUidx() {
		return uidx;
	}
	public void setUidx(int uidx) {
		this.uidx = uidx;
	}
	public String getHashTag() {
		return hashTag;
	}
	public void setHashTag(String hashTag) {
		this.hashTag = hashTag;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public int getLikes() {
		return likes;
	}
	public void setLikes(int likes) {
		this.likes = likes;
	}
	public String getbDelYn() {
		return bDelYn;
	}
	public void setbDelYn(String bDelYn) {
		this.bDelYn = bDelYn;
	}
	
	@Override
	public String toString() {
		return "BoardVo [bidx=" + bidx + ", title=" + title + ", content=" + content + ", wdate=" + wdate + ", hit="
				+ hit + ", uidx=" + uidx + ", hashTag=" + hashTag + ", filename=" + filename + ", likes=" + likes
				+ ", bDelYn=" + bDelYn + "]";
	}
	
}
