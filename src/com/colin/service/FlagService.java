package com.colin.service;

import com.colin.bean.Flag;

import java.sql.SQLException;
import java.util.List;

public interface FlagService {

    List<Flag> selectFlagByUid(int id) throws SQLException, ClassNotFoundException;

    void insertFlag(int id, String name) throws SQLException, ClassNotFoundException;
}
