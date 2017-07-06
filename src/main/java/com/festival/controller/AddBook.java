package com.festival.controller;

import com.festival.book.dao.BookDAO;
import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;

@Controller
public class AddBook {

    private final BookDAO bookDAO;

    @Autowired
    public AddBook(BookDAO bookDAO) {
        this.bookDAO = bookDAO;
    }

    @RequestMapping(value = "/addBook", method = RequestMethod.POST)
    public ModelAndView newBook(HttpServletRequest request, HttpServletResponse response) throws IOException{
        String title = (String) request.getParameter("title");
        String author = (String) request.getParameter("author");
        String genre_main = (String) request.getParameter("genre_main");
        String genre_second = (String) request.getParameter("genre_second");
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        int cost = Integer.parseInt(request.getParameter("cost"));
        String description = (String) request.getParameter("description");
        String imgName = request.getParameter("image");

        bookDAO.addBook(title,author,genre_main,genre_second,cost,quantity,imgName,description);
        ModelAndView mv = new ModelAndView();
        mv.setViewName("Admin");
        return mv;
    }

}
