package com.colin.mapper;

import com.colin.bean.Flag;

import java.util.List;

public interface FlagMapper {
    List<Flag> selectFlagByUid(int id);

}
