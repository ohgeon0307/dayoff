package edu.project.vo;

public class ImagesVo {
	
	private int iidx;
	private String iofilename;
	private String icfilename;
	private int pidx;
	
	public int getIidx() {
		return iidx;
	}
	public void setIidx(int iidx) {
		this.iidx = iidx;
	}
	public String getIofilename() {
		return iofilename;
	}
	public void setIofilename(String iofilename) {
		this.iofilename = iofilename;
	}
	public String getIcfilename() {
		return icfilename;
	}
	public void setIcfilename(String icfilename) {
		this.icfilename = icfilename;
	}
	public int getPidx() {
		return pidx;
	}
	public void setPidx(int pidx) {
		this.pidx = pidx;
	}
	
	@Override
	public String toString() {
		return "IamgesVo [iidx=" + iidx + ", iofilename=" + iofilename + ", icfilename=" + icfilename + ", pidx=" + pidx
				+ "]";
	}
	
	
}
