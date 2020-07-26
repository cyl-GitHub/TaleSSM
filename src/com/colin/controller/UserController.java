package com.colin.controller;

import com.colin.bean.User;
import com.colin.service.UserService;
import com.colin.util.ParamCheck;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    UserService userService;

    @RequestMapping("/login")
    public String login() {
        return "login";
    }

    @RequestMapping("/doLogin")
    public String doLogin(User user, HttpSession httpSession, Model model) {
        boolean b = ParamCheck.ParamCheck(user.getName(), user.getPassword());
        if (b) {
            model.addAttribute("b", b);
            return "login";
        } else {
            User user1 = userService.selectByUser(user);
            if (user1 != null) {
                httpSession.setAttribute("loginUser", user1);
                return "forward:/dashboard/selectInformation";
            } else {
                model.addAttribute("flag", true);
                return "login";
            }
        }
    }

    @RequestMapping("/register")
    public String register() {
        return "register";
    }

    @RequestMapping("/doRegister")
    public String insertUser(User user, String password1) {
        if (!user.getPassword().equals(password1)) {
            return "register";
        } else {
            userService.insertUser(user);
            return "login";
        }
    }

    @RequestMapping("updateUser")
    public String update() {
        return "SetUp";
    }

    @RequestMapping("/doUpdateUser")
    public String updateUser(String password1, String password2, Model model, HttpSession httpSession) {
        User loginUser = (User) httpSession.getAttribute("loginUser");
        User user1 = userService.selectById(loginUser.getId());
        if (!password1.equals(user1.getPassword())) {
            model.addAttribute("i", true);
        } else {
            User user = new User(user1.getId(), user1.getName(), password2);
            userService.updateUser(user);
            httpSession.setAttribute("loginUser",user);
            model.addAttribute("i", false);
        }
        return "SetUp";
    }
}
