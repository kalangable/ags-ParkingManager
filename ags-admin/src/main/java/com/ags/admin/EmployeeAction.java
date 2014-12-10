
package com.ags.admin;

import java.util.ArrayList;
import java.util.List;

import com.ags.dao.EmployeeDao;
import com.ags.models.Employee;
import com.opensymphony.xwork2.ActionSupport;

public class EmployeeAction extends ActionSupport {
	
	/**
	 * 
	 */
	
	private static final long serialVersionUID = -7946045564136959507L;
	private EmployeeDao dao = new EmployeeDao();
	private List<Employee> listaEmployee;
	private Employee employeeBean;
	private Integer id;

	public String inserir() {
		dao.salvar( employeeBean );
		return SUCCESS;
	}

	public String atualizar() {
		dao.salvar( employeeBean );
		return SUCCESS;
	}

	public String visualizar() {
		System.out.println( "Recebi id:" + id );
		employeeBean = dao.read( id );
		System.out.println( "Verificando objeto: " + employeeBean.getFirstName() );
		return SUCCESS;
	}

	public String delete() {
		System.out.println( "Recebi id:" + id );
		employeeBean = dao.read( id );
		dao.deletar( employeeBean );
		return SUCCESS;
	}

	public String listar() {
		listaEmployee = new ArrayList<Employee>();
		this.listaEmployee = dao.list();
		return SUCCESS;
	}

	public List<Employee> getListaEmployee() {
		return listaEmployee;
	}

	public void setListaEmployee( List<Employee> listaEmployee ) {
		this.listaEmployee = listaEmployee;
	}

	public Employee getEmployeeBean() {
		return employeeBean;
	}

	public void setEmployeeBean( Employee employeeBean ) {
		this.employeeBean = employeeBean;
	}

	public Integer getId() {
		return id;
	}

	public void setId( Integer id ) {
		this.id = id;
	}
}
