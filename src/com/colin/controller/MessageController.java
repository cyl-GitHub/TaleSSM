package com.colin.controller;

import com.colin.bean.Article;
import com.colin.bean.Message;
import com.colin.bean.User;
import com.colin.service.MessageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.sql.SQLException;

@Controller
@RequestMapping("/message")
public class MessageController {
    @Autowired
    MessageService messageService;

    @RequestMapping("/insert")
    public String insertMessage(Integer id, String message, HttpSession httpSession, Model model) throws SQLException, ClassNotFoundException {
        User user = (User) httpSession.getAttribute("loginUser");
        Message message1 = new Message(user.getId(), new Article(id), message);
        messageService.insertMessage(message1);
        model.addAttribute("id", id);
        return "forward:/front/preview";
    }

}
