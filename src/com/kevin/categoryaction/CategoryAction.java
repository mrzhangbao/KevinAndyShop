package com.kevin.categoryaction;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.kevin.dao.CategoryDao;
import com.kevin.orm.Category;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class CategoryAction extends ActionSupport{
	
	private Category category;
	private String mymethod;
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	public String getMymethod() {
		return mymethod;
	}
	public void setMymethod(String mymethod) {
		this.mymethod = mymethod;
	}
	
	public String add(){
		
		if ("".equals(category.getCategoryname())) {
			ActionContext.getContext().put("message", "种类名称不能为空");
			
			return "success";
		}else {
			CategoryDao dao = new CategoryDao();
			Category gCategory = new Category();
			gCategory = dao.queryByname(category.getCategoryname());
			
			if ("".equals(gCategory)|| gCategory==null) {
				dao.add(category);
				ActionContext.getContext().put("message", "添加种类成功");
				System.out.println("添加种类成功");
				return "success";
			}else {
				ActionContext.getContext().put("message", "添加种类的种类已经存在");
				
				return "success";
			}
		}
	}
	
	public String getinfo(){
		CategoryDao dao= new CategoryDao();
		List<Category> list = dao.queryAll();
		ActionContext.getContext().put("list", list);
		
		return "showinfo";
	}
	
	public String getCate(){
		CategoryDao dao= new CategoryDao();
		List<Category> list = dao.queryAll();
		ActionContext.getContext().put("list", list);
		
		return "productadd";
	}
	
	public String delete(){
		CategoryDao dao = new CategoryDao();
		HttpServletRequest request = ServletActionContext.getRequest();
		String Id = request.getParameter("id");
		Integer id= Integer.valueOf(Id);
		
		
		category = dao.findById(id);
		dao.delete(category);
		ActionContext.getContext().put("message", "删除商品种类成功");
		List<Category> list = dao.queryAll();
		ActionContext.getContext().put("list", list);
		
		
		return "delete";
		
	}

}
