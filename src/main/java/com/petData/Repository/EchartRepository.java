package com.petData.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.petData.Entity.Overseas;

@Repository
public interface EchartRepository extends JpaRepository<Overseas, String>{
	List<Overseas> findAll();
	List<Overseas> findByPetNameContaining(String keyword);
}
