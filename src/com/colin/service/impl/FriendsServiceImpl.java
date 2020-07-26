package com.colin.service.impl;

import com.colin.bean.Friend;
import com.colin.bean.PageBean;
import com.colin.mapper.FriendMapper;
import com.colin.service.FriendService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.SQLException;
@Service
public class FriendsServiceImpl implements FriendService {

    @Autowired
    FriendMapper friendMapper;

    @Override
    public int selectFriendCountByUid(int id) throws SQLException, ClassNotFoundException {
        return friendMapper.selectFriendCountByUid(id);
    }

    @Override
    public void selectAllFriendByUid(PageBean<Friend> pb, int id) throws SQLException, ClassNotFoundException {

    }

    @Override
    public void insertFriendBuUid(Friend friend) throws SQLException, ClassNotFoundException {

    }

    @Override
    public void deleteFriendById(int id) throws SQLException, ClassNotFoundException {

    }
}
