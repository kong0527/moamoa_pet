package com.petData.dao.mybatis.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.petData.Controller.NameCommand;
import com.petData.Domain.Name;

@Mapper
public interface NameMapper {
	
	List<Name> getGeneratedName(NameCommand command);
	
}
