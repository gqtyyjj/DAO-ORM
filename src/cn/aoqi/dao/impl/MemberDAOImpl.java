package cn.aoqi.dao.impl;

import java.sql.ResultSet;

import cn.aoqi.dao.IMemberDAO;
import cn.aoqi.util.AbstractDAO;
import cn.aoqi.vo.Member;

public class MemberDAOImpl extends AbstractDAO implements IMemberDAO {

	@Override
	public Member findById(String id) throws Exception {
		Member vo = null;
		String sql = "select mid,password,name,sflag from member where mid = ?";
		super.pstmt = super.conn.prepareStatement(sql);
		super.pstmt.setString(1, id);
		ResultSet rs = super.pstmt.executeQuery();
		while(rs.next())
		{
			vo = new Member();
			vo.setMid(rs.getString(1));
			vo.setPassword(rs.getString(2));
			vo.setName(rs.getString(3));
			vo.setSflag(rs.getInt(4));
		}
		return vo;
	}

}
