package cn.aoqi.dao;

import cn.aoqi.vo.Member;

public interface IMemberDAO {
	public Member findById(String id)throws Exception;
}
