package entity;

import java.util.Date;


/**
 * 房东类
 * @author Administrator
 *
 */
public class Owner {

  private int id;	//房东ID
  private String phone;	//房东手机号
  private String sex;	//性别
  private Date createTime;	//发布日期
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


  public String getSex() {
    return sex;
  }

  public void setSex(String sex) {
    this.sex = sex;
  }


  public Date getCreateTime() {
    return createTime;
  }

  public void setCreateTime(Date createTime) {
    this.createTime = createTime;
  }

}
