package com.petData.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.petData.Controller.NameCommand;
import com.petData.Entity.Name;

public interface NameDao {
	
	List<Name> getGeneratedName(NameCommand command) throws DataAccessException;
	
}
