package com.stuman.dao;

import java.util.List;

import com.stuman.domain.Admin;

public interface AdminDAO {

	List getAdmin();
	
	boolean deleteAdminByID(String id);
	boolean updateAdmin(Admin admin);
	boolean saveAdmin(Admin admin);
	
	Admin getAdminByID(String id);
}
