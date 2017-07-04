package com.festival.book.dao;

import com.festival.book.model.Book;

import java.io.IOException;
import java.util.List;

public interface BookDAO {

    Book getBook(String title);
    List<Book> listBooks();
    Boolean addBook(String title, String author,  String genre_main, String genre_second, int cost, int quantity, String image) throws IOException;
    Boolean updateBook(String title, String author,  String genre_main, String genre_second, int cost, int quantity, String image);
    Boolean deleteBook(String title);

}
