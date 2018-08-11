package com.bochy.entity;
//entity包里放实体类  例如：News ，User
public class Product {
	private Integer id;
	private String  name;
	private String  categoryid;
	private String  baseprice;
	private String  marketprice;
	private String  sellprice;
	private String  comment;
	private String  sexrequest;
	private String  filename;
	private String  description;
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
	public String getCategoryid() {
		return categoryid;
	}
	public void setCategoryid(String categoryid) {
		this.categoryid = categoryid;
	}
	public String getBaseprice() {
		return baseprice;
	}
	public void setBaseprice(String baseprice) {
		this.baseprice = baseprice;
	}
	public String getMarketprice() {
		return marketprice;
	}
	public void setMarketprice(String marketprice) {
		this.marketprice = marketprice;
	}
	public String getSellprice() {
		return sellprice;
	}
	public void setSellprice(String sellprice) {
		this.sellprice = sellprice;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public String getSexrequest() {
		return sexrequest;
	}
	public void setSexrequest(String sexrequest) {
		this.sexrequest = sexrequest;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
}
