package com.ags.dao;

import com.ags.models.Automovel;
import com.ags.models.Cliente;

public class ClienteDao extends GenericImplDao<Cliente, Long> {

	public ClienteDao() {
		super( Cliente.class );
	}

	public void salvar( Cliente cliente ) {
		begin();
		if ( cliente.getId() != null ) {
			update( cliente );
		} else {
			create( cliente );
		}
		commit();
	}

	public void deletar( Cliente cliente ) {
		begin();
		if ( cliente.getId() != null ) {
			delete( cliente );
		}
		commit();
	}
}
