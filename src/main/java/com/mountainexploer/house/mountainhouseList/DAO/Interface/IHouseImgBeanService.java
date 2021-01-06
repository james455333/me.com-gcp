package com.mountainexploer.house.mountainhouseList.DAO.Interface;

import java.util.List;

import com.mountainexploer.house.mountainhouseList.model.HouseImgBean;

public interface IHouseImgBeanService {

	HouseImgBean select(int houseimgid);

	List<HouseImgBean> selectAll();

	HouseImgBean insertHouseImg(HouseImgBean Imgbean);

	HouseImgBean update(HouseImgBean Imgbean);

	HouseImgBean deleteHouseImg(int Imgid);

}