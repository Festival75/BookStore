package com.festival.customer.model;

public class Customer {

    private int id;
    private String login;
    private String password;
    private String name;
    private String secname;
    private String email;

    public Customer(){}
    public Customer(int id, String login, String password, String name, String secname, String email){
        this.id =id;
        this.login = login;
        this.password = password;
        this.name = name;
        this.secname = secname;
        this.email = email;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSecname() {
        return secname;
    }

    public void setSecname(String secname) {
        this.secname = secname;
    }
}
