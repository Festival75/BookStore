package com.festival.book.model;

public class Book {

    private String title;
    private String description;
    private String author;
    private String genre_main;
    private String genre_second;
    private int cost;
    private int quantity;
    private  String image;

    public Book(){}
    public Book(String title, String author,  String genre_main, String genre_second, int cost, int quantity, String image, String description){}

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getGenre_main() {
        return genre_main;
    }

    public void setGenre_main(String genre_main) {
        this.genre_main = genre_main;
    }

    public String getGenre_second() {
        return genre_second;
    }

    public void setGenre_second(String genre_second) {
        this.genre_second = genre_second;
    }

    public int getCost() {
        return cost;
    }

    public void setCost(int cost) {
        this.cost = cost;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
}
