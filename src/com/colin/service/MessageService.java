package com.colin.service;

import com.colin.bean.Message;

import java.sql.SQLException;
import java.util.List;

public interface MessageService {

    int selectMessageCountByUid(int id) throws SQLException, ClassNotFoundException;

    List<Message> selectNewMessageByUid(int id) throws SQLException, ClassNotFoundException;

    List<Message> selectMessageByUid(int id) throws SQLException, ClassNotFoundException;

    void insertMessage(Message message) throws SQLException, ClassNotFoundException;


    List<Message> selectMessageByAid(Integer id);

}
