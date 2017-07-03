package com.festival.controller;

import com.festival.customer.dao.CustomerDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@Controller
public class Register {

    private final CustomerDAO customerDAO;

    @Autowired
    public Register(CustomerDAO customerDAO) {
        this.customerDAO = customerDAO;
    }

    @RequestMapping("/Register")
    public ModelAndView registerPage(HttpServletResponse response, HttpServletRequest request) {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("Register");
        return mv;
    }

    @RequestMapping(value = "/newUser", method = RequestMethod.POST)
    public ModelAndView registerWizard(@RequestParam String action, HttpServletResponse response, HttpServletRequest request) throws IOException {
        ModelAndView mv = new ModelAndView();
        String fnmae = (String) request.getParameter("name");
        String snmae = (String) request.getParameter("secname");
        String login = (String) request.getParameter("login");
        String password = (String) request.getParameter("password");
        String rpassword = (String) request.getParameter("rpassword");
        String email = (String) request.getParameter("email");
        HttpSession session = request.getSession();
        String msg;


        msg = "Пользователь успешно зарегестрирован";
        mv.addObject("msg", msg);
        customerDAO.createCustomer(login, password, fnmae, snmae, email);
        session.setAttribute("name", fnmae);
        mv.setViewName("Login");
        return mv;

    }
}