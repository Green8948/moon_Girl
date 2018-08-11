package com.bochy.dao;
import java.util.List;
import com.bochy.entity.Image;
import com.bochy.util.DbUtil;
public class ImageDAO {
	  private    DbUtil  dbutil=new   DbUtil();
      public    int      add(Image  ig){
    	     String   sql="insert  into  tb_image(fileName,zhanghao) values(?,?)";
    	     int   num=dbutil.executeUpdate(sql, ig.getFileName(),ig.getZhanghao());
    	     return  num;
      }
      public     List<Image>    findAll(){
    	     String  sql="select  *  from   tb_image";
    	     List<Image>   list=dbutil.executeQueryImage(sql);
    	     return list;
      }
}
