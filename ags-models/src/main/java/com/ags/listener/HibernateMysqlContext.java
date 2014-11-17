package com.ags.listener;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.ags.dao.FactoryDao;

public class HibernateMysqlContext extends FactoryDao implements ServletContextListener {

	private static final ThreadLocal<Session> session = new ThreadLocal<Session>();

	@Override
	public void contextInitialized( ServletContextEvent sce ) {
		sce.getServletContext().setAttribute( "SessionFactory", getSession() );

	}

	@Override
	public void contextDestroyed( ServletContextEvent sce ) {
		SessionFactory sf = (SessionFactory)sce.getServletContext().getAttribute( "SessionFactory" );
		sf.close();
		close();
	}

}
