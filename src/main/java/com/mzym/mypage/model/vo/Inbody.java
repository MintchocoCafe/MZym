package com.mzym.mypage.model.vo;

import java.sql.Date;

public class Inbody {
	
	/**
	 * @author 손수현
	 */
	
	private int userNo;
	private int bodyHeight;
	private int bodyWeight;
	private int badyMetabolism;
	private int bodyFat;
	private Date registDate;
	
	
	/**
	 * @author 김민정
	 */
	private String userName;
	private String status;
	

	public Inbody() {}

	public Inbody(int userNo, int bodyHeight, int bodyWeight, int badyMetabolism, int bodyFat, Date registDate) {
		super();
		this.userNo = userNo;
		this.bodyHeight = bodyHeight;
		this.bodyWeight = bodyWeight;
		this.badyMetabolism = badyMetabolism;
		this.bodyFat = bodyFat;
		this.registDate = registDate;
	}

	public Inbody(int bodyHeight, int bodyWeight, int bodyFat, Date registDate) {
		super();
		this.bodyHeight = bodyHeight;
		this.bodyWeight = bodyWeight;
		this.bodyFat = bodyFat;
		this.registDate = registDate;
	}
	
	public Inbody(int bodyHeight, int bodyWeight, int badyMetabolism, int bodyFat) {
		super();
		this.bodyHeight = bodyHeight;
		this.bodyWeight = bodyWeight;
		this.badyMetabolism = badyMetabolism;
		this.bodyFat = bodyFat;
	}

	public Inbody(String userName, int bodyHeight, int bodyWeight, int badyMetabolism, int bodyFat, String status) {
		super();
		this.userName = userName;
		this.bodyHeight = bodyHeight;
		this.bodyWeight = bodyWeight;
		this.badyMetabolism = badyMetabolism;
		this.bodyFat = bodyFat;
		this.status = status;
	}

	public Inbody(int bodyHeight, int bodyWeight, int badyMetabolism, int bodyFat, Date registDate) {
		super();
		this.bodyHeight = bodyHeight;
		this.bodyWeight = bodyWeight;
		this.badyMetabolism = badyMetabolism;
		this.bodyFat = bodyFat;
		this.registDate = registDate;
	}
	


	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public int getBodyHeight() {
		return bodyHeight;
	}

	public void setBodyHeight(int bodyHeight) {
		this.bodyHeight = bodyHeight;
	}

	public int getBodyWeight() {
		return bodyWeight;
	}

	public void setBodyWeight(int bodyWeight) {
		this.bodyWeight = bodyWeight;
	}

	public int getBadyMetabolism() {
		return badyMetabolism;
	}

	public void setBadyMetabolism(int badyMetabolism) {
		this.badyMetabolism = badyMetabolism;
	}

	public int getBodyFat() {
		return bodyFat;
	}

	public void setBodyFat(int bodyFat) {
		this.bodyFat = bodyFat;
	}

	public Date getRegistDate() {
		return registDate;
	}

	public void setRegistDate(Date registDate) {
		this.registDate = registDate;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "Inbody [userNo=" + userNo + ", bodyHeight=" + bodyHeight + ", bodyWeight=" + bodyWeight
				+ ", badyMetabolism=" + badyMetabolism + ", bodyFat=" + bodyFat + ", registDate=" + registDate
				+ ", userName=" + userName + ", status=" + status + "]";
	}



	
	
	
	
	

}
