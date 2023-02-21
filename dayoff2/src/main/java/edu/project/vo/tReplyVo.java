package edu.project.vo;

import org.springframework.stereotype.Repository;

@Repository
public class tReplyVo {
	private int tridx;
	private String trContent;
	private String tredate;
	private int uidx;
	private int tidx;
	private String trdelyn;
	private String twriter;
	
	public int getTridx() {
		return tridx;
	}
	public void setTridx(int tridx) {
		this.tridx = tridx;
	}
	public String getTrContent() {
		return trContent;
	}
	public void setTrContent(String trContent) {
		this.trContent = trContent;
	}
	public String getTredate() {
		return tredate;
	}
	public void setTredate(String tredate) {
		this.tredate = tredate;
	}
	public int getUidx() {
		return uidx;
	}
	public void setUidx(int uidx) {
		this.uidx = uidx;
	}
	public int getTidx() {
		return tidx;
	}
	public void setTidx(int tidx) {
		this.tidx = tidx;
	}
	public String getTrdelyn() {
		return trdelyn;
	}
	public void setTrdelyn(String trdelyn) {
		this.trdelyn = trdelyn;
	}
	public String gettWriter() {
		return twriter;
	}
	public void settWriter(String twriter) {
		this.twriter = twriter;
	}
	
	
	
}
