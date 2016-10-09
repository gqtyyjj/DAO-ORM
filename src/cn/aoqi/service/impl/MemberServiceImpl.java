package cn.aoqi.service.impl;
import java.util.HashMap;
import java.util.Map;

import cn.aoqi.dao.IMemberDAO;
import cn.aoqi.factory.DAOFactory;
import cn.aoqi.dao.impl.MemberDAOImpl;
import cn.aoqi.service.IMemberService;
import cn.aoqi.util.MD5Code;
import cn.aoqi.vo.Member;

public class MemberServiceImpl implements IMemberService {

	@Override
	public Member getMemberById(String id) throws Exception {
		IMemberDAO dao = DAOFactory.getInstance(MemberDAOImpl.class);
		return dao.findById(id);
	}

	@Override
	public Map<String,Object> login(String name, String password) throws Exception {
		Map<String,Object> map = new HashMap<String,Object>(); 
		IMemberDAO dao = DAOFactory.getInstance(MemberDAOImpl.class);
		
		String salt = "bWxkbmphdmE=" ;
		
		String passwordx = new MD5Code().getMD5ofStr(password + "({" + salt + "})");
		
		Member vo = dao.findById(name);
		
		if( vo != null)
		{
			if(vo.getPassword().equals(passwordx))
			{
				map.put("member", vo);
			}
			else
			{
				map.put("passwordError", "密码错误@ "+name);
			}
		}
		else
		{
			map.put("nameErrer","用户名不存在!");
		}
		
		return map;
	}
	

}
