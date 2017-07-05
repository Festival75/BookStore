package com.festival.config;


import com.festival.book.dao.BookDAO;
import com.festival.book.impl.BookDAOImpl;
import com.festival.customer.dao.CustomerDAO;
import com.festival.customer.impl.CustomerDAOImpl;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import javax.sql.DataSource;

@Configuration
@ComponentScan(basePackages = "com.festival")
@EnableWebMvc
public class SpringMVC extends WebMvcConfigurerAdapter {



    @Bean
    public ViewResolver getViewResolver() {
        InternalResourceViewResolver resolver = new InternalResourceViewResolver();
        resolver.setPrefix("/WEB-INF/views/");
        resolver.setSuffix(".jsp");
        return resolver;
    }

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/resources/**").addResourceLocations("/resources/");
    }


    @Bean
    public DataSource getDataSource() {
        DriverManagerDataSource dataSource = new DriverManagerDataSource();
        dataSource.setDriverClassName("org.postgresql.Driver");
        dataSource.setUrl("jdbc:postgresql://localhost:5432/BookStore");
        dataSource.setUsername("postgres");
        dataSource.setPassword("o9p0[-]=");

        return dataSource;
    }

    @Bean
    public CustomerDAO getCustomerDAO(){
        return new CustomerDAOImpl(getDataSource());
    }

    @Bean
    public BookDAO getBookDAO(){
        return new BookDAOImpl(getDataSource());
    }

}
