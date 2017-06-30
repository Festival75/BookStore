package com.festival.customer.impl;

import com.festival.customer.dao.CustomerDAO;
import com.festival.customer.model.Customer;
import org.springframework.jdbc.core.JdbcTemplate;

import javax.sql.DataSource;
import java.sql.ResultSet;
import java.util.List;

public class CustomerDAOImpl implements CustomerDAO {

    private JdbcTemplate template;

    public CustomerDAOImpl(DataSource dataSource) {
        template = new JdbcTemplate(dataSource);
    }

    @Override
    public Customer getCustomer(String login) {
        if (!(login==null)) {
            String sql = "SELECT * FROM customer WHERE login = '" + login + "'";

                return template.query(sql, resultSet -> {
                    if (resultSet.next()) {
                        Customer customer = new Customer();
                        customer.setLogin(resultSet.getString("login"));
                        customer.setPassword(resultSet.getString("password"));
                        customer.setName(resultSet.getString("name"));
                        customer.setSecname(resultSet.getString("secname"));
                        customer.setEmail(resultSet.getString("email"));
                        return customer;
                    }
                    return null;
                });
            }else {
                return null;
            }

    }

    @Override
    public List<Customer> listCustomers() {
        String sql = "SELECT * FROM customer";

        return template.query(sql, (resultSet, i) -> {
            Customer aCustomer = new Customer();
            aCustomer.setLogin(resultSet.getString("login"));
            aCustomer.setPassword(resultSet.getString("password"));
            aCustomer.setName(resultSet.getString("firstname"));
            aCustomer.setSecname(resultSet.getString("secname"));
            aCustomer.setEmail(resultSet.getString("email"));
            return aCustomer;
        });
    }

    @Override
    public Boolean createCustomer(String login, String password, String name, String secname, String email) {

        if (getCustomer(login) == null) {

            String sql = "INSERT INTO customer (login, password, name, secname, email)" +
                    "VALUES ('" + login + "','" + password + "','" + name + "','" + secname + "','" + email + "')";
            template.update(sql);
            return true;

        } else {
            return false;
        }
    }

    @Override
    public Boolean updateCustomer(String login, String password, String name, String secname, String email) {

        if (!(getCustomer(login) == null)) {

            String sql = "UPDATE customer " +
                    "SET login = '" + login + "', password = '" + password + "', firstname = '" + name + "', secname = '" + secname + "', email = '" + email + "' " +
                    "WHERE login = '" + login + "'";
            template.update(sql);
            return true;

        } else {
            return false;
        }
    }

    @Override
    public Boolean deleteCustomer(String login) {
        return null;
    }
}
