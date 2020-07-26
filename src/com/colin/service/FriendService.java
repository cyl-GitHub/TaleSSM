package com.colin.service;

import com.colin.bean.Friend;
import com.colin.bean.PageBean;

import java.sql.SQLException;

public interface FriendService {
    int selectFriendCountByUid(int id) throws SQLException, ClassNotFoundException;

    void selectAllFriendByUid(PageBean<Friend> pb, int id) throws SQLException, ClassNotFoundException;

    void insertFriendBuUid(Friend friend) throws SQLException, ClassNotFoundException;

    void deleteFriendById(int id) throws SQLException, ClassNotFoundException;
}
