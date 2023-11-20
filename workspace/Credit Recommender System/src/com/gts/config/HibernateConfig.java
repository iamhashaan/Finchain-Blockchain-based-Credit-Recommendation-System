package com.gts.config;

import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.hibernate.engine.spi.Mapping;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@Configuration
@EnableTransactionManagement
@ComponentScan(basePackages = "com.gts")
@PropertySource(value = { "classpath:application.properties" })
public class HibernateConfig {
	@Autowired
	private Environment en;

	@Bean
	public LocalSessionFactoryBean getBean() {
		LocalSessionFactoryBean factoryBean = new LocalSessionFactoryBean();
		factoryBean.setDataSource(getDataSource());
		factoryBean.setHibernateProperties(hibernateProperties());
		factoryBean.setPackagesToScan("com.gts.model");
		return factoryBean;
	}

	@Bean
	public DataSource getDataSource() {
		DriverManagerDataSource ds = new DriverManagerDataSource();
		ds.setDriverClassName(en.getRequiredProperty("db.driverClassName"));
		ds.setUrl(en.getRequiredProperty("db.url"));
		ds.setUsername(en.getRequiredProperty("db.username"));
		ds.setPassword(en.getRequiredProperty("db.password"));
		return ds;
	}

	private Properties hibernateProperties() {
		Properties properties = new Properties();
		properties.put("hibernate.dialect", en.getRequiredProperty("hibernate.dialect"));
		properties.put("hibernate.show_sql", en.getRequiredProperty("hibernate.show_sql"));
		properties.put("hibernate.format_Sql", en.getRequiredProperty("hibernate.format_sql"));
		return properties;

	}

	@Bean
	@Autowired
	HibernateTransactionManager transactionManager(SessionFactory s) {
		HibernateTransactionManager tx = new HibernateTransactionManager();
		tx.setSessionFactory(s);
		return tx;
	}

}
