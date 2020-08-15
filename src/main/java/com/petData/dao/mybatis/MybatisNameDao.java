package com.petData.dao.mybatis;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.petData.Controller.NameCommand;
import com.petData.Entity.Name;
import com.petData.dao.mybatis.mapper.NameMapper;

@Repository
public class MybatisNameDao {

	@Autowired
	private NameMapper nameMapper;
	
	public List<Name> getGeneratedName(NameCommand command) {
		return nameMapper.getGeneratedName(command);
	}
	
}
