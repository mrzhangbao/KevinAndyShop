package com.kevin.util;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

public final class JDBCUtil {
	private static String driver;
	private static String url;
	private static String user;
	private static String password;
	private static Properties pr = new Properties();
	
	private JDBCUtil() {}
	
	static {
		try {
			pr.load(JDBCUtil.class.getClassLoader().getResourceAsStream("jdbc.properties"));
			driver = pr.getProperty("driver");
			url=pr.getProperty("url");
			user=pr.getProperty("username");
			password=pr.getProperty("password");
			Class.forName(driver);
			
			} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}
	
	public static Connection getConnection() throws SQLException{
		return DriverManager.getConnection(url, user, password);
	}
	
	public static void close(ResultSet rs,PreparedStatement ps,Connection conn){
		if (rs!=null) {
			try {
				rs.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally{
				if(ps!=null){
					try {
						ps.close();
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}finally{
						if (conn!=null) {
							try {
								conn.close();
							} catch (SQLException e) {
								// TODO Auto-generated catch block
								e.printStackTrace();
							}
						}
					}
					
				}
			}
		}
	}

}
