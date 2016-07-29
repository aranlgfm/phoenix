package com.cafe24.phoenixooo.community.Repository;

public class DaoHelper {
	protected final String USERCODE = "COM_USER_";
	protected final String SHOPCODE = "CRM_SHOP_";
	protected final int SEACHRESULTLIMITNUMBER = 5;
	
	public int getSEACHRESULTLIMITNUMBER() {
		return SEACHRESULTLIMITNUMBER;
	}

	public String getSHOPCODE() {
		return SHOPCODE;
	}

	public String getUSERCODE() {
		return USERCODE;
	}
	
}
