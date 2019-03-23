package entity;

import java.util.Date;



/**
 * 用户类
 * @author 
 *
 */
public class User {
  private int id;	//用户ID
  private String phone;  //用户手机号
  private String password;  //用户密码
  private String sex;  //性别
  private String picturepath;  //头像路径
  private Date createTime;  //创建日期
  private String name;//姓名

  public String getName() {
	return name;
}

public void setName(String name) {
	this.name = name;
}

public Date getCreateTime() {
	return createTime;
}

public void setCreateTime(Date createTime) {
	this.createTime = createTime;
}

public int getId() {
    return id;
  }

  public void setId(int id) {
    this.id = id;
  }


  public String getPhone() {
    return phone;
  }

  public void setPhone(String phone) {
    this.phone = phone;
  }


  public String getPassword() {
    return password;
  }

  public void setPassword(String password) {
    this.password = password;
  }


  public String getSex() {
    return sex;
  }

  public void setSex(String sex) {
    this.sex = sex;
  }


  public String getPicturepath() {
    return picturepath;
  }

  public void setPicturepath(String picturepath) {
    this.picturepath = picturepath;
  }



}
