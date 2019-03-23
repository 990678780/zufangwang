package entity;

/**
 * 地铁线实体类
 * @author Administrator
 *
 */

public class Subway {

  private int id;//地铁线id
  private String name;//地铁线名
  private int cityId;//城市id


  public int getId() {
    return id;
  }

  public void setId(int id) {
    this.id = id;
  }


  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }


  public int getCityId() {
    return cityId;
  }

  public void setCityId(int cityId) {
    this.cityId = cityId;
  }

}
