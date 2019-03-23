package entity;


import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

/**
 * 帖子类
 */
public class Invitation {

  private int id;           //帖子ID
  private String address;   //房源地址
  private int price;        //房源价格
  private int type;         //租赁类型
  private String title;     //标题
  private String discripe;  //房源描述
  @DateTimeFormat(pattern = "yyyy-MM-dd")
  private Date createTime; //出租时间
  private int picId;     //图片ID
  private int uId;       //发帖人ID
  private Ztype ztype;
  private User user;
  
  public int getuId() {
	return uId;
}

public void setuId(int uId) {
	this.uId = uId;
}

public Ztype getZtype() {
	return ztype;
}

public void setZtype(Ztype ztype) {
	this.ztype = ztype;
}

public User getUser() {
	return user;
}

public void setUser(User user) {
	this.user = user;
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


  public int getPrice() {
    return price;
  }

  public void setPrice(int price) {
    this.price = price;
  }


  public int getType() {
    return type;
  }

  public void setType(int type) {
    this.type = type;
  }


  public String getTitle() {
    return title;
  }

  public void setTitle(String title) {
    this.title = title;
  }


  public String getDiscripe() {
    return discripe;
  }

  public void setDiscripe(String discripe) {
    this.discripe = discripe;
  }


  public Date getCreateTime() {
    return createTime;
  }

  public void setCreateTime(Date createTime) {
    this.createTime = createTime;
  }


  public int getPicId() {
    return picId;
  }

  public void setPicId(int picId) {
    this.picId = picId;
  }


  public int getUId() {
    return uId;
  }

  public void setUId(int uId) {
    this.uId = uId;
  }

}
