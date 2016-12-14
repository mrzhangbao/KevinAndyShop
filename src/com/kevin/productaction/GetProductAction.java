package com.kevin.productaction;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.kevin.dao.ProductDao;
import com.kevin.orm.ProductInfo;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class GetProductAction extends ActionSupport{

	private ProductInfo info ;
	private String mymethod;
	public ProductInfo getInfo() {
		return info;
	}
	public void setInfo(ProductInfo info) {
		this.info = info;
	}
	public String getMymethod() {
		return mymethod;
	}
	public void setMymethod(String mymethod) {
		this.mymethod = mymethod;
	}
	
	public String getinfo(){
		ProductDao dao =new ProductDao();
		List<ProductInfo> list = dao.queryALL();
		ActionContext.getContext().put("list", list);
		return "show";
	}
	
	public String index(){
		ProductDao dao =new ProductDao();
		List<ProductInfo> list = dao.queryALL();
		ActionContext.getContext().put("list", list);
		return "indexshow";
	}
	
	public String man(){
		ProductDao dao = new ProductDao();
		List<ProductInfo> list=dao.queryByCategory("4");
		ActionContext.getContext().put("list", list);
		return "show";
		
	}
	
	public String woman(){
		ProductDao dao = new ProductDao();
		List<ProductInfo> list=dao.queryByCategory("2");
		ActionContext.getContext().put("list", list);
		return "show";
		
	}
	
	public String search(){
		HttpServletRequest request = ServletActionContext.getRequest();
		String name = request.getParameter("productname");
		if (name==null) {
			index();
		}else {
			ProductDao dao = new ProductDao();
			List<ProductInfo> list = dao.search(name);
			ActionContext.getContext().put("list", list);
			return "show";
		}
		
		
		return null;
		
		
		
	}
	
	
}
