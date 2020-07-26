package com.colin.controller;

import com.colin.bean.Accessories;
import com.colin.bean.User;
import com.colin.service.FileService;
import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@Controller
@RequestMapping("/file")
public class FileController {
    @Autowired
    FileService fileService;

    @RequestMapping("/upload")
    public String upload() {
        return "file";
    }

    @RequestMapping("/doUpload")
    public String doUpload(MultipartFile file, Model model, HttpSession httpSession) throws IOException, SQLException, ClassNotFoundException {
        User user = (User) httpSession.getAttribute("loginUser");
        if (!file.isEmpty()) {
            File file1 = new File("D:/", file.getOriginalFilename());
            FileUtils.copyInputStreamToFile(file.getInputStream(), file1);
            String name = file1.getName();
            String absolutePath = file1.getAbsolutePath();
            model.addAttribute("name", name);
            model.addAttribute("absoluteFile", absolutePath);
            fileService.insertAccessories(new Accessories(name,absolutePath,user));
        }
        return "forward:/file/selectFile";
    }

    @RequestMapping("/selectFile")
    public String selectFile(HttpSession httpSession, Model model) throws SQLException, ClassNotFoundException {
        User user = (User) httpSession.getAttribute("loginUser");
        List<Accessories> accessories = fileService.selectAccessoriesByUid(user.getId());
        model.addAttribute("accessories", accessories);
        return "file";
    }
}
