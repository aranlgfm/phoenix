package com.cafe24.phoenixooo.community.cRepository;

import java.lang.reflect.Field;

public class CHA_DbHelper {
	//#{}
	public void insert(Object obj){
		Field[] field = obj.getClass().getDeclaredFields();
		for(int i=0; i<field.length; i++){
			if(i != 0){
				System.out.println(",#{"+field[i].getName()+"}");
			}else{
				System.out.println("#{"+field[i].getName()+"}");
			}
		}
	}
	
	public static void main(String[] args) {
		CHA_DbHelper h = new CHA_DbHelper();
		//h.insert();
	}
}


