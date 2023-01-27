package fr.formation.inti.test;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import fr.formation.inti.service.EmployeeService;

public class EmployeeTest {

	public static void main(String[] args) {

		AnnotationConfigApplicationContext appContext = new AnnotationConfigApplicationContext();
		appContext.scan("fr.formation.inti*");
		appContext.refresh();

		EmployeeService customerService = (EmployeeService) appContext.getBean("employeeService");
		customerService.test();

		appContext.close();
	}
}
