package com.bochy.entity;

import java.sql.Timestamp;

public class Category {
	
	private Integer   id;
	private String    name;
	private Integer   level;
	private Integer   pid;
	private Timestamp  categoryTime;
		public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getLevel() {
		return level;
	}
	public void setLevel(Integer level) {
		this.level = level;
	}
	public Integer getPid() {
		return pid;
	}
	public void setPid(Integer pid) {
		this.pid = pid;
	}
	public Timestamp getCategoryTime() {
		return categoryTime;
	}
	public void setCategoryTime(Timestamp categoryTime) {
		this.categoryTime = categoryTime;
	}
		
}
