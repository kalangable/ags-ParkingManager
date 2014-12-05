package com.ags.dao;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;

public class FactoryDao {

	protected FactoryDao() {
	}

	public static Session getSession() {

		Session session = (Session)FactoryDao.session.get();
		if ( session == null ) {
			session = getSessionFactory().openSession();
			FactoryDao.session.set( session );
		}
		
		return session;
	}

	protected void begin() {
		getSession().beginTransaction();
	}

	protected void commit() {
		getSession().getTransaction().commit();
	}

	protected void rollback() {
		try {
			getSession().getTransaction().rollback();
		} catch ( HibernateException e ) {
			System.out.println( "Não foi possível fazer rollback da transação" );
		}

		try {
			getSession().close();
		} catch ( HibernateException e ) {
			System.out.println( "Não foi possível fazer fechar a sessão" );
		}

		FactoryDao.session.set( null );
	}

	public static void close() {
		getSession().close();
		FactoryDao.session.set( null );
	}

	private static final ThreadLocal<Session> session = new ThreadLocal<Session>();

	private static final SessionFactory getSessionFactory() {
		Configuration configuration = new Configuration();
		configuration.configure();
		ServiceRegistry serviceRegistry = new StandardServiceRegistryBuilder().applySettings(
				configuration.getProperties() ).build();
		return configuration.buildSessionFactory( serviceRegistry );
	}
}
