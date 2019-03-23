package entity;



public class Around {

  private int id;//房屋ID
  private String traffic;//周边交通
  private String food;//周边餐饮
  private String shop;//周边商店
  private String life;//周边生活设施


  public long getId() {
    return id;
  }

  public void setId(int id) {
    this.id = id;
  }


  public String getTraffic() {
    return traffic;
  }

  public void setTraffic(String traffic) {
    this.traffic = traffic;
  }


  public String getFood() {
    return food;
  }

  public void setFood(String food) {
    this.food = food;
  }


  public String getShop() {
    return shop;
  }

  public void setShop(String shop) {
    this.shop = shop;
  }


  public String getLife() {
    return life;
  }

  public void setLife(String life) {
    this.life = life;
  }

}
