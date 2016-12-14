package com.kevin.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.kevin.orm.Admin;
import com.kevin.util.HibernateUtil;

public class AdminDao {
	
	public void add(Admin admin){
		Session s = null;
		Transaction tx = null;
		
		try {
			s = HibernateUtil.getThreadLocalSession();
			tx = s.beginTransaction();
		
			s.save(admin);
			tx.commit();
			
		} catch (Exception e) {
			e.printStackTrace();
			
			}finally{
				HibernateUtil.closeSession();
			}
	}
	
	
	public Admin queryByUsername(String username){
		Session s = null;
		try{
			
			s = HibernateUtil.getThreadLocalSession();
			Query query = s.createQuery("from Admin  where username=?").setParameter(0, username);
			return  (Admin) query.uniqueResult();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			
			HibernateUtil.closeSession();
		}
		return null;
		
	}
	
	
	public Admin checkAdmin(String username,String password){
		Session s = null;
		try {
			s = HibernateUtil.getThreadLocalSession();
			Query query=s.createQuery("from Admin where username=? and password=?");
			query.setParameter(0, username);
			query.setParameter(1, password);
			return (Admin) query.uniqueResult();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally{
			
			HibernateUtil.closeSession();
		}
		return null;
		
		
	}
	
	public List<Admin> queryAll(){
		
		Session s = null;
		try {
			s= HibernateUtil.getThreadLocalSession();
			Query query = s.createQuery("from Admin");
			return query.list();
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			HibernateUtil.closeSession();
		}
		return null;
		
	}
	
	public Admin queryAdminById(Integer id){
		Session s = null;
		try {
			
			s= HibernateUtil.getThreadLocalSession();
			Admin admin = (Admin) s.get(Admin.class,id);
			return admin;
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			
			HibernateUtil.closeSession();
		}
		
		return null;
		
	}
	
	public void delete(Admin admin){
		
		Session s = null;
		Transaction tx = null;
		try {
			s = HibernateUtil.getThreadLocalSession();
			tx = s.beginTransaction();
			s.delete(admin);
			tx.commit();
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			
			HibernateUtil.closeSession();
		}
		
	}
	
	
	public void save(Admin admin){
		Session s = null;
		Transaction tx = null;
		try {
			s = HibernateUtil.getThreadLocalSession();
			tx = s.beginTransaction();
			s.update(admin);
			tx.commit();
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			HibernateUtil.closeSession();
		}
	}

}
