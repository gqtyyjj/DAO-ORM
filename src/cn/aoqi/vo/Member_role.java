package cn.aoqi.vo;

import java.io.Serializable;

public class Member_role implements Serializable{
	private String mid;
	private Integer rid;
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public Integer getRid() {
		return rid;
	}
	public void setRid(Integer rid) {
		this.rid = rid;
	}
	@Override
	public String toString() {
		return "Member_role [mid=" + mid + ", rid=" + rid + "]";
	}
	

}
