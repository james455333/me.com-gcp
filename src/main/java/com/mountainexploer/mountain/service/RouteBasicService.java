package com.mountainexploer.mountain.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.mountainexploer.main.generic.model.GenericTypeObject;
import com.mountainexploer.main.generic.service.GenericService;
import com.mountainexploer.mountain.dao.RouteBasicDAOInterface;
import com.mountainexploer.mountain.model.route.RouteBasic;
@Service
public class RouteBasicService implements RouteBasicServiceInterface {
	
	@Autowired @Qualifier("routeBasicDAO")
	private RouteBasicDAOInterface routeBasicDAO;
	
	public RouteBasicService() {
		System.out.println("set RouteBasicService");
	}
	
	@Override
	public void save(RouteBasic routeBasic) {
		routeBasicDAO.save(routeBasic);
	}
	
	
	@Override
	public List<RouteBasic> npIDsetPage(int page, int showdata, int npID) {
		System.out.println("rbSpecialService 啟動");
		return routeBasicDAO.npIDsetPage(page, showdata, npID);
	}
	
	
	
}
