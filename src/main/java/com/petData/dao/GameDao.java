package com.petData.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.petData.Domain.Name;

public interface GameDao {
	
	List<Name> gameName() throws DataAccessException;
}
