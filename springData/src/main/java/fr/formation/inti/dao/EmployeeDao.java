package fr.formation.inti.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import fr.formation.inti.entity.Employee;

/*CRUD Repository permet de réaliser des méthodes
 * Cette interdace permet de se délester des generic
 * DAO encombrantes avec Spring Data*/
public interface EmployeeDao extends CrudRepository<Employee, Integer> {

	List<Employee> findByLastName(String lastName);
	
}
