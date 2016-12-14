package com.kevin.useraction;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.kevin.util.JDBCUtil;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class UserLoginCheck extends ActionSupport{

	@Override
	public String execute() throws Exception {
		
		try {
			HttpServletResponse response = ServletActionContext.getResponse();
			HttpServletRequest request = ServletActionContext.getRequest();
			response.setCharacterEncoding("UTF-8");
			request.setCharacterEncoding("UTF-8");
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			String userAccount = request.getParameter("username");
			String password = request.getParameter("password");
			
			
			Connection conn = null;
			PreparedStatement ps = null;
			ResultSet rs = null;
			
			conn = JDBCUtil.getConnection();
			String sql = "select phone from userdetail where phone=? ";
			ps= conn.prepareStatement(sql);
			ps.setString(1, userAccount);
			rs = ps.executeQuery();
			if (rs.next()) {
				rs = null;
				String sql2 ="select password from userdetail where password=? ";
				ps = conn.prepareStatement(sql2);
				ps.setString(1, password);
				rs = ps.executeQuery();
				if (rs.next()) {
					rs.close();
					ps.close();
					conn.close();
					return "yes";
					
				}else{
					ActionContext.getContext().put("message", "输入的密码错误");
					System.out.println("返回信息密码错误");
					rs.close();
					ps.close();
					conn.close();
					return "no";
					
				}
			}else{
				ActionContext.getContext().put("message", "该手机号码尚未注册");
				System.out.println("返回信息 未注册");
				rs.close();
				ps.close();
				conn.close();
				return "no";
			}
			
			
			
		} catch (Exception e) {
			
			e.printStackTrace();
		
		}
		
		
		return null;
		
	}

	
}
