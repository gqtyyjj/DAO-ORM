package cn.aoqi.util;

import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.Method;
import java.util.Enumeration;
import java.util.ResourceBundle;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jspsmart.upload.SmartUpload;

@SuppressWarnings("serial")
public class DispatcharUtil extends HttpServlet
{
	protected HttpServletRequest request;
	protected HttpServletResponse response;
	protected ResourceBundle bundle;  //定义 读取资源文件 属性
	
	//定义返回跳转路径 属性
	private String urlPath;  
	
	//跳转状态  1:servlet跳转  , 2:json回传  , 3:文件上传
	
	protected int urlstatic = 1; 
	
	protected String json = null;
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.request = request;
		this.response = response;
		
		if(this.getUrlName(request) != null)
		{
			this.urlPath = this.getUriPage();
		}
		if(this.urlstatic == 1)
		{
			this.perform(this.urlPath);	
		}
		else if(this.urlstatic == 2)
		{
			this.printJSon(json);
		}
		else
		{
			this.uploadServlet();
		}
		
		
	}
	
	/**
	 * 输出JSON字符串到前台
	 * @param json
	 * @throws IOException
	 */
	private void printJSon(String json)throws IOException
	{
		this.response.setContentType("text/json;charset=utf-8");
		PrintWriter  writer = this.response.getWriter();
		writer.write(json);
		writer.flush();
	}
	/**
	 * 执行页面的跳转
	 * @param arg1   根据资源文件 配置路径跳转
	 */
	private void perform(String arg1)
	{
		try {
			request.getRequestDispatcher(arg1).forward(this.request, this.response);
		} catch (ServletException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	/**
	 * 此方法获取调用需要执行的servlet方法的返回值
	 * @return
	 */
	private String getUriPage()
	{
		try
		{
			return this.getClass().getMethod(this.getUrlName(this.request)).invoke(this).toString();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return null;
	}
	
	/**
	 * 此功能返回 URI, 当页面的  URL 跳转 路径 不存在合适的  路径  则会返回  null
	 * @param request
	 * @return 
	 */
	private String getUrlName(HttpServletRequest request)
	{
		String uri = request.getRequestURI();
		String UrlName =  uri.substring(uri.lastIndexOf("/")+1);
		Method method[] = this.getClass().getDeclaredMethods();
		int n = 0;
		for(Method x :method)
		{
			if(! x.getName().equals(UrlName))
			{
				n++;
			}
			else
			{
				break;
			}
		}
		if(n == method.length)
		{
			return null;
		}
		else
		{
			return UrlName;
		}
	}
	/**
	 * 文件上传
	 */
	private void uploadServlet()
	{
		String fileName = null ;
		try {
			SmartUpload smart = new SmartUpload() ;
			smart.initialize(super.getServletConfig(), request, response);
			smart.upload();
			Enumeration<String> enu = smart.getRequest().getParameterNames() ;
			while (enu.hasMoreElements()) {
				String param = enu.nextElement() ;
				System.out.println("###### " + param + " = " + smart.getRequest().getParameter(param));
			}
			String uuid = UUID.randomUUID().toString() ;
			fileName = uuid + "." + smart.getFiles().getFile(0).getFileExt() ;
			String bigFileName = uuid + "_big." + smart.getFiles().getFile(0).getFileExt() ;
			// 保存原始图片内容
			String bigFilePath = super.getServletContext().getRealPath("/upload/") + bigFileName ;
			smart.getFiles().getFile(0).saveAs(bigFilePath);
			// 下面需要生成缩略图
			String filePath = super.getServletContext().getRealPath("/upload/") + fileName ;	// 缩略图路径
			ImageScale.scale(filePath, bigFilePath) ;	// 保存缩略图
			System.out.println("******** contentType = " + request.getContentType());
			response.getWriter().print("{\"fileName\":\""+fileName+"\",\"saved\":\"true\",\"bigFileName\":\""+bigFileName+"\"}");	// 将生成的图片名称返回
		} catch (Exception e) {
			try {
				response.getWriter().print("{\"saved\":\"false\"}");
			} catch (IOException e1) {
				e1.printStackTrace();
			}	// 将生成的图片名称返回
			e.printStackTrace(); 
		} 
		
	}
	
	
	
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.doGet(req, resp);
	}
}