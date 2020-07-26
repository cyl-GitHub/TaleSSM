package com.colin.controller;

import com.colin.bean.Article;
import com.colin.bean.Message;
import com.colin.bean.User;
import com.colin.service.ArticleService;
import com.colin.service.MessageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.sql.SQLException;
import java.util.List;

@Controller
@RequestMapping("/front")
public class FrontController {

    @Autowired
    ArticleService articleService;

    @Autowired
    MessageService messageService;

    @RequestMapping("/select")
    public String select(HttpSession httpSession, Model model) {
        User user = (User) httpSession.getAttribute("loginUser");
        List<Article> articles = articleService.selectFrontAllArticleByUid(user.getId());
        model.addAttribute("articles",articles);
        return "front";
    }

    @RequestMapping("/preview")
    public String preview(Integer id,Model model) throws SQLException, ClassNotFoundException {
        Article article = articleService.selectPreviewArticleByid(id);
        model.addAttribute("article", article);

        List<Message> messages = messageService.selectMessageByAid(id);
        model.addAttribute("messages",messages);
        return "Preview";
    }
}
