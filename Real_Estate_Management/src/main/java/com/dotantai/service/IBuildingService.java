package com.dotantai.service;

import java.util.List;
import java.util.Map;

import com.dotantai.builder.BuildingSearchBuilder;
import com.dotantai.dto.BuildingDTO;
import com.dotantai.paging.Pageable;

public interface IBuildingService {
	List<BuildingDTO> findAll(BuildingSearchBuilder fieldSearch, Pageable pageable);
	BuildingDTO insert(BuildingDTO buildingDTO);

}
