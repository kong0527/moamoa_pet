package com.petData.dao.mybatis;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.petData.Domain.Name;
import com.petData.dao.mybatis.mapper.GameMapper;

@Repository
public class MybatisGameDao {

	@Autowired
	private GameMapper gameMapper;
	
	public List<Name> gameName() {
		return gameMapper.gameName();
	}
}
