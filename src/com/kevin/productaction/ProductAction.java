package com.kevin.productaction;

import com.kevin.dao.ProductDao;
import com.kevin.orm.ProductInfo;

public class ProductAction {

	public void add(ProductInfo info){
		ProductDao dao = new ProductDao();
		dao.add(info);
		System.out.println("�����Ʒ�ɹ�");
		
	}
	

}
