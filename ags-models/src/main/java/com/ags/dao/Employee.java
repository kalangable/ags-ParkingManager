package com.ags.dao;

import java.io.Serializable;

public class Employee implements Serializable {

    /**
	 * Classe que representa a entidade do empregado
	 */
	private static final long serialVersionUID = 1L;

	private Integer employeeId;

	private Integer age;

	private String firstName;

	private String lastName;
	
	private String username;

	public Employee() {
	}

	public Employee(Integer employeeId, String firstName, String lastName, Integer age, String username) {
		this.employeeId = employeeId;
		this.firstName = firstName;
		this.lastName = lastName;
		this.age = age;
		this.username = username;
	}


	public Integer getEmployeeId() {
		return employeeId;
	}

	public void setEmployeeId(Integer employeeId) {
		this.employeeId = employeeId;
	}

	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	
	public String getUsername() {
		return username;
	}
	
	public void setUsername(String username) {
		this.username = username;
	}
}
