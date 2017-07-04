package com.festival.book.impl;

import com.festival.book.dao.BookDAO;
import com.festival.book.model.Book;
import org.apache.commons.io.FileUtils;
import org.springframework.jdbc.core.JdbcTemplate;

import javax.sql.DataSource;
import java.io.File;
import java.io.IOException;
import java.util.List;


public class BookDAOImpl implements BookDAO {

    private JdbcTemplate template;

    public BookDAOImpl(DataSource dataSource) {
        template = new JdbcTemplate(dataSource);
    }

    @Override
    public Book getBook(String title) {
        if (!(title==null)) {
            String sql = "SELECT * FROM book WHERE title = '" + title + "'";

            return template.query(sql, resultSet -> {
                if (resultSet.next()) {
                    Book book = new Book();
                    book.setTitle(resultSet.getString("title"));
                    book.setAuthor(resultSet.getString("author"));
                    book.setGenre_main(resultSet.getString("genre_main"));
                    book.setGenre_second(resultSet.getString("genre_second"));
                    book.setCost(resultSet.getInt("cost"));
                    book.setQuantity(resultSet.getInt("quantity"));

                    byte[] bytes = resultSet.getBytes("image");
                    File image = new File("/img/book_image/"+resultSet.getString("title")+".jpg");
                    try {
                        FileUtils.writeByteArrayToFile(image, bytes);
                    } catch (IOException e) {
                        e.printStackTrace();
                    }

                    book.setImage("/img/book_image/"+resultSet.getString("title")+".jpg");
                    return book;
                }
                return null;
            });
        }else {
            return null;
        }

    }

    @Override
    public List<Book> listBooks() {
        String sql = "SELECT * FROM book";

        return template.query(sql, (resultSet, i) -> {
            Book aBook = new Book();
            aBook.setTitle(resultSet.getString("title"));
            aBook.setAuthor(resultSet.getString("author"));
            aBook.setGenre_main(resultSet.getString("genre_main"));
            aBook.setGenre_second(resultSet.getString("genre_second"));
            aBook.setCost(resultSet.getInt("cost"));
            aBook.setQuantity(resultSet.getInt("quantity"));

            byte[] bytes = resultSet.getBytes("image");
            File image = new File("/img/book_image/"+resultSet.getString("title")+".jpg");
            try {
                FileUtils.writeByteArrayToFile(image, bytes);
            } catch (IOException e) {
                e.printStackTrace();
            }

            aBook.setImage("/img/book_image/"+resultSet.getString("title")+".jpg");
            return aBook;
        });
    }

    @Override
    public Boolean addBook(String title, String author, String genre_main, String genre_second, int cost, int quantity, String image, String description) throws IOException {
        if (getBook(title) == null) {

            File imageSource = new File("/img/book_image/"+title+".jpg");
            byte[] imageBytes = FileUtils.readFileToByteArray(imageSource);
            String sql = "INSERT INTO book (title, author, genre_main, genre_second, cost, quantity, image, description)" +
                    "VALUES ('" + title + "','" + author + "','" + genre_main + "','" + genre_second + "','" + cost + "','" + quantity + "','" + imageBytes +"','" + description +  "')";
            template.update(sql);
            return true;

        } else {
            return false;
        }
    }

    @Override
    public Boolean updateBook(String title, String author, String genre_main, String genre_second, int cost, int quantity, String image, String description) {
        return null;
    }

    @Override
    public Boolean deleteBook(String title) {
        return null;
    }
}
