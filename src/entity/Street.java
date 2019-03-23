package entity;

/**
 @Author: hyz
 @Date: 10:22 2018/4/24
 @Description: 街道实体类
 */
public class Street {
  //街道id
  private int id;
  //街道名字
  private String steetName;
  //区域id
  private int areaId;
  //城市id
  private int citId;


  public int getId() {
    return id;
  }

  public void setId(int id) {
    this.id = id;
  }

  public int getAreaId() {
    return areaId;
  }

  public void setAreaId(int areaId) {
    this.areaId = areaId;
  }

  public int getCitId() {
    return citId;
  }

  public void setCitId(int citId) {
    this.citId = citId;
  }

  public String getSteetName() {
    return steetName;
  }

  public void setSteetName(String steetName) {
    this.steetName = steetName;
  }







}
