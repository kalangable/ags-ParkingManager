package com.ags.client;

import java.util.ArrayList;
import java.util.List;

import com.ags.dao.AutomovelDao;
import com.ags.models.Automovel;
import com.opensymphony.xwork2.ActionSupport;

public class AutomovelAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = -7946045564136959507L;
	private AutomovelDao dao = new AutomovelDao();
	private List<Automovel> listaAutomovel;

	public String list() {
		listaAutomovel = new ArrayList<Automovel>();
		this.listaAutomovel = dao.list();

		return "success";
	}

	public List<Automovel> getListaAutomovel() {
		return listaAutomovel;
	}

	public void setListaAutomovel( List<Automovel> listaAutomovel ) {
		this.listaAutomovel = listaAutomovel;
	}

}
