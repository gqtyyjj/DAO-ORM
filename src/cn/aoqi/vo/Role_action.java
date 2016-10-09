package cn.aoqi.vo;

import java.io.Serializable;

public class Role_action implements Serializable{
	private Integer rid;
	private Integer actid;
	public Integer getRid() {
		return rid;
	}
	public void setRid(Integer rid) {
		this.rid = rid;
	}
	public Integer getActid() {
		return actid;
	}
	public void setActid(Integer actid) {
		this.actid = actid;
	}
	@Override
	public String toString() {
		return "Role_action [rid=" + rid + ", actid=" + actid + "]";
	}
	
}
