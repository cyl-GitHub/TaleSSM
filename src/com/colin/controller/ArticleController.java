package com.colin.controller;

import com.colin.bean.Article;
import com.colin.bean.Type;
import com.colin.bean.User;
import com.colin.service.ArticleService;
import com.colin.service.TypeService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.sql.SQLException;
import java.util.List;

@Controller
@RequestMapping("article")
public class ArticleController {
    @Autowired
    ArticleService articleService;
    @Autowired
    TypeService typeService;

    @RequestMapping("/publish")
    public String publish(HttpSession httpSession, Model model) throws SQLException, ClassNotFoundException {
        User user = (User) httpSession.getAttribute("loginUser");
        List<Type> types = typeService.selectTypeByUid(user.getId());
        model.addAttribute("types", types);
        return "Publish";
    }

    @RequestMapping("/doPublish")
    public String doPublish(Article article, HttpSession httpSession) throws SQLException, ClassNotFoundException {
        User user = (User) httpSession.getAttribute("loginUser");
        article.setUser(user);
        articleService.insertArticle(article);
        return "forward:/article/doPage";
    }


    @RequestMapping(value = "/doPage")
    public String findBooks(@Param("pageNumber") Integer pageNumber, Model model, HttpSession httpSession) throws SQLException, ClassNotFoundException {
        int pageNumber1 = 1;
        if (pageNumber != null && pageNumber > 0) {
            pageNumber1 = pageNumber;
        }
        int pageCount = 3;
        int totalPage;
        User user = (User) httpSession.getAttribute("loginUser");
        Integer count = articleService.selectCount(user.getId());

        if (count % pageCount == 0) {
            totalPage = count / pageCount;
        } else {
            totalPage = count / pageCount + 1;
        }

        if (pageNumber1 <= 0) {
            pageNumber1 = 1;
        } else if (pageNumber1 > totalPage) {
            pageNumber1 = totalPage;
        }

        if (pageNumber1 == 0) {
            pageNumber1 = 1;
        }
        if (totalPage == 0) {
            totalPage = 1;
        }

        List<Article> articles = articleService.selectAllArticleByUid((pageNumber1 - 1) * pageCount, pageCount, user.getId());
        model.addAttribute("pageNumber", pageNumber1);
        model.addAttribute("articles", articles);
        model.addAttribute("totalPage", totalPage);
        return "article";
    }

    @RequestMapping("/delete")
    public String deleteById(Integer id, HttpSession httpSession) throws SQLException, ClassNotFoundException {
        User user = (User) httpSession.getAttribute("loginUser");
        articleService.deleteArticle(id, user.getId());
        return "forward:/article/doPage";
    }

    @RequestMapping("/update")
    public String update(Integer id, Model model) {
        Article article = articleService.selectArticleCountById(id);
        model.addAttribute("article", article);
        return "updateArticle";
    }

    @RequestMapping("/doUpdate")
    public String doUpdate(Article article) throws SQLException, ClassNotFoundException {
        articleService.updateArticle(article);
        return "forward:/article/doPage";
    }

    @RequestMapping("/preview")
    public String preview(Integer id, Model model) throws SQLException, ClassNotFoundException {
        Article article = articleService.selectPreviewArticleByid(id);
        model.addAttribute("article", article);
        return "Preview1";
    }


}
