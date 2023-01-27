package fr.formation.inti;

import javax.persistence.EntityManagerFactory;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.orm.jpa.JpaTransactionManager;
import org.springframework.orm.jpa.LocalEntityManagerFactoryBean;

@Configuration
/*@Enab est nécessaire pour activer Spring Data JPA 
.*/
@EnableJpaRepositories(basePackages = {"fr.formation.inti.*"})
public class AppConfig {
	/*config un EntityManagerFactory pour trvl avec 
	 * persistance TestPersistence.
	*/
	@Bean
	public LocalEntityManagerFactoryBean entityManagerFactory() {
		LocalEntityManagerFactoryBean factoryBean = new LocalEntityManagerFactoryBean();
		factoryBean.setPersistenceUnitName("TestPersistence");
		
		return factoryBean;
	}
	
	/*config un gestionnaire de transactions pour l'EntityManagerFactory 
	 * 
	*/
	@Bean
	public JpaTransactionManager transactionManager(EntityManagerFactory entityManagerFactory) {
		JpaTransactionManager transactionManager = new JpaTransactionManager();
		transactionManager.setEntityManagerFactory(entityManagerFactory);
		
		return transactionManager;
	}	
}
