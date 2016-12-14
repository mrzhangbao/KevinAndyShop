package com.kevin.useraction;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class UserInfoCheck extends ActionSupport{

	@Override
	public String execute() throws Exception {
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpServletResponse response = ServletActionContext.getResponse();
		String password = request.getParameter("password");
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		
		if ("".equals(password)) {
			out.print("密码不能为空");
		}else{
			
			if (password.length()>16 || password.length()<6) {
				out.print("密码格式不符合要求");
			}else {
				out.print("1");
			}
			
		}
		out.flush();
		out.close();
		
		
		
		return null;
		
	}
	
	
	

}
