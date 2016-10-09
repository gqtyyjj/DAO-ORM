package cn.aoqi.service;
 
import java.util.Map;

import cn.aoqi.vo.Member;

public interface IMemberService {
	public Member getMemberById(String id)throws Exception;
	public Map<String,Object> login(String name,String password)throws Exception;
}
