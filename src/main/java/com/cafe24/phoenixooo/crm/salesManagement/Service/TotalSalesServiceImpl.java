package com.cafe24.phoenixooo.crm.salesManagement.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cafe24.phoenixooo.crm.salesManagement.Model.DaySalesInfo;
import com.cafe24.phoenixooo.crm.salesManagement.Repository.TotalSalesDao;

@Service
public class TotalSalesServiceImpl implements TotalSalesService {

	@Autowired
	private TotalSalesDao totalSalesDao;


	//일간총매출 처리중
	@Override
	public List<DaySalesInfo> SelectDailySales(String paymentDate) {
		List<DaySalesInfo> list = totalSalesDao.SelectDailySales(paymentDate); 
		System.out.println("파뿌리확인"+list);
		
		for(int i=0; i<list.size()-1; i++)
		{	
			if(list.get(i).getItemDesignName().equals(list.get(i+1).getItemDesignName()))
			{
				System.out.println("for문속 if문 아이디 같은때 실행됨");	
				list.get(i).setTotalCash(list.get(i+1).getTotalCash());
				list.get(i).setCountCash(list.get(i+1).getCountCash());
				list.remove(i+1);
				System.out.println("아이디 같을때 하나지움");
			}
			System.out.println("아이디 틀려서 나오거나 / 같은때 하나 지우고 나옴");
		}
		
		System.out.println("중복아이디 합치고난 후의 리스트 : "+list);
		return 	list;
	}
	
	//월간총매출 처리
	
	@Override
	public List<DaySalesInfo> selectMonthlyList(String Tomonth) {
		
		return totalSalesDao.getMonthlyList(Tomonth);
	}
	
	
}
