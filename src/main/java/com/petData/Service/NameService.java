package com.petData.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.petData.Controller.NameCommand;
import com.petData.Entity.Name;
import com.petData.dao.mybatis.mapper.NameMapper;

@Service
public class NameService {

	@Autowired
	private NameMapper mapper;
	
	public List<Name> getGeneratedName(NameCommand command) {
		return mapper.getGeneratedName(command);
	}
	
}
