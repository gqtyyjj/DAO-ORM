package cn.aoqi.vo;

import java.io.Serializable;
import java.util.List;

public class Action implements Serializable{
	private Integer actid;
	private String title;
	private String flag;
	private List<Role> role;
	public Integer getActid() {
		return actid;
	}
	public void setActid(Integer actid) {
		this.actid = actid;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getFlag() {
		return flag;
	}
	public void setFlag(String flag) {
		this.flag = flag;
	}
	public List<Role> getRole() {
		return role;
	}
	public void setRole(List<Role> role) {
		this.role = role;
	}
	@Override
	public String toString() {
		return "Action [actid=" + actid + ", title=" + title + ", flag=" + flag + ", role=" + role + "]";
	}
	
}
