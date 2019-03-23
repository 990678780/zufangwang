package entity;


public class Area {
  //区域编号
  private int id;
  //区域名称
  private String areaName;
  //城市ID
  private int citId;


  public int getId() {
    return id;
  }

  public void setId(int id) {
    this.id = id;
  }


  public String getAreaName() {
    return areaName;
  }

  public void setAreaName(String areaName) {
    this.areaName = areaName;
  }


  public int getCitId() {
    return citId;
  }

  public void setCitId(int citId) {
    this.citId = citId;
  }

}
