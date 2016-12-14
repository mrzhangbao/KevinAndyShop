package com.kevin.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.kevin.orm.ProductInfo;
import com.kevin.util.HibernateUtil;

public class ProductDao {
	
	public void add(ProductInfo info){
		Session s = null;
		Transaction tx = null;
		
		try {
			
			s = HibernateUtil.getThreadLocalSession();
			tx = s.beginTransaction();
			s.save(info);
			tx.commit();
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally{
			HibernateUtil.closeSession();
		}
	}
	
	
	public List<ProductInfo> queryALL(){
		Session s = null;
		try {
			s = HibernateUtil.getThreadLocalSession();
			Query query  =  s.createQuery("from ProductInfo");
			return query.list();
		} catch (Exception e) {
			// TODO: handle exception
		}finally{
			
			HibernateUtil.closeSession();
		}
		return null;
	}
	
	public List<ProductInfo> queryByCategory(String category){
		Session s = null;
		try {
			s = HibernateUtil.getThreadLocalSession();
			Query query = s.createQuery("from ProductInfo where categoryid=? ").setParameter(0, category);
			return query.list();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally{
			
			HibernateUtil.closeSession();
		}
		
		return null;
		
	}
	
	public List<ProductInfo> search(String productname){
		Session s = null;
		try {
			s = HibernateUtil.getThreadLocalSession();
			Query query = s.createQuery("from ProductInfo where productname like ?").setParameter(0, "%"+productname+"%");
			return query.list();
		} catch (Exception e) {
			
		}finally{
			
			HibernateUtil.closeSession();
		}
		return null;
	}

}
