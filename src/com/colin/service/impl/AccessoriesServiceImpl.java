package com.colin.service.impl;

import com.colin.bean.Accessories;
import com.colin.mapper.FileMapper;
import com.colin.service.FileService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.SQLException;
import java.util.List;

@Service
public class AccessoriesServiceImpl implements FileService {
    @Autowired
    FileMapper accessoriesMapper;

    @Override
    public int selectAccessoriesCountByUid(int id) throws SQLException, ClassNotFoundException {
        return accessoriesMapper.selectAccessoriesCountByUid(id);
    }

    @Override
    public void insertAccessories(Accessories accessories) throws SQLException, ClassNotFoundException {
        accessoriesMapper.insertAccessories(accessories);
    }

    @Override
    public List<Accessories> selectAccessoriesByUid(int id) throws SQLException, ClassNotFoundException {
        return accessoriesMapper.selectAccessoriesByUid(id);
    }
}
