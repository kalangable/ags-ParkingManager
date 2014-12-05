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
	private long id;

	public String inserir() {
		dao.salvar( automovelBean );
		return SUCCESS;
	}

	public String atualizar() {
		dao.salvar( automovelBean );
		return SUCCESS;
	}

	public String visualizar() {
		System.out.println( "Recebi id:" + id );
		automovelBean = dao.read( id );
		System.out.println( "Verificando objeto: " + automovelBean.getPlaca() );
		return SUCCESS;
	}

	public String deletar() {
		System.out.println( "Recebi id:" + id );
		automovelBean = dao.read( id );
		dao.deletar( automovelBean );
		return SUCCESS;
	}

	public String listar() {
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

	public long getId() {
		return id;
	}

	public void setId( long id ) {
		this.id = id;
	}

}
