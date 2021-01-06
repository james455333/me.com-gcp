package com.mountainexploer.mountain.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.mountainexploer.mountain.model.route.RouteBasic;

@Repository
public interface RouteBasicDAOInterface {

	void save(RouteBasic routeBasic);

	List<RouteBasic> npIDsetPage(int page, int showdata, int npID);

}