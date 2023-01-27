package fr.formation.inti.service;

import java.util.GregorianCalendar;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fr.formation.inti.dao.EmployeeDao;
import fr.formation.inti.entity.Employee;

@Service("employeeService")
public class EmployeeService {
	
	@Autowired 
	private EmployeeDao empDao;
	
	 public void test() {
	        // Save a new customer
	        Employee newEmployee = new Employee();
	        newEmployee.setFirstName("John");
	        newEmployee.setLastName("Smith");
	        newEmployee.setStartDate(new GregorianCalendar().getTime());
	         
	        empDao.save(newEmployee);
	         
	        // Find a customer by ID
	        Optional<Employee> result = empDao.findById((int) 1L);
	        result.ifPresent(customer -> System.out.println(customer));
	         
	        // Find customers by last name
	        List<Employee> customers = empDao.findByLastName("Smith");
	        customers.forEach(customer -> System.out.println(customer));
	         
	        // List all customers
	        Iterable<Employee> iterator = empDao.findAll();
	        iterator.forEach(customer -> System.out.println(customer));
	         
	        // Count number of customer
	        long count = empDao.count();
	        System.out.println("Number of customers: " + count);
	    }
}
