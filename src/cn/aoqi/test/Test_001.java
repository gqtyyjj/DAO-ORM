package cn.aoqi.test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Test_001 {
	private static final String DBDRIVER = "oracle.jdbc.driver.OracleDriver";
	private static final String DRURL = "jdbc:oracle:thin:@localhost:1521:AOQI";
	private static final String DRUSER = "SCOTT";
	private static final String PASSWORD ="110";
	private static ThreadLocal<Connection> threadLocal = new ThreadLocal<Connection>();
	private Test_001(){}
	private static Connection initConnection()
	{
		try
		{
			Class.forName(DBDRIVER);
			return DriverManager.getConnection(DRURL, DRUSER, PASSWORD);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return null;
	}
	public static Connection getConnection()
	{
		Connection conn = threadLocal.get();
		if(conn == null)
		{
			conn = initConnection();
			threadLocal.set(conn);
		}
		return conn;
	}
	public static void closeConnection()
	{
		Connection conn = threadLocal.get();
		if(conn != null)
		{
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		threadLocal.remove();
	}
}
