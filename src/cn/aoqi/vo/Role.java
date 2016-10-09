package cn.aoqi.vo;
import java.io.Serializable;
import java.util.List;
public class Role implements Serializable{
	private Integer rid;
	private String title;
	private String flag;
	private List<Member> member;
	private List<Action> action;
	public Integer getRid() {
		return rid;
	}
	public void setRid(Integer rid) {
		this.rid = rid;
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
	public List<Member> getMember() {
		return member;
	}
	public void setMember(List<Member> member) {
		this.member = member;
	}
	public List<Action> getAction() {
		return action;
	}
	public void setAction(List<Action> action) {
		this.action = action;
	}
	@Override
	public String toString() {
		return "Role [rid=" + rid + ", title=" + title + ", flag=" + flag + ", member=" + member + ", action=" + action
				+ "]";
	}
 }
