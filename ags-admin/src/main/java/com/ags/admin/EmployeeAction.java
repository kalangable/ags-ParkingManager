package com.ags.admin;

import java.util.List;

import com.ags.dao.Employee;
import com.ags.service.DefaultEmployeeService;
import com.ags.service.EmployeeService;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.Preparable;

public class EmployeeAction extends ActionSupport implements Preparable {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private EmployeeService empService = new DefaultEmployeeService();
    private Employee employee;
    private List<Employee> employees;	

    /**
     *Carrega os dados do empregado em caso de edição
     * 
     * @throws Exception 
     */
    @Override
    public void prepare() throws Exception {
        if (employee != null && employee.getEmployeeId() != null) {
            employee = empService.getEmployee(employee.getEmployeeId());
        }
    }
    
    /**
     * Adds or updates the employee given by getEmployee().
     */
    public String save() {
        if (employee.getEmployeeId() == null) {
            empService.insertEmployee(employee);
        } else {
            empService.updateEmployee(employee);
        }
        return SUCCESS;
    }

    /**
     * Delete employee which ID is getEmployee().getEmployeeId()
     */
    public String delete() {
        empService.deleteEmployee(employee.getEmployeeId());
        return SUCCESS;
    }

    /**
     * Returns all employees
     */
    public String list() {
        employees = empService.getAllEmployees();
        return SUCCESS;
    }

    public Employee getEmployee() {
        return employee;
    }

    public void setEmployee(Employee employee) {
        this.employee = employee;
    }

    public List<Employee> getEmployees() {
        return employees;
    }
}
