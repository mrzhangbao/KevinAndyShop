package com.kevin.useraction;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.kevin.dao.UserDao;
import com.kevin.orm.UserDetailInfo;
import com.kevin.util.ActionInterface;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class UserAction extends ActionSupport {
	
	private UserDetailInfo userDetailInfo;
	private String mymethod;
	public String getMymethod() {
		return mymethod;
	}
	public void setMymethod(String mymethod) {
		this.mymethod = mymethod;
	}

	public UserDetailInfo getUserDetailInfo() {
		return userDetailInfo;
	}

	public void setUserDetailInfo(UserDetailInfo userDetailInfo) {
		this.userDetailInfo = userDetailInfo;
	}
	
	
	public String index(){
		return "index";
	}
	
	public String add(){
		UserDao dao = new UserDao();
		String checkUsername=userDetailInfo.getUsername();
		if ("".equals(checkUsername)) {
			int i = (int) (10000*Math.random()+999999);
			checkUsername = String.valueOf(i);
			userDetailInfo.setUsername("NO"+checkUsername);
		}
		dao.add(userDetailInfo);
	
		ActionContext.getContext().put("message", "×¢²á³É¹¦");
	
		System.out.println("coming--"+userDetailInfo.getName());
		return "success";
		
	}
	
	public String queryAllInfo(){
		UserDao dao = new UserDao();
		String sql ="from UserDetailInfo";
		List<UserDetailInfo> list = dao.queryAll(sql);
		
		ActionContext.getContext().put("list",list);
		return "showUserInfo";
		
	}
	
	
	
	
	
	
	public String NoAction(){
		return "error";
	}

}
