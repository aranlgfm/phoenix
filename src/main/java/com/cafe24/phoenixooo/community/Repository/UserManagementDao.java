package com.cafe24.phoenixooo.community.Repository;

import com.cafe24.phoenixooo.community.Model.UserCustomer;

public interface UserManagementDao {
	int insertUser(UserCustomer user);
	String getUserCode();
}
