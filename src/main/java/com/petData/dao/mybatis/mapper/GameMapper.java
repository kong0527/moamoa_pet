package com.petData.dao.mybatis.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.petData.Domain.Name;

@Mapper
public interface GameMapper {
	List<Name> gameName(String type);
}
