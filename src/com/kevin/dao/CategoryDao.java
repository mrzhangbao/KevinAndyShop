package com.kevin.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.kevin.orm.Category;
import com.kevin.util.HibernateUtil;

public class CategoryDao {
	
	
	public void add(Category category){
		Session s = null;
		Transaction tx = null;
		try {
			s = HibernateUtil.getThreadLocalSession();
			tx = s.beginTransaction();
			s.save(category);
			tx.commit();
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally{
			
			HibernateUtil.closeSession();
		}
		
		
	}
	
	public Category queryByname(String name){
		Session s = null;
		try {
			
			s = HibernateUtil.getThreadLocalSession();
			Query query = s.createQuery("from Category where categoryname=?").setParameter(0, name);
			
			return (Category) query.uniqueResult();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			HibernateUtil.closeSession();
		}
		return null;
	}
	
	public Category findById(Integer id){
		Session s = null;
		try {
			
			s= HibernateUtil.getThreadLocalSession();
			Category category = (Category) s.get(Category.class, id);
			return category;
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			HibernateUtil.closeSession();
		}
		
		return null;
		
	}
	
	@SuppressWarnings("unchecked")
	public List<Category> queryAll(){
		Session s = null;
		try {
			s = HibernateUtil.getThreadLocalSession();
			Query query = s.createQuery("from Category");
			return query.list();
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally{
			HibernateUtil.closeSession();
		}
		return null;
	}
	
	
	public void delete(Category category){
		Session s = null;
		Transaction tx = null;
		try {
			s= HibernateUtil.getThreadLocalSession();
			tx = s.beginTransaction();
			s.delete(category);
			tx.commit();
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			HibernateUtil.closeSession();
		}
	}

}
