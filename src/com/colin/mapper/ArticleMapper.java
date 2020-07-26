package com.colin.mapper;


import com.colin.bean.Article;

import java.util.List;

public interface ArticleMapper {
    int selectCountByUid(int id);

    List<Article> selectNewArticleByUid(int id);

    void insertArticle(Article article);

    List<Article> selectAllArticleByUid(int pageBegin, int pageCount, int id);

    void deleteArticle(Integer id, int uId);

    Article selectArticleById(Integer id);

    void updateArticle(Article article);

    List<Article> selectFrontAllArticleByUid(int id);
}
