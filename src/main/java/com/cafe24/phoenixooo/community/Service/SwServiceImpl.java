package com.cafe24.phoenixooo.community.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cafe24.phoenixooo.community.Model.Sw;
import com.cafe24.phoenixooo.community.Repository.SwDao;

@Service
public class SwServiceImpl implements SwService{
	
	@Autowired
	private SwDao swDao;
	
	//sw 상품 리스트 가져오기
	@Override
	public List<Sw> getSwList() {
		return swDao.selectSwList();
	}
}
