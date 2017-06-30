package com.festival.controller;

import com.festival.customer.dao.CustomerDAO;
import com.festival.customer.model.Customer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
public class NameHelper {
    private final CustomerDAO customerDAO;


    @Autowired
    public NameHelper(CustomerDAO customerDAO) {
        this.customerDAO = customerDAO;
    }

    public String getName(String login){
        String name;
        Customer customer = customerDAO.getCustomer(login);
        name = customer.getName();
        return name;
    }

}
