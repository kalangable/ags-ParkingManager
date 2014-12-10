package com.ags.dao;

import com.ags.models.Employee;


public class EmployeeDao extends GenericImplDao<Employee, Integer> {

	public EmployeeDao() {
		super( Employee.class );
	}

	public void salvar( Employee employee ) {
		begin();
		if ( employee.getEmployeeId() != null ) {
			update( employee );
		} else {
			create( employee );
		}
		commit();
	}

	public void deletar( Employee employee ) {
		begin();
		if ( employee.getEmployeeId() != null ) {
			delete( employee );
		}
		commit();
	}
}
