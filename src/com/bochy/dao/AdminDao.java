package com.bochy.dao;

import java.util.List;

import com.bochy.entity.Admin;

     // ��ѯ���޸�������
public interface AdminDao {
 
	public int update(Admin admin);
    public List<Admin>  searchAdminById(int id);
    public List<Admin> searchAdminAll();
    public List<Admin> searchAdminByPage(int page);

}
