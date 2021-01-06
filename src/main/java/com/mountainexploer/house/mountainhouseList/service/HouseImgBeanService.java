package com.mountainexploer.house.mountainhouseList.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mountainexploer.house.mountainhouseList.DAO.HouseImgBeanDAO;
import com.mountainexploer.house.mountainhouseList.DAO.Interface.IHouseImgBeanService;
import com.mountainexploer.house.mountainhouseList.model.HouseImgBean;

@Service
public class HouseImgBeanService implements IHouseImgBeanService {
	@Autowired
	private HouseImgBeanDAO ImgDAO;
	
	@Override
	public HouseImgBean select(int houseimgid) {

		return ImgDAO.select(houseimgid);
	}

	@Override
	public List<HouseImgBean> selectAll() {

		return ImgDAO.selectAll();
	}

	@Override
	public HouseImgBean insertHouseImg(HouseImgBean Imgbean) {

		return ImgDAO.insertHouseImg(Imgbean);
	}

	@Override
	public HouseImgBean update(HouseImgBean Imgbean) {

		return ImgDAO.update(Imgbean);
	}

	@Override
	public HouseImgBean deleteHouseImg(int Imgid) {

		return ImgDAO.deleteHouseImg(Imgid);
	}

}
