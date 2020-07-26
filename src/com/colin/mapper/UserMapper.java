package com.colin.mapper;

import com.colin.bean.User;

public interface UserMapper {
    User selectByUser(User user);

    void insertUser(User user);

    void updateUser(User user);

    User selectById(int id);
}
