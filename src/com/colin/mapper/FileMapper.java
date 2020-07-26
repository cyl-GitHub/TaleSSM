package com.colin.mapper;

import com.colin.bean.Accessories;

import java.util.List;

public interface FileMapper {
    int selectAccessoriesCountByUid(int id);

    void insertAccessories(Accessories accessories);

    List<Accessories> selectAccessoriesByUid(int id);
}
