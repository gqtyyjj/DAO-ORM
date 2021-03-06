package cn.aoqi.vo;

import java.io.Serializable;

public class Elog implements Serializable{
	private Integer elid;
	private Integer empno;
	private Integer deptno;
	private String mid;
	private Integer lid;
	private String job;
	private Double sal;
	private Double comm;
	private Integer flag;
	private String note;
	
	public Integer getElid() {
		return elid;
	}

	public void setElid(Integer elid) {
		this.elid = elid;
	}

	public Integer getEmpno() {
		return empno;
	}

	public void setEmpno(Integer empno) {
		this.empno = empno;
	}

	public Integer getDeptno() {
		return deptno;
	}

	public void setDeptno(Integer deptno) {
		this.deptno = deptno;
	}

	public String getMid() {
		return mid;
	}

	public void setMid(String mid) {
		this.mid = mid;
	}

	public Integer getLid() {
		return lid;
	}

	public void setLid(Integer lid) {
		this.lid = lid;
	}

	public String getJob() {
		return job;
	}

	public void setJob(String job) {
		this.job = job;
	}

	public Double getSal() {
		return sal;
	}

	public void setSal(Double sal) {
		this.sal = sal;
	}

	public Double getComm() {
		return comm;
	}

	public void setComm(Double comm) {
		this.comm = comm;
	}

	public Integer getFlag() {
		return flag;
	}

	public void setFlag(Integer flag) {
		this.flag = flag;
	}

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}

	@Override
	public String toString() {
		return "Elog [elid=" + elid + ", empno=" + empno + ", deptno=" + deptno + ", mid=" + mid + ", lid=" + lid
				+ ", job=" + job + ", sal=" + sal + ", comm=" + comm + ", flag=" + flag + ", note=" + note + "]";
	}
	
}
