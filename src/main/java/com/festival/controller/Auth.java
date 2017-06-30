package com.festival.controller;

import com.festival.customer.dao.CustomerDAO;
import com.festival.customer.model.Customer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@Controller
public class Auth {

    private final CustomerDAO customerDAO;

    @Autowired
    public Auth(CustomerDAO customerDAO) {
        this.customerDAO = customerDAO;
    }

    @RequestMapping(value="/auth", method = RequestMethod.POST)
    public ModelAndView authCustomer(HttpServletRequest request, HttpServletResponse response){

            String login = request.getParameter("login");
            String password = request.getParameter("password");
            ModelAndView mv = new ModelAndView();
            Customer customer = customerDAO.getCustomer(login);
            if (customerDAO.getCustomer(login) == null) {
                mv.setViewName("Login");
                mv.addObject("error", "Пользователь не найден");
                return mv;
            } else {
                String loginDB = customer.getLogin();
                String passwordDB = customer.getPassword();

                if (login.equals(loginDB) && password.equals(passwordDB)) {
                    HttpSession session = request.getSession();
                    session.setAttribute("login", login);
                    session.setAttribute("name", customer.getName());
                    mv.setViewName("index");
                    return mv;
                } else {
                    mv.addObject("error", "Имя пользователя или пароль не верны");
                    mv.setViewName("Login");
                    return mv;
                }
            }

    }

}
