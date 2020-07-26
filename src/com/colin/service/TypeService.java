package com.colin.service;

import com.colin.bean.Type;

import java.sql.SQLException;
import java.util.List;

public interface TypeService {
    List<Type> selectTypeByUid(int id) throws SQLException, ClassNotFoundException;

    void insertType(Type type) throws SQLException, ClassNotFoundException;
}
