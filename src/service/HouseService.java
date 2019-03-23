package service;

import entity.Area;
import entity.House;

import java.util.List;

/**
 * @Author: hyz
 * @Date: 16:41 2018/4/17
 * @Description: 房源接口
 */
public interface HouseService {
    /**
     * 查询所有房源
     *
     * @return
     */
    public List<House> queryAll(int sqlNum);


    /**
     * 根据houseId查询
     */
    public House queryById(int id);

    /**
     * 添加房源信息
     *
     * @return
     */
    public boolean addHouse(House house);

    /**
     * 删除房源信息
     *
     * @return
     */
    public boolean delHouse(int id);


    /*
     * 根据区域条件查询合适房源
     */

    /**
     * 根据区域条件查询合适房源---价格从高到低
     *
     * @return
     */
    public List<House> queryByC_PriceDown();

    /**
     * 根据区域条件查询合适房源---价格从低到高
     *
     * @return
     */
    public List<House> queryByC_PriceUp();

    /**
     * 根据区域条件查询合适房源---面积从大到小
     *
     * @return
     */
    public List<House> queryByC_SquareDown();

    /**
     * 根据区域条件查询合适房源---面积从小到大
     *
     * @return
     */
    public List<House> queryByC_SquareUp();



    /*
     * 根据地铁条件查询合适房源
     */

    /**
     * 根据地铁条件查询合适房源---面积从小到大
     *
     * @return
     */
    public List<House> queryByS_SquareUp();

    /**
     * 根据地铁条件查询合适房源---面积从大到小
     *
     * @return
     */
    public List<House> queryByS_SquareDown();


    /**
     * 根据地铁条件查询合适房源---价格从大到小
     *
     * @return
     */
    public List<House> queryByS_PriceDown();


    /**
     * 根据地铁条件查询合适房源---价格从小到大
     *
     * @return
     */
    public List<House> queryByS_PriceUp();

    /**
     * 根据条件查询
     *
     * @return
     */
    public List<House> queryByCondition(int areaId, int streetId, int price01, int price02, int zType, int roomNum, int special, int sqlNum);


    /**
     * 根据区域条件查询合适房源，默认时间排序
     *
     * @return
     */
    public List<House> queryByeAreaName(String eAreaName);

    /**
     * 获取区域英文名字
     *
     * @return
     */
    public List<Area> queryeAreaName();
}
