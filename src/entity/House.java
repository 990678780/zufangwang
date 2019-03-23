package entity;


import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

/**
 * @Author: hyz
 * @Date: 15:00 2018/4/17
 * @Description: 房源类
 */

public class House {

    private int id;                     //房源ID
    private String address;               //房源地址
    private int square;                 //房源面积
    private int price;                  //房源租金价格
    private String zTypeContext;                  //房源租赁方式
    private int roomNum;                //房源室个数
    private String floor;               //房源楼层
    private int special;                //房源特色
    private int subwayId;               //地铁ID
    private int areaId;                 //区域ID
    private Area area;                  //区域对象
    private City city;                  //城市对象
    private Around around;                 //周边对象
//    private String areaName;                 //区域名字
    private int cityId;                 //城市ID
//    private String cityName;                 //城市ID
    private int aroundId;               //周边ID
    private String hType;               //户型
    private String roomWay;             //朝向
    private String title;               //房源标题
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date createTime;               //房源发布时间
    private String station;                 //房源附近站点

    public Area getArea() {
        return area;
    }

    public void setArea(Area area) {
        this.area = area;
    }

    public City getCity() {
        return city;
    }

    public void setCity(City city) {
        this.city = city;
    }

    public Around getAround() {
        return around;
    }

    public void setAround(Around around) {
        this.around = around;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getSquare() {
        return square;
    }

    public void setSquare(int square) {
        this.square = square;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getzTypeContext() {
        return zTypeContext;
    }

    public void setzTypeContext(String zTypeContext) {
        this.zTypeContext = zTypeContext;
    }

    public int getRoomNum() {
        return roomNum;
    }

    public void setRoomNum(int roomNum) {
        this.roomNum = roomNum;
    }

    public String getFloor() {
        return floor;
    }

    public void setFloor(String floor) {
        this.floor = floor;
    }

    public int getSpecial() {
        return special;
    }

    public void setSpecial(int special) {
        this.special = special;
    }

    public int getSubwayId() {
        return subwayId;
    }

    public void setSubwayId(int subwayId) {
        this.subwayId = subwayId;
    }

    public int getAreaId() {
        return areaId;
    }

    public void setAreaId(int areaId) {
        this.areaId = areaId;
    }

    public int getCityId() {
        return cityId;
    }

    public void setCityId(int cityId) {
        this.cityId = cityId;
    }

    public int getAroundId() {
        return aroundId;
    }

    public void setAroundId(int aroundId) {
        this.aroundId = aroundId;
    }

    public String gethType() {
        return hType;
    }

    public void sethType(String hType) {
        this.hType = hType;
    }

    public String getRoomWay() {
        return roomWay;
    }

    public void setRoomWay(String roomWay) {
        this.roomWay = roomWay;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public String getStation() {
        return station;
    }

    public void setStation(String station) {
        this.station = station;
    }
}
