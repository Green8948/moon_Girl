package com.bochy.dao;
//12  23��value  id
import java.util.List;

import com.bochy.entity.Product;
import com.bochy.util.DbUtil;

//dao����ž���Ĳ����ࣺ�����ݿ����ɾ���
public class ProductDao {
	private DbUtil dbutil=new DbUtil();
	public int add(Product product){
		String sql="insert into product(name,categoryid,baseprice,marketprice,sellprice,comment,sexrequest,filename,description)values(?,?,?,?,?,?,?,?,?)"; //valuesû��
		int num=dbutil.executeUpdate(sql, product.getName(),product.getCategoryid(),product.getBaseprice(),product.getMarketprice(),product.getSellprice(),product.getComment(),product.getSexrequest(),product.getFilename(),product.getDescription());
		return num;
	}
	public int delete(int id){
		String sql="delete from product where id=?";
		int num=dbutil.executeUpdate(sql, id);
		return num;
	}      
	public int update(Product product){
		String sql="update product set name=?,categoryid=?,baseprice=?,marketprice=?,sellprice=?,comment=?,sexrequest=?,filename=?,description=?where id=?";
		int num=dbutil.executeUpdate(sql, product.getName(),product.getCategoryid(),product.getBaseprice(),product.getMarketprice(),product.getSellprice(),product.getComment(),product.getSexrequest(),product.getFilename(),product.getDescription(),product.getId());
	    return num;    //product.getId();
	}
	public List<Product> findProductById(int id){
		String sql="select * from product where id=?";  //product
		List<Product> list=dbutil.executeQuery(sql, id);
		return list;
	}
	public List<Product> findProductAll(){
		String sql="select * from product";
		List<Product> list=dbutil.executeQuery(sql);  // ûobj
		return list;
	}
	public List<Product> findProductByPage(int page){
		int index=(page-1)*5;
		String sql="select * from product limit ?,5";
		List<Product> list=dbutil.executeQuery(sql,index);
		return list;
	}
	
	
	
}
