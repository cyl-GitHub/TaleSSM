package com.colin.bean;

public class User {
    private int id; //用户ID
    private String name; //用户姓名
    private String password; //用户登录密码


    public User() {
    }

    public User(int id) {
        this.id = id;
    }

    /**
     * @param id       用户ID
     * @param name     用户姓名
     * @param password 用户登录密码
     */
    public User(int id, String name, String password) {
        this.id = id;
        this.name = name;
        this.password = password;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

}
