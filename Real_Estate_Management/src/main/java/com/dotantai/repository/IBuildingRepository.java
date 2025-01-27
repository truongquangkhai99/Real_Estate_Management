package com.dotantai.repository;

import java.util.List;
import java.util.Map;

import com.dotantai.builder.BuildingSearchBuilder;
import com.dotantai.dto.BuildingDTO;
import com.dotantai.entity.BuildingEntity;
import com.dotantai.paging.Pageable;

public interface IBuildingRepository extends IJpaRepository<BuildingEntity>{
	
	List<BuildingEntity> findAll(Map<String,Object> params, Pageable pageable, BuildingSearchBuilder fieldSearch);
	void update(BuildingEntity buildingEntity);
	boolean delete(Long id);
	BuildingEntity findById(Long id);

	
	

}
