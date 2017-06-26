package com.festival.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
public class Home {

    @RequestMapping("/")
    public ModelAndView homePage(HttpServletRequest request, HttpServletResponse response){
        ModelAndView mv = new ModelAndView();
        mv.setViewName("index");
        return mv;
    }

}
