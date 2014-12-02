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

		if ( automovelBean != null ) {
			System.out.println( automovelBean.getPlaca() );
			System.out.println( automovelBean.getDescricao() );
			System.err.println( this.dao.create( automovelBean ) );
			dao.salvar();
		}

		return SUCCESS;
	}

	public String atualizar() {

		if ( automovelBean != null ) {
			System.out.println( automovelBean.getPlaca() );
			System.out.println( automovelBean.getDescricao() );
			System.err.println( this.dao.create( automovelBean ) );
			dao.update();
		}

		return SUCCESS;
	}

	public String editar() {
		System.out.println( "Recebi id:" + id );
		automovelBean = dao.read( id );
		System.out.println( "Verificando objeto: " + automovelBean.getPlaca() );
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

	public long getId() {
		return id;
	}

	public void setId( long id ) {
		this.id = id;
	}

}
