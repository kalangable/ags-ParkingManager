package com.ags.dao;

import java.io.Serializable;
import java.util.List;

public class GenericImplDao<T, PK extends Serializable>
		extends FactoryDao implements GenericDao<T, PK> {

	private Class<T> type;

	public GenericImplDao( Class<T> type ) {
		this.type = type;
	}

	public PK create( T o ) {
		return (PK)getSession().save( o );
	}

	public T read( PK id ) {
		return (T)getSession().get( type, id );
	}

	public List<T> list() {

		return getSession().createCriteria( type ).list();
	}

	public void update( T o ) {
		getSession().update( o );
	}

	public void delete( T o ) {
		getSession().delete( o );
	}
}
