package com.mountainexploer.house.mountainhouseList.DAO.Interface;

import java.util.List;

import com.mountainexploer.mountain.model.route.NationalPark;

public interface InationparkService {
	 NationalPark select(String Park);
	
	List<NationalPark> selectAll();

	List<NationalPark> selectParks(String park);

	NationalPark inserPark(NationalPark nbean);

	NationalPark update(NationalPark nbean);

	NationalPark deletePark(String park);


}