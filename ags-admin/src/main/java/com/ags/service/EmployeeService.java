package com.ags.service;

import java.util.List;

import com.ags.dao.Employee;

public interface EmployeeService {

    public List<Employee> getAllEmployees();

    public void updateEmployee(Employee emp);

    public void deleteEmployee(Integer id);

    public Employee getEmployee(Integer id);

    public void insertEmployee(Employee emp);

}
