package com.festival.customer.dao;

import com.festival.customer.model.Customer;

import java.util.List;

public interface CustomerDAO {

    Customer getCustomer(String login);
    List<Customer> listCustomers();
    Boolean createCustomer(String login, String password, String name, String secname, String email);
    Boolean updateCustomer(String login, String password, String name, String secname, String email);
    Boolean deleteCustomer(String login);

}
