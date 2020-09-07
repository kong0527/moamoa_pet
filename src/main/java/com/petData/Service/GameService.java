package com.petData.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.petData.Domain.Name;
import com.petData.dao.mybatis.mapper.GameMapper;

@Service
public class GameService {

	@Autowired
	private GameMapper mapper;
	
	public List<Name> gameName(String type) {
		return mapper.gameName(type);
	}
}
