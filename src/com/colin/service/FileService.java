package com.colin.service;

import com.colin.bean.Accessories;

import java.sql.SQLException;
import java.util.List;

public interface FileService {
    int selectAccessoriesCountByUid(int id) throws SQLException, ClassNotFoundException;

    void insertAccessories(Accessories accessories) throws SQLException, ClassNotFoundException;

    List<Accessories> selectAccessoriesByUid(int id) throws SQLException, ClassNotFoundException;
}
