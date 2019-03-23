package entity;

/**
 * 地铁站实体类
 * @author Administrator
 *
 */

public class Subwaystation {

  private int id;//地铁站id
  private String name;//地铁站名
  private int subwayId;//地铁线id


  public long getId() {
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


  public long getSubwayId() {
    return subwayId;
  }

  public void setSubwayId(int subwayId) {
    this.subwayId = subwayId;
  }

}
