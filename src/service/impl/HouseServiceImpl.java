package service.impl;

import dao.house.HouseMapper;
import entity.Area;
import entity.House;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import service.HouseService;

import java.util.List;

/**
 * @Author: hyz
 * @Date: 17:02 2018/4/17
 * @Description:
 */
@Service("houseService")
public class HouseServiceImpl implements HouseService {
    @Autowired
    private HouseMapper houseMapper;

    @Override
    public List<House> queryAll(int sqlNum) {
        System.out.println("--------------------------------------------");
        List<House> list = houseMapper.queryAll(sqlNum);
        System.out.println("--------------------------------------------");
        return list;
    }

    @Override
    public House queryById(int id) {
        System.out.println("-------即将获取了house对象-------------------------------------");
        House house = houseMapper.queryById(id);
        System.out.println("-----获取了house对象---------------------------------------");
        return house;
    }

    @Override
    public List<House> queryByCondition(int areaId, int streetId, int price01, int price02, int zType, int roomNum, int special, int sqlNum) {
        System.out.println("-------即将获取了houseList对象-------------------------------------");
        List<House> list = houseMapper.queryByCondition(areaId, streetId, price01, price02, zType, roomNum, special, sqlNum);
        System.out.println("-----获取了houseList对象!!---------------------------------------");
        return list;
    }

    @Override
    public List<House> queryByeAreaName(String eAreaName) {
        List<House> list = houseMapper.queryByeAreaName(eAreaName);
        return list;
    }

    @Override
    public List<Area> queryeAreaName() {
        List<Area> list = houseMapper.queryeAreaName();
        return list;
    }

    @Override
    public boolean addHouse(House house) {
        return false;
    }

    @Override
    public boolean delHouse(int id) {
        return false;
    }

    @Override
    public List<House> queryByC_PriceDown() {
        return null;
    }

    @Override
    public List<House> queryByC_PriceUp() {
        return null;
    }

    @Override
    public List<House> queryByC_SquareDown() {
        return null;
    }

    @Override
    public List<House> queryByC_SquareUp() {
        return null;
    }

    @Override
    public List<House> queryByS_SquareUp() {
        return null;
    }

    @Override
    public List<House> queryByS_SquareDown() {
        return null;
    }

    @Override
    public List<House> queryByS_PriceDown() {
        return null;
    }

    @Override
    public List<House> queryByS_PriceUp() {
        return null;
    }

    public HouseMapper getHouseMapper() {
        return houseMapper;
    }

    public void setHouseMapper(HouseMapper houseMapper) {
        this.houseMapper = houseMapper;
    }
}
