package com.cafe24.phoenixooo.community.Repository;

import java.lang.reflect.Field;

import com.cafe24.phoenixooo.community.Model.UserCustomer;
import com.cafe24.phoenixooo.community.Model.UserDirector;

public class CHA_DbHelper {
	//#{}
	public void insert(Object obj){
		Field[] field = obj.getClass().getDeclaredFields();
		for(int i=0; i<field.length; i++){
		/*	if(i != 0){
				System.out.println(",#{"+field[i].getName()+"}");
			}else{
				System.out.println("#{"+field[i].getName()+"}");
			}*/
			if(i != 0){
				System.out.println(","+field[i].getName());
			}else{
				System.out.println(field[i].getName());
			}
		}
	}

	//SIZE가 다르다.
	
	public static void main(String[] args) {
		CHA_DbHelper h = new CHA_DbHelper();
		UserCustomer d = new UserCustomer();
		h.insert(d);
	}
}


