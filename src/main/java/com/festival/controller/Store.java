package com.festival.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
public class Store {

    @RequestMapping("/Store")
    public ModelAndView aboutPage (HttpServletResponse response, HttpServletRequest request){
        ModelAndView mv = new ModelAndView();
        mv.setViewName("Store");
        return mv;
    }

}
