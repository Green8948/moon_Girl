package com.bochy.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import com.bochy.entity.Admin;
import com.bochy.entity.Category;
import com.bochy.entity.Customer;
import com.bochy.entity.Image;
import com.bochy.entity.Order;
import com.bochy.entity.Product;

//util包里放工具类：封装了工具的类  列如：数据库连接与操作
public class DbUtil {
	public Connection getConnection()throws ClassNotFoundException, SQLException{
			Connection conn=null;
		 
	 	try {
				Class.forName("com.mysql.jdbc.Driver");
				conn=DriverManager.getConnection
				("jdbc:mysql://localhost:3306/database119", "root", "3119");
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
          return conn;
      }
	
	
	public       int            executeUpdate(String sql,Object...   obj){
	    int   num=0;
	    Connection          conn=null;
	    PreparedStatement  pstat=null;
	    try {
			 conn=getConnection();
			 pstat=conn.prepareStatement(sql);
//			 String  sql="insert  into   tb_new (title,author,content)  values(?,?,?)";
			 for (int i = 0; i < obj.length; i++) {
				 pstat.setObject((i+1), obj[i]);
			 }
			 num=pstat.executeUpdate();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			  close(null,pstat,conn);
		}
	    return  num;
}
	public List<Product> executeQuery(String sql,Object...obj){
		List<Product> list=new ArrayList<Product>();
		Connection          conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
	    try {
	    	conn=getConnection();
			ps=conn.prepareStatement(sql);
			for (int i = 0; i < obj.length; i++) {
				ps.setObject(i+1,obj[i]);
			}
			rs=ps.executeQuery();
			while(rs.next()){
				 Integer id=(Integer)rs.getObject("id");
				 String  name=(String) rs.getObject("name");
				 String  filename=(String) rs.getObject("filename");
				 String  sellprice=(String) rs.getObject("sellprice");
			     String  description=(String) rs.getObject("description");
			     String  baseprice=(String)rs.getObject("baseprice");
			     String  marketprice=(String)rs.getObject("marketprice") ;
			     String  comment=(String)rs.getObject("comment") ;
			     String  categoryid=(String)rs.getObject("categoryid") ;
			     String  sexrequest=(String)rs.getObject("sexrequest");
	                     
			                           
			    
			     
			     Product product=new Product();
			     product.setId(id);
			     product.setName(name);
			     product.setFilename(filename);
			     product.setSellprice(sellprice);
			     product.setDescription(description);
			     product.setBaseprice(baseprice);
			     product.setMarketprice(marketprice);
			     product.setComment(comment);
			     product.setCategoryid(categoryid);
			     product.setSexrequest(sexrequest);
			     list.add(product);
			}
			
			
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			close(rs,ps,conn);
		}
	return list;
}

	
	public       List<Image>     executeQueryImage(String sql,Object...object ){
	    List<Image>   list=new  ArrayList<Image>();
	    Connection   conn=null;
	    PreparedStatement   pstat=null;
	    ResultSet     re=null;
   	    try {
			conn=getConnection();
			pstat=conn.prepareStatement(sql);
			for (int i = 0; i < object.length; i++) {
				     pstat.setObject((i+1), object[i]);
			}
			re=pstat.executeQuery();
			while(re.next()){
				   String  fileName=(String)re.getObject("fileName");
				   Image   image=new Image();
				   image.setFileName(fileName);
			       list.add(image);	   
			}
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			close(re, pstat, conn);
		}
	    return  list;
     }
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	public List<Category> executeQueryCategory(String sql, Object...obj) {
		List<Category> list=new ArrayList<Category>();
		Connection   conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
	    try {
	    	conn=getConnection();
			ps=conn.prepareStatement(sql);
			for (int i=0; i <obj.length; i++) {
				ps.setObject(i+1,obj[i]);
			}
			rs=ps.executeQuery();
			while(rs.next()){
				 Integer id=(Integer)rs.getObject("id");
				 String  name=(String) rs.getObject("name");
			     Integer  level=(Integer) rs.getObject("level");
			     Integer  pid=(Integer) rs.getObject("pid");
			     Timestamp categoryTime=(Timestamp) rs.getObject("categoryTime");
			
			     Category category=new Category();
			     category.setId(id);
			     category.setName(name);
			     category.setCategoryTime(categoryTime);
			     category.setLevel(level);
			     category.setPid(pid);
			     list.add(category);
			}
		}catch (ClassNotFoundException e) {
			e.printStackTrace();
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			close(rs,ps,conn);
		}
			return list;
		}

	
	public void close (ResultSet rs,PreparedStatement ps,Connection conn){
		     try {
		         if(rs!=null){
		        	 rs.close();
		         }  
		    	 if(ps!=null){
		    		 ps.close();
		    	 }
		    	 if(conn!=null){
		    		 conn.close();
		    	 }
		         } catch (SQLException e) {
			          e.printStackTrace();
		         }
	 			   
	}
	
	public List<Admin> executeQueryAdmin(String sql,Object...obj ) {
		    List<Admin> list=new ArrayList<Admin>();
		    Connection   conn=null;
			PreparedStatement ps=null;
			ResultSet rs=null;
		    try {
		    	conn=getConnection();
				ps=conn.prepareStatement(sql);
				for (int i = 0; i < obj.length; i++) {
					ps.setObject(i+1,obj[i]);
				}
				rs=ps.executeQuery();
				while(rs.next()){
					 Integer id=(Integer)rs.getObject("id");
					 String  username=(String) rs.getObject("username");
					 String password=(String)rs.getObject("password");
				     Admin admin=new Admin();
				     admin.setId(id);
				     admin.setUsername(username);
				     admin.setPassword(password);
				     list.add(admin);
				}
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			}catch (SQLException e) {
				e.printStackTrace();
			}finally{
				close(rs,ps,conn);
			}
		return list;
		
	}
	public List<Order> executeQueryOrder(String sql, Object...obj) {
		  List<Order> list=new ArrayList<Order>();
		    Connection   conn=null;
			PreparedStatement ps=null;
			ResultSet rs=null;
		    try {
		    	conn=getConnection();
				ps=conn.prepareStatement(sql);
				for (int i = 0; i < obj.length; i++) {
					ps.setObject(i+1,obj[i]);
				}
				rs=ps.executeQuery();
				while(rs.next()){
					 Integer id=(Integer)rs.getObject("id");
					 Integer totalMoney=(Integer)rs.getObject("totalMoney");
					 String  receiver=(String) rs.getObject("receiver");
					 String  address=(String) rs.getObject("address");
					 String  payMethod=(String) rs.getObject("payMethod");
					 String  orderState=(String) rs.getObject("orderState");
					 Timestamp orderTime=(Timestamp) rs.getObject("orderTime");
				     Order order=new Order();
				     order.setId(id);
				     order.setTotalMoney(totalMoney);
				     order.setReceiver(receiver);
				     order.setAddress(address);
				     order.setPayMethod(payMethod);
				     order.setOrderState(orderState);
				     order.setOrderTime(orderTime);
				     list.add(order);
				}
				
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			}catch (SQLException e) {
				e.printStackTrace();
			}finally{
				close(rs,ps,conn);
			}
		return list;
		
	}
	public List<Customer> executeQueryCustomer(String sql, Object...obj) {
		
		List<Customer> list = new ArrayList<Customer>();
		Connection   conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		try {
			 conn=getConnection();
			 ps=conn.prepareStatement(sql);
			 for (int i = 0; i < obj.length; i++) {
				ps.setObject(i+1, obj[i]);
			}
			  rs = ps.executeQuery();
			while(rs.next()){
				Integer id=(Integer) rs.getObject("id");
				String name=(String) rs.getObject("name");
				String password=(String) rs.getObject("password");
				String realname=(String) rs.getObject("realname");
				String address=(String) rs.getObject("address");
				String email=(String) rs.getObject("email");
	     		String tel=(String) rs.getObject("tel");
				Customer customer=new Customer();
				customer.setId(id);
				customer.setName(name);
				customer.setPassword(password);
				customer.setRealname(realname);
				customer.setAddress(address);
			    customer.setEmail(email);
			    customer.setTel(tel);
			    list.add(customer);
				}	  
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}catch (SQLException e) {
			e.printStackTrace();
		}finally{
			close(rs,ps,conn);
		}
		return list;
	}
	
}