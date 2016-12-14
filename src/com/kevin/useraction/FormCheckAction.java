package com.kevin.useraction;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.kevin.util.JDBCUtil;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class FormCheckAction extends ActionSupport{

	@SuppressWarnings("unused")
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub

		
		try {
			
			HttpServletRequest request = ServletActionContext.getRequest();
			HttpServletResponse response = ServletActionContext.getResponse();
			String phone = request.getParameter("phone");
			
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			
			Connection conn = null;
			PreparedStatement ps = null;
			ResultSet rs = null;
			try {
				
				
				
				if("".equals(phone)){
					out.print("手机号码不能为空");
				}else {
					if (phone.length()!=11) {
						out.print("手机号码有误，请修正");
					}else {
						Pattern p = Pattern.compile("^((13[0-9])|(15[^4,\\D])|(18[0,5-9]))\\d{8}$");
						Matcher matcher = p.matcher(phone);
						if (matcher.find()) {
							conn = JDBCUtil.getConnection();
							String sql = "select phone from userdetail where phone=?";
							ps = conn.prepareStatement(sql);
							ps.setString(1, phone);
							rs = ps.executeQuery();
							if (rs.next()) {
								out.print("该手机号码已经被注册");
							}else{
								out.print("1");
							}
							rs.close();
							ps.close();
							conn.close();
						}else{
							out.print("请输入正确的手机号码");
						}
						
						
					}
					
					
				}
				
				
			
				
				
				
			} catch (Exception e) {
				e.printStackTrace();
			
			}
			
			
			
			
			out.flush();
			out.close();
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
		
		
	}
	
	

}
