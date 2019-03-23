package dao.house;

import entity.Area;
import entity.House;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @Author: hyz
 * @Date: 17:38 2018/4/17
 * @Description:
 */
public interface HouseMapper {
    /**
     * 查询所有房源
     *
     * @return
     */
    public List<House> queryAll(@Param("pNum") int pNum);


    /**
     * 根据houseId查询
     */
    public House queryById(@Param("id") int id);

    /**
     * 根据条件查询
     *
     * @return
     */
    public List<House> queryByCondition(@Param("areaId") int areaId, @Param("streetId") int streetId, @Param("price01") int price01, @Param("price02") int price02, @Param("zType") int zType, @Param("roomNum") int roomNum, @Param("special") int special, @Param("sqlNum") int sqlNum);

    /**
     * 添加房源信息
     *
     * @return
     */
    public boolean addHouse(@Param("house") House house);

    /**
     * 删除房源信息
     *
     * @return
     */
    public boolean delHouse(@Param("id") int id);


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
     * 根据区域条件查询合适房源，默认时间排序
     *
     * @param eAreaName
     * @return
     */
    public List<House> queryByeAreaName(@Param("eAreaName") String eAreaName);

    /**
     * 获取区域英文名字
     *
     * @return
     */
    public List<Area> queryeAreaName();

}
