package com.colin.controller;

import com.colin.bean.Article;
import com.colin.bean.Message;
import com.colin.bean.User;
import com.colin.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.sql.SQLException;
import java.util.List;

@Controller
@RequestMapping("/dashboard")
public class DashboardController {
    @Autowired
    UserService userService;
    @Autowired
    ArticleService articleService;
    @Autowired
    MessageService messageService;
    @Autowired
    FileService accessoriesService;
    @Autowired
    FriendService friendService;
    @Autowired
    FlagService flagService;


    @RequestMapping("dashboard")
    public String dashBoard() {
        return "dashboard";
    }

    @RequestMapping("navigation")
    public String navigation() {
        return "Navigation";
    }

    @RequestMapping("selectInformation")
    public String selectInformation(HttpSession httpSession, Model model) throws SQLException, ClassNotFoundException {
        User user = (User) httpSession.getAttribute("loginUser");

        int articleCount = articleService.selectArticleCountByUid(user.getId());
        int messageCount = messageService.selectMessageCountByUid(user.getId());
        int accessoriesCount = accessoriesService.selectAccessoriesCountByUid(user.getId());
        int friendCount = friendService.selectFriendCountByUid(user.getId());

        List<Article> articles = articleService.selectNewArticleByUid(user.getId());
        List<Message> messages = messageService.selectNewMessageByUid(user.getId());

        httpSession.setAttribute("articleCount", articleCount);
        httpSession.setAttribute("messageCount", messageCount);
        httpSession.setAttribute("accessoriesCount", accessoriesCount);
        httpSession.setAttribute("friendCount", friendCount);
        httpSession.setAttribute("newArticles", articles);
        httpSession.setAttribute("newMessages", messages);


        return "TotalPage";
    }

    @RequestMapping("selectInformation1")
    public String selectInformation1(HttpSession httpSession, Model model) throws SQLException, ClassNotFoundException {
        User user = (User) httpSession.getAttribute("loginUser");

        int articleCount = articleService.selectArticleCountByUid(user.getId());
        int messageCount = messageService.selectMessageCountByUid(user.getId());
        int accessoriesCount = accessoriesService.selectAccessoriesCountByUid(user.getId());
        int friendCount = friendService.selectFriendCountByUid(user.getId());
        List<Article> articles = articleService.selectNewArticleByUid(user.getId());
        List<Message> messages = messageService.selectNewMessageByUid(user.getId());

        httpSession.setAttribute("articleCount", articleCount);
        httpSession.setAttribute("messageCount", messageCount);
        httpSession.setAttribute("accessoriesCount", accessoriesCount);
        httpSession.setAttribute("friendCount", friendCount);
        httpSession.setAttribute("newArticles", articles);
        httpSession.setAttribute("newMessages", messages);

        return "dashboard";
    }


}
