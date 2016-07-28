package com.cafe24.phoenixooo.community.Repository;

import java.util.List;

import com.cafe24.phoenixooo.community.Model.Sw;
import com.cafe24.phoenixooo.community.Model.Test;

public interface SwDao {
	public List<Test> selectSw();
	
	//sw 리스트 가져오기
	List<Sw> selectSwList();
}
