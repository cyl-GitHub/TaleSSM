package com.colin.service;

import com.colin.bean.Article;
import com.colin.bean.PageBean;

import java.sql.SQLException;
import java.util.List;

public interface ArticleService {

    int selectArticleCountByUid(int id) throws SQLException, ClassNotFoundException;

    List<Article> selectNewArticleByUid(int id) throws SQLException, ClassNotFoundException;

    Article selectType(Article article);

    void selectAllArticleByUid(PageBean<Article> pb, int id) throws SQLException, ClassNotFoundException;

    void insertArticle(Article article) throws SQLException, ClassNotFoundException;

    void deleteArticle(Integer id, int uId) throws SQLException, ClassNotFoundException;

    void updateArticle(Article article) throws SQLException, ClassNotFoundException;

    List<Article> selectAllArticleByUid(int pageBegin, int pageCount , int id) throws SQLException, ClassNotFoundException;

    Article selectPreviewArticleByid(Integer id) throws SQLException, ClassNotFoundException;


    int selectCount(int id);

    Article selectArticleCountById(Integer id);

    List<Article> selectFrontAllArticleByUid(int id);
}
