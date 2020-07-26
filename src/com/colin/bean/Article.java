package com.colin.bean;


import java.sql.Timestamp;

public class Article {
    private int id;
    private User user;
    private String title;
    private String content;
    private Timestamp createTime;
    private int pageView;
    private String type;
    private String flag;
    private String condition;


    public Article() {
    }

    public Article(int id) {
        this.id = id;
    }

    public Article(User user, String title, String content, String type, String flag, String condition) {
        this.user = user;
        this.title = title;
        this.content = content;
        this.type = type;
        this.flag = flag;
        this.condition = condition;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Timestamp getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Timestamp createTime) {
        this.createTime = createTime;
    }

    public int getPageView() {
        return pageView;
    }

    public void setPageView(int pageView) {
        this.pageView = pageView;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getFlag() {
        return flag;
    }

    public void setFlag(String flag) {
        this.flag = flag;
    }

    public String getCondition() {
        return condition;
    }

    public void setCondition(String condition) {
        this.condition = condition;
    }
}
