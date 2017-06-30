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

@Controller
public class Register {

    private final CustomerDAO customerDAO;

    @Autowired
    public Register(CustomerDAO customerDAO) {
        this.customerDAO = customerDAO;
    }

    @RequestMapping("/Register")
    public ModelAndView registerPage (HttpServletResponse response, HttpServletRequest request){
        ModelAndView mv = new ModelAndView();
        mv.setViewName("Register");
        return mv;
    }

    @RequestMapping(value = "/NewUser", method = RequestMethod.POST)
    public ModelAndView registerWizard (@RequestParam String action, HttpServletResponse response, HttpServletRequest request){
        ModelAndView mv = new ModelAndView();
        if (action.equals("Cancel")){
            mv.setViewName("Login");
            return mv;
        }else {
            Boolean added;
            String login = request.getParameter("login");
            String password = request.getParameter("password");
            String name = request.getParameter("name");
            String secname = request.getParameter("secname");
            String email = request.getParameter("email");
            added = customerDAO.createCustomer(login,password,name,secname,email);
            mv.setViewName("Login");
            if (added){
                mv.addObject("error", "Новый пользователь зарегестрирован!");
            }else {
                mv.addObject("error","Такой пользователь уже зарегестрирован!");
            }
            return mv;
        }
    }
}
