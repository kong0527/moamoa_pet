package com.petData.dao.mybatis.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.petData.Controller.NameCommand;
import com.petData.Entity.Name;

@Mapper
public interface NameMapper {
	
	List<Name> getGeneratedName(NameCommand command);
	
}
