package edu.project.vo;

public class UserVo {
	private int uidx;
	private String id;
	private String password;
	private String name;
	private String phone;
	private String rdate;
	private String uDelYn;
	private String birth;
	private String gender;
	
	@Override
	public String toString() {
		return "UserVo [uidx=" + uidx + ", id=" + id + ", password=" + password + ", name=" + name + ", phone=" + phone
				+ ", rdate=" + rdate + ", uDelYn=" + uDelYn + ", birth=" + birth + ", gender=" + gender + "]";
	}
	public int getUidx() {
		return uidx;
	}
	public void setUidx(int uidx) {
		this.uidx = uidx;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getRdate() {
		return rdate;
	}
	public void setRdate(String rdate) {
		this.rdate = rdate;
	}
	public String getuDelYn() {
		return uDelYn;
	}
	public void setuDelYn(String uDelYn) {
		this.uDelYn = uDelYn;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
}
