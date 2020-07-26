package com.colin.mapper;

import com.colin.bean.Message;

import java.util.List;

public interface MessageMapper {
    int selectMessageCountByUid(int id);

    List<Message> selectNewMessageByUid(int id);

    List<Message> selectMessageByAid(Integer id);

    void insertMessage(Message message);

}
