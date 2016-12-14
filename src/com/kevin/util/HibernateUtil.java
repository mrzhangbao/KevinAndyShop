package com.kevin.util;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public final class HibernateUtil {
	
	private static SessionFactory sessionFactory;
	private static ThreadLocal session = new ThreadLocal();
	private HibernateUtil(){}
	static {
		
		try {
			Configuration cfg = new Configuration();
			cfg.configure();
			sessionFactory = cfg.buildSessionFactory();
		} catch (Exception e) {
			// TODO: handle exception
			 e.printStackTrace();
		}
		
		
	}
	public static Session getThreadLocalSession(){
		System.out.println("µ˜”√¡Àutil");
		Session s = (Session) session.get();
		if (s == null) {
			s = sessionFactory.openSession();
			session.set(s);
		}
		return s;
	}
	
	
	public static void closeSession() {
		Session s = (Session) session.get();
		if (s != null) {
			s.close();
			session.set(null);
		}
	}

}
