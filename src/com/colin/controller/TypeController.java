package com.colin.controller;

import com.colin.bean.Flag;
import com.colin.bean.Type;
import com.colin.bean.User;
import com.colin.service.FlagService;
import com.colin.service.TypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.sql.SQLException;
import java.util.List;

@Controller
@RequestMapping("/type")
public class TypeController {
    @Autowired
    TypeService typeService;
    @Autowired
    FlagService flagService;

    @RequestMapping("/type")
    public String type(HttpSession httpSession, Model model) throws SQLException, ClassNotFoundException {
        User user = (User) httpSession.getAttribute("loginUser");

        List<Type> types = typeService.selectTypeByUid(user.getId());
        List<Flag> flags = flagService.selectFlagByUid(user.getId());

        model.addAttribute("types", types);
        model.addAttribute("flags", flags);
        return "type";
    }

    @RequestMapping("/insertType")
    public String insertType(Type type,HttpSession httpSession) throws SQLException, ClassNotFoundException {
        User user = (User) httpSession.getAttribute("loginUser");
        type.setId(user.getId());
        typeService.insertType(type);
        return "forward:/type/type";
    }
}
