package com.mountainexploer.mountain.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.mountainexploer.mountain.model.route.RouteBasic;

@Service
public interface RouteBasicServiceInterface {

	void save(RouteBasic routeBasic);

	List<RouteBasic> npIDsetPage(int page, int showdata, int npID);

}