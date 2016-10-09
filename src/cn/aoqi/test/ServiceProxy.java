package cn.aoqi.test;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;


public class ServiceProxy implements InvocationHandler{
	
	private Object target;
	public Object bind(Object target)
	{
		this.target = target;
		return Proxy.newProxyInstance(this.target.getClass().getClassLoader(),this.target.getClass().getInterfaces(),this);
	}

	public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
		Object retObject = null;
		try
		{
			String methodName = method.getName();
			if(methodName.startsWith("add") || methodName.equals("edit") || methodName.equals("remove"))
			{
				try
				{
					Test_001.getConnection().setAutoCommit(false);
					retObject = method.invoke(this.target, args);
					Test_001.getConnection().commit();
				}
				catch(Exception e)
				{
					Test_001.getConnection().rollback();
				}
			}
			else
			{
				retObject = method.invoke(this.target, args);
			}
			return retObject;
			
		}catch(Exception e)
		{
			throw e;
		}
	}

}
