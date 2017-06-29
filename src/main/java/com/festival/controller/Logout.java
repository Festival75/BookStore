package com.festival.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@Controller
public class Logout {

    @RequestMapping("/Logout")
    public ModelAndView aboutPage (HttpServletResponse response, HttpServletRequest request){
        HttpSession session = request.getSession();
        session.setAttribute("login", null);
        ModelAndView mv = new ModelAndView();
        mv.setViewName("index");
        return mv;
    }

}
