package com.ags.dao;

import com.ags.models.Automovel;

public class AutomovelDao extends GenericImplDao<Automovel, Long> {

	public AutomovelDao() {
		super( Automovel.class );
	}

	public void salvar() {
		super.commit();
	}

	public void update() {
		super.commit();
	}

	public void begin() {
		super.begin();
	}
}
