package entity;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

/**
 @Author: hyz
 @Date: 15:00 2018/4/17
 @Description: 帖子类
 */
public class Comment {

    private int id;                         //评论ID
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date createTime;                //发帖时期
    private int iId;                      //发帖人id
    private int uid;                        //评论人id
    private String context;                 //评论内容
    private User user;		//用户对象，然后是从对象里面拿需要的数据

    public int getiId() {
		return iId;
	}

	public void setiId(int iId) {
		this.iId = iId;
	}



	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getContext() {
        return context;
    }

    public void setContext(String context) {
        this.context = context;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }


    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
}
