package cn.aoqi.vo;

import java.io.Serializable;
import java.util.List;

public class Member implements Serializable{
	private String mid;
	private String password;
	private String name;
	private Integer sflag;
	private List<Role> role;
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
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
	public Integer getSflag() {
		return sflag;
	}
	public void setSflag(Integer sflag) {
		this.sflag = sflag;
	}
	public List<Role> getRole() {
		return role;
	}
	public void setRole(List<Role> role) {
		this.role = role;
	}
	@Override
	public String toString() {
		return "Member [mid=" + mid + ", password=" + password + ", name=" + name + ", sflag=" + sflag + ", role="
				+ role + "]";
	}
	
}
