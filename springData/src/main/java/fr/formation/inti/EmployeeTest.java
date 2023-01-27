package fr.formation.inti;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import fr.formation.inti.service.EmployeeService;
/*Démarre le framework Spring pour analyser les classes du package
*/
public class EmployeeTest {

	public static void main(String[] args) {

		AnnotationConfigApplicationContext appContext = new AnnotationConfigApplicationContext();
		appContext.scan("fr.formation.inti*");
		appContext.refresh();

		/*Recupere employeeService et applique la methode test
		*/
		EmployeeService customerService = (EmployeeService) appContext.getBean("employeeService");
		customerService.test();

		appContext.close();
	}
}
