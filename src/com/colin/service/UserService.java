package com.colin.service;

import com.colin.bean.User;

public interface UserService {
    User selectByUser(User user);

    void insertUser(User user);

    void updateUser(User user);

    User selectById(int id);
}
