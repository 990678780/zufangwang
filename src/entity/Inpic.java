package entity;


/**
 * 帖子图片类
 */
public class Inpic {

  private int id;       //帖子图ID
  private int iId;     //图片ID
  private String picPath;  //图片路径


  public int getId() {
    return id;
  }

  public void setId(int id) {
    this.id = id;
  }


  public int getIId() {
    return iId;
  }

  public void setIId(int iId) {
    this.iId = iId;
  }


  public String getPicPath() {
    return picPath;
  }

  public void setPicPath(String picPath) {
    this.picPath = picPath;
  }

}
