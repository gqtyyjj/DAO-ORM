package cn.aoqi.action;

import java.util.Map;

import javax.servlet.annotation.WebServlet;

import cn.aoqi.factory.ServiceFactory;
import cn.aoqi.service.IMemberService;
import cn.aoqi.service.impl.MemberServiceImpl;
import cn.aoqi.util.DispatcharUtil;

@WebServlet(urlPatterns="/login/*")
public class LoginServlet extends DispatcharUtil{
	/**
	 * 用户登陆操作
	 * @return
	 * @throws Exception
	 */
	public String login()
	{
		super.urlstatic = 1;
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		String code1 = request.getParameter("code");
		String code2 = (String)request.getSession().getAttribute("rand");
		if(!code1.equals(code2))
		{
			super.request.setAttribute("error","验证码错误!");
			return "/login.jsp"; 
		}
		IMemberService service = ServiceFactory.getInstance(MemberServiceImpl.class);
		Map<String, Object> map = null;
		try {
			map = service.login(name, password);
		} catch (Exception e) {
			e.printStackTrace();
		} 
		
		if(map.containsKey("member"))
		{
			super.request.getSession().setAttribute("member", map.get("member"));
			return "/main.jsp";
		}
		else if(map.containsKey("nameErrer"))
		{
			super.request.setAttribute("error", map.get("nameErrer"));
			return "/login.jsp";
		}
		else if(map.containsKey("passwordError"))
		{
			super.request.setAttribute("error", map.get("passwordError"));
			return "/login.jsp";
		}
		return "/login.jsp";
	}
}
