package io.renren.entity;

import java.io.Serializable;
import java.util.Date;



/**
 * 教学发布表
 * 
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2017-05-28 00:04:22
 */
public class EntityPublishEntity implements Serializable {
	private static final long serialVersionUID = 1L;
	
	//
	private Long id;
	//用户名
	private String userName;
	//用户主键
	private String userId;
	//发布资源任务描述
	private String resDes;
	//1:频道 1对多上课   2:单聊 1对1上课
	private Integer resType;
	//创建时间
	private Date createTime;
	//技能类别。 1:计算机。2：英语
	private String category;
	//技能关键字
	private String keywords;
	//1:学生自愿。2:一次一元  3:自定义
	private Integer feeType;
	//收费自定义
	private String ownFeeDesc;
	//频道名称
	private String channelName;
	//来源 1:我要学习。2:我要发布
	private Integer sourceType;

	/**
	 * 设置：
	 */
	public void setId(Long id) {
		this.id = id;
	}
	/**
	 * 获取：
	 */
	public Long getId() {
		return id;
	}
	/**
	 * 设置：用户名
	 */
	public void setUserName(String userName) {
		this.userName = userName;
	}
	/**
	 * 获取：用户名
	 */
	public String getUserName() {
		return userName;
	}
	/**
	 * 设置：用户主键
	 */
	public void setUserId(String userId) {
		this.userId = userId;
	}
	/**
	 * 获取：用户主键
	 */
	public String getUserId() {
		return userId;
	}
	/**
	 * 设置：发布资源任务描述
	 */
	public void setResDes(String resDes) {
		this.resDes = resDes;
	}
	/**
	 * 获取：发布资源任务描述
	 */
	public String getResDes() {
		return resDes;
	}
	/**
	 * 设置：1:频道 1对多上课   2:单聊 1对1上课
	 */
	public void setResType(Integer resType) {
		this.resType = resType;
	}
	/**
	 * 获取：1:频道 1对多上课   2:单聊 1对1上课
	 */
	public Integer getResType() {
		return resType;
	}
	/**
	 * 设置：创建时间
	 */
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	/**
	 * 获取：创建时间
	 */
	public Date getCreateTime() {
		return createTime;
	}
	/**
	 * 设置：技能类别。 1:计算机。2：英语
	 */
	public void setCategory(String category) {
		this.category = category;
	}
	/**
	 * 获取：技能类别。 1:计算机。2：英语
	 */
	public String getCategory() {
		return category;
	}
	/**
	 * 设置：技能关键字
	 */
	public void setKeywords(String keywords) {
		this.keywords = keywords;
	}
	/**
	 * 获取：技能关键字
	 */
	public String getKeywords() {
		return keywords;
	}
	/**
	 * 设置：1:学生自愿。2:一次一元  3:自定义
	 */
	public void setFeeType(Integer feeType) {
		this.feeType = feeType;
	}
	/**
	 * 获取：1:学生自愿。2:一次一元  3:自定义
	 */
	public Integer getFeeType() {
		return feeType;
	}
	/**
	 * 设置：收费自定义
	 */
	public void setOwnFeeDesc(String ownFeeDesc) {
		this.ownFeeDesc = ownFeeDesc;
	}
	/**
	 * 获取：收费自定义
	 */
	public String getOwnFeeDesc() {
		return ownFeeDesc;
	}
	/**
	 * 设置：频道名称
	 */
	public void setChannelName(String channelName) {
		this.channelName = channelName;
	}
	/**
	 * 获取：频道名称
	 */
	public String getChannelName() {
		return channelName;
	}
	/**
	 * 设置：来源 1:我要学习。2:我要发布
	 */
	public void setSourceType(Integer sourceType) {
		this.sourceType = sourceType;
	}
	/**
	 * 获取：来源 1:我要学习。2:我要发布
	 */
	public Integer getSourceType() {
		return sourceType;
	}

	@Override
	public String toString() {
		return "EntityPublishEntity{" +
				"id=" + id +
				", userName='" + userName + '\'' +
				", userId='" + userId + '\'' +
				", resDes='" + resDes + '\'' +
				", resType=" + resType +
				", createTime=" + createTime +
				", category='" + category + '\'' +
				", keywords='" + keywords + '\'' +
				", feeType=" + feeType +
				", ownFeeDesc='" + ownFeeDesc + '\'' +
				", channelName='" + channelName + '\'' +
				", sourceType=" + sourceType +
				'}';
	}
}
