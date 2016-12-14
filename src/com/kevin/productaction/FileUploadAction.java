package com.kevin.productaction;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.kevin.orm.ProductInfo;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class FileUploadAction extends ActionSupport{

	

	private File file;

	
	
	
	
	public File getFile() {
		return file;
	}
	public void setFile(File file) {
		this.file = file;
	}
	
	@Override
	public String execute() throws Exception {
		
		//�ж��ļ����Ƿ���ڲ���
		String savepath =ServletActionContext.getServletContext().getRealPath("/upload");
		String savefilename="";
		if (!new File(savepath).isDirectory()) {
			new File(savepath).mkdir();
		}
		
		
		
		if (file==null) {
			savefilename="logo.png";
		}else {
			InputStream is = new FileInputStream(file);
			savefilename = (new Date()).getTime()+".jpg";
			OutputStream os = new FileOutputStream(new File(savepath,savefilename));
			
	        byte[] buffer = new byte[500];
	        int length = 0;
	        while(-1 != (length = is.read(buffer, 0, buffer.length))){
	        	os.write(buffer);
	        }
	        System.out.println("����ͼƬ�ɹ�");
	        os.close();
	        is.close();
		}
		
		HttpServletRequest request = ServletActionContext.getRequest();
		String productname = request.getParameter("productname");
		
		System.out.println("��Ʒ����"+productname);
		
		
		System.out.println("����·��"+savepath);
		
		
        
        String description = request.getParameter("description");
        String baseprice = request.getParameter("baseprice")+"Ԫ";
        String marketprice = request.getParameter("marketprice")+"Ԫ";
        String sellprice = request.getParameter("sellprice")+"Ԫ";
       
        String category = request.getParameter("category");
        
        
        ProductInfo pInfo = new ProductInfo();
        pInfo.setProductname(productname);
        pInfo.setDescription(description);
        pInfo.setBaseprice(baseprice);
        pInfo.setMarketprice(marketprice);
        pInfo.setSellprice(sellprice);
        pInfo.setUploadfile(savefilename);
        pInfo.setCategoryid(category);
        
        ProductAction action = new ProductAction();
        action.add(pInfo);
        
        ActionContext.getContext().put("message", "��Ʒ�ϼܳɹ�");
        
        
        return "success";
	}
	
	
	
}
