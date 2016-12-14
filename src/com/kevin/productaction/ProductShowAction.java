package com.kevin.productaction;

import java.io.FileInputStream;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class ProductShowAction extends ActionSupport{

	public String showImages(){
		
		
		HttpServletRequest request = null;
		HttpServletResponse response = null;
		System.out.println("访问了这里");
		try {
			
			request = ServletActionContext.getRequest();
			response = ServletActionContext.getResponse();
			String path=request.getParameter("name");
			String savePath = ServletActionContext.getServletContext().getRealPath("/upload")+"/"+path;
			FileInputStream in = new FileInputStream(savePath);
			int i = in.available();
			byte  data[]= new byte[i];
			in.read(data);
			in.close();
			response.setContentType("multipart/form-data");
			ServletOutputStream out = response.getOutputStream();
			out.write(data);
			System.out.println("返回图片到客户端成功");
			out.close();
			
			
			
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		
		
		return null;
		
		
	}
	
	
}
