package cn.aoqi.util;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import cn.aoqi.dbc.DatabaseConnection;

public class AbstractDAO {
	protected Connection conn ;
	protected PreparedStatement pstmt ;
	public AbstractDAO() {
		this.conn = DatabaseConnection.get() ;
	}
	protected Integer getCurrentValueHandle(String sequenceName) throws SQLException {
		String sql = "SELECT " + sequenceName + ".currval FROM dual " ;
		this.pstmt = this.conn.prepareStatement(sql) ;
		ResultSet rs = this.pstmt.executeQuery() ;
		if (rs.next()) {
		return rs.getInt(1) ;
		}
		return 0 ;
		}
}