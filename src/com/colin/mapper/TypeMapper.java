package com.colin.mapper;

import com.colin.bean.Type;

import java.util.List;

public interface TypeMapper {
    List<Type> selectTypeByUid(int id);

    void insertType(Type type);

}
