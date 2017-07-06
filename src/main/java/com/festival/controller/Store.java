package com.festival.controller;

import com.festival.book.dao.BookDAO;
import com.festival.book.model.Book;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@Controller
public class Store {

    private final BookDAO bookDAO;

    @Autowired
    public Store(BookDAO bookDAO) {
        this.bookDAO = bookDAO;
    }

    @RequestMapping("/Store")
    public ModelAndView storePage (HttpServletResponse response, HttpServletRequest request){
        ModelAndView mv = new ModelAndView();
        request.setAttribute("books", bookDAO.listBooks());
        mv.addObject("books", bookDAO.listBooks());
        mv.setViewName("Store");
        return mv;
    }

}
