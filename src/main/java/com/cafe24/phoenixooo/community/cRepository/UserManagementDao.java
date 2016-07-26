package com.cafe24.phoenixooo.community.cRepository;

import com.cafe24.phoenixooo.community.dModel.UserCustomer;

public interface UserManagementDao {
	int insertUser(UserCustomer user);
	String getUserCode();
}
