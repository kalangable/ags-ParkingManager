package com.ags.client;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.ags.dao.ClienteDao;
import com.ags.models.Cliente;
import com.opensymphony.xwork2.ActionSupport;

public class ClienteAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 5125917122435102394L;
	private ClienteDao dao = new ClienteDao();
	private List<Cliente> listaCliente;
	private Cliente clienteBean;
	private long id;

	public String inserir() {
		clienteBean.setDtInicio( new Date() );
		dao.salvar( clienteBean );
		return SUCCESS;
	}

	public String atualizar() {
		dao.salvar( clienteBean );
		return SUCCESS;
	}

	public String visualizar() {
		clienteBean = dao.read( id );
		return SUCCESS;
	}

	public String deletar() {
		clienteBean = dao.read( id );
		dao.deletar( clienteBean );
		return SUCCESS;
	}

	public String listar() {
		listaCliente = new ArrayList<Cliente>();
		this.listaCliente = dao.list();
		return SUCCESS;
	}

	public ClienteDao getDao() {
		return dao;
	}

	public void setDao( ClienteDao dao ) {
		this.dao = dao;
	}

	public List<Cliente> getListaCliente() {
		return listaCliente;
	}

	public void setListaCliente( List<Cliente> listaCliente ) {
		this.listaCliente = listaCliente;
	}

	public Cliente getClienteBean() {
		return clienteBean;
	}

	public void setClienteBean( Cliente clienteBean ) {
		this.clienteBean = clienteBean;
	}

	public long getId() {
		return id;
	}

	public void setId( long id ) {
		this.id = id;
	}
}
