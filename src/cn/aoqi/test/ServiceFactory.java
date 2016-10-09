package cn.aoqi.test;

public class ServiceFactory {
 private ServiceFactory()
 {}
 @SuppressWarnings("unchecked")
public static <T>T getInstance(Class<T> cls)
 {
	 try
	 {
		return  (T)new ServiceProxy().bind(cls.newInstance());
	 }
	 catch(Exception e)
	 {
		 e.printStackTrace();
	 }
	 return null;
  }

}