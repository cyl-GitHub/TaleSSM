package com.colin.service.impl;

import com.colin.bean.Message;
import com.colin.mapper.MessageMapper;
import com.colin.service.MessageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.SQLException;
import java.util.List;
@Service
public class MessageServiceImpl implements MessageService {
    @Autowired
    MessageMapper messageMapper;

    @Override
    public int selectMessageCountByUid(int id) throws SQLException, ClassNotFoundException {
        return messageMapper.selectMessageCountByUid(id);
    }

    @Override
    public List<Message> selectNewMessageByUid(int id) throws SQLException, ClassNotFoundException {
        return messageMapper.selectNewMessageByUid(id);
    }

    @Override
    public List<Message> selectMessageByUid(int id) throws SQLException, ClassNotFoundException {
        return null;
    }

    @Override
    public void insertMessage(Message message) throws SQLException, ClassNotFoundException {
        messageMapper.insertMessage(message);
    }

    @Override
    public List<Message> selectMessageByAid(Integer id) {
        return messageMapper.selectMessageByAid(id);
    }
}
