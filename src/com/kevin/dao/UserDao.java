package com.kevin.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.kevin.orm.UserDetailInfo;
import com.kevin.util.HibernateUtil;

public class UserDao {
	
	
	public void add(UserDetailInfo info){
		Session s = null;
		Transaction tx = null;
		try {
			s = HibernateUtil.getThreadLocalSession();
			tx = s.beginTransaction();
			s.save(info);
		
			tx.commit();
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			HibernateUtil.closeSession();
		}
	}
	public void show(){
		System.out.println("调用了测试方法咯");
	}
	public void save (UserDetailInfo info){
		Session s = null;
		Transaction tx = null;
		   try {
		      s = HibernateUtil.getThreadLocalSession();
		      tx = s.beginTransaction();
		      s.update(info);
		      tx.commit();
		   } finally {HibernateUtil.closeSession();}
	}
	
	@SuppressWarnings("unchecked")
	public List<UserDetailInfo> queryAll(String sql){
		
		Session s = null;
		try {
			s = HibernateUtil.getThreadLocalSession();
			Query query = s.createQuery(sql);
			return query.list();
			
		} catch (Exception e) {
			e.printStackTrace();
			
		}finally{
			HibernateUtil.closeSession();
		}
		return null;
		
	}

}
