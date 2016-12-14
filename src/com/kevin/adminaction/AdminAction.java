package com.kevin.adminaction;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.kevin.dao.AdminDao;
import com.kevin.orm.Admin;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class AdminAction extends ActionSupport{
	
	private Admin admin;
	private String mymethod;
	public Admin getAdmin() {
		return admin;
	}
	public void setAdmin(Admin admin) {
		this.admin = admin;
	}
	public String getMymethod() {
		return mymethod;
	}
	public void setMymethod(String mymethod) {
		this.mymethod = mymethod;
	}
	public String add(){
		AdminDao dao = new AdminDao();
		if ("".equals(admin.getUsername())) {
			ActionContext.getContext().put("message", "����Ա�˻�����Ϊ��");
			return "success";
		}else {
			Admin backadmin = new  Admin();
			
			backadmin = dao.queryByUsername(admin.getUsername());
			
			if ("".equals(backadmin)||backadmin==null) {
				dao.add(admin);
				
				ActionContext.getContext().put("message", "��ӹ���Ա�ɹ�");
				System.out.println("��ӹ���Ա�ɹ�");
				return "success";
			}else {
				ActionContext.getContext().put("message", "����Ա�˺��Ѵ���");
				System.out.println("����Ա����"+backadmin.getUsername());
				return "success";
			}
		}
		
	}
	
	public String getinfo(){
		AdminDao dao = new AdminDao();
		List<Admin> list = dao.queryAll();
		ActionContext.getContext().put("list", list);
		return "showAdminInfo";
		
	}
	public String info(){
		AdminDao dao = new AdminDao();
		List<Admin> list = dao.queryAll();
		ActionContext.getContext().put("list", list);
		return "showInfo";
		
	}
	
	public String update(){
		HttpServletRequest request = ServletActionContext.getRequest();
		String id = request.getParameter("id");
		Integer Id =Integer.valueOf(id);
		AdminDao dao = new AdminDao();
		Admin admin = dao.queryAdminById(Id);
		ActionContext.getContext().put("admin", admin);
		System.out.println("---"+admin.getUsername());
		return "show";
	}
	
	/*
	 * ����Աɾ������
	 */
	public String delete(){
		AdminDao dao = new AdminDao();
		HttpServletRequest request = ServletActionContext.getRequest();
		String id = request.getParameter("id");
		Integer Id =Integer.valueOf(id);
		Admin nAdmin = dao.queryAdminById(Id);
		dao.delete(nAdmin);
		ActionContext.getContext().put("message", "ɾ������Ա�ɹ�");
		List<Admin> list = dao.queryAll();
		ActionContext.getContext().put("list", list);
		return "showAdminInfo";
		
	}
	
	
	public String save(){
		AdminDao dao = new AdminDao();
		HttpServletRequest request = ServletActionContext.getRequest();
		String id = request.getParameter("#admin.id");
		Integer Id =Integer.valueOf(id);
		String username = request.getParameter("#admin.username");
		String password = request.getParameter("#admin.password");
		String level = request.getParameter("#admin.level");
		Admin mAdmin =new Admin();
		mAdmin.setId(Id);
		mAdmin.setUsername(username);
		mAdmin.setPassword(password);
		mAdmin.setLevel(level);
		System.out.println("N:"+username+"P:"+password);
		if ("".equals(username)|| "".equals(password)) {
			ActionContext.getContext().put("message", "����Ա�˺Ż������벻��Ϊ��");
			return "show";
		}else {
			dao.save(mAdmin);
			ActionContext.getContext().put("message", "���¹���Ա��Ϣ�ɹ�");
			return "show";
		}
	}
	
	public String login(){
		AdminDao dao = new AdminDao();
		HttpServletRequest request = ServletActionContext.getRequest();
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		Admin back = dao.checkAdmin(username, password);
		if (back==null) {
			ActionContext.getContext().put("message", "�����û���������");
			return "loginfail";
		}else {
			ActionContext.getContext().put("username", username);
			return "loginsuccess";
		}
		
		
		
		
	}
	
	

}
