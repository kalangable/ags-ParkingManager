package com.ags.service;

import java.util.List;

import com.ags.dao.Employee;
import com.ags.dao.EmployeeDao;
import com.ags.dao.InMemoryEmployeeDao;

public class DefaultEmployeeService implements EmployeeService {

    private EmployeeDao dao;

    public DefaultEmployeeService() {
        this.dao = new InMemoryEmployeeDao();
    }

    @Override
    public List getAllEmployees() {
        return dao.getAllEmployees();
    }

    @Override
    public void updateEmployee(Employee emp) {
        dao.update(emp);
    }

    @Override
    public void deleteEmployee(Integer id) {
        dao.delete(id);
    }

    @Override
    public Employee getEmployee(Integer id) {
        return dao.getEmployee(id);
    }

    @Override
    public void insertEmployee(Employee emp) {
        dao.insert(emp);
    }
}
