package edu.project.vo;

public class AttachImage2Vo {
	
	private String uploadPath;

	private String uuid;
	
	private String fileName;

	private int tidx;

	public String getUploadPath() {
		return uploadPath;
	}

	public void setUploadPath(String uploadPath) {
		this.uploadPath = uploadPath;
	}

	public String getUuid() {
		return uuid;
	}

	public void setUuid(String uuid) {
		this.uuid = uuid;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public int getTidx() {
		return tidx;
	}

	public void setTidx(int tidx) {
		this.tidx = tidx;
	}

	@Override
	public String toString() {
		return "AttachImage2Vo [uploadPath=" + uploadPath + ", uuid=" + uuid + ", fileName=" + fileName + ", tidx="
				+ tidx + "]";
	}

	



	
	
	
}
