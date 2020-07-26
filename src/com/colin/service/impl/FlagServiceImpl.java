package com.colin.service.impl;

import com.colin.bean.Flag;
import com.colin.mapper.FlagMapper;
import com.colin.service.FlagService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.SQLException;
import java.util.List;

@Service
public class FlagServiceImpl implements FlagService {
    @Autowired
    FlagMapper flagMapper;

    @Override
    public List<Flag> selectFlagByUid(int id) throws SQLException, ClassNotFoundException {
        return flagMapper.selectFlagByUid(id);
    }

    @Override
    public void insertFlag(int id, String name) throws SQLException, ClassNotFoundException {

    }
}
