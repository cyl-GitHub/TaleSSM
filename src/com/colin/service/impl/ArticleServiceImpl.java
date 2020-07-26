package com.colin.service.impl;

import com.colin.bean.Article;
import com.colin.bean.PageBean;
import com.colin.mapper.ArticleMapper;
import com.colin.service.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.SQLException;
import java.util.List;

@Service
public class ArticleServiceImpl implements ArticleService {
    @Autowired
    ArticleMapper articleMapper;

    @Override
    public int selectArticleCountByUid(int id) throws SQLException, ClassNotFoundException {
        return articleMapper.selectCountByUid(id);
    }

    @Override
    public List<Article> selectNewArticleByUid(int id) throws SQLException, ClassNotFoundException {
        return articleMapper.selectNewArticleByUid(id);
    }

    @Override
    public Article selectType(Article article) {
        return null;
    }

    @Override
    public void selectAllArticleByUid(PageBean<Article> pb, int id) throws SQLException, ClassNotFoundException {

    }

    @Override
    public void insertArticle(Article article) throws SQLException, ClassNotFoundException {
        articleMapper.insertArticle(article);
    }

    @Override
    public void deleteArticle(Integer id, int uId) throws SQLException, ClassNotFoundException {
        articleMapper.deleteArticle(id, uId);
    }

    @Override
    public void updateArticle(Article article) throws SQLException, ClassNotFoundException {
        articleMapper.updateArticle(article);
    }

    @Override
    public List<Article> selectAllArticleByUid(int pageBegin, int pageCount, int id) throws SQLException, ClassNotFoundException {
        return articleMapper.selectAllArticleByUid(pageBegin, pageCount, id);
    }


    @Override
    public Article selectPreviewArticleByid(Integer id) throws SQLException, ClassNotFoundException {
        return articleMapper.selectArticleById(id);
    }

    @Override
    public int selectCount(int id) {
        return articleMapper.selectCountByUid(id);
    }

    @Override
    public Article selectArticleCountById(Integer id) {
        return articleMapper.selectArticleById(id);
    }

    @Override
    public List<Article> selectFrontAllArticleByUid(int id) {
        return articleMapper.selectFrontAllArticleByUid(id);
    }
}
