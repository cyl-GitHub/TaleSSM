package com.colin.service.impl;

import com.colin.bean.Type;
import com.colin.mapper.TypeMapper;
import com.colin.service.TypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.SQLException;
import java.util.List;

@Service
public class TypeServiceImpl implements TypeService {
    @Autowired
    TypeMapper typeMapper;

    @Override
    public List<Type> selectTypeByUid(int id) throws SQLException, ClassNotFoundException {
        return typeMapper.selectTypeByUid(id);
    }

    @Override
    public void insertType(Type type) throws SQLException, ClassNotFoundException {
        typeMapper.insertType(type);
    }
}
