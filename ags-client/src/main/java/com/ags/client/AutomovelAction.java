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
	private Automovel automovelBean;

	public String inserir() {

		if ( automovelBean != null ) {
			System.out.println( automovelBean.getPlaca() );
			System.out.println( automovelBean.getDescricao() );
		}

		return SUCCESS;
	}

	public String list() {
		listaAutomovel = new ArrayList<Automovel>();
		this.listaAutomovel = dao.list();

		return SUCCESS;
	}

	public List<Automovel> getListaAutomovel() {
		return listaAutomovel;
	}

	public void setListaAutomovel( List<Automovel> listaAutomovel ) {
		this.listaAutomovel = listaAutomovel;
	}

	public Automovel getAutomovelBean() {
		return automovelBean;
	}

	public void setAutomovelBean( Automovel automovelBean ) {
		this.automovelBean = automovelBean;
	}

}
