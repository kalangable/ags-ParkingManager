package com.ags.dao;

import com.ags.models.Automovel;

public class AutomovelDao extends GenericImplDao<Automovel, Long> {

	public AutomovelDao() {
		super( Automovel.class );
	}

	public void salvar( Automovel automovel ) {
		begin();
		if ( automovel.getId() != null ) {
			update( automovel );
		} else {
			create( automovel );
		}
		commit();
	}

	public void deletar( Automovel automovel ) {
		begin();
		if ( automovel.getId() != null ) {
			delete( automovel );
		}
		commit();
	}
}
