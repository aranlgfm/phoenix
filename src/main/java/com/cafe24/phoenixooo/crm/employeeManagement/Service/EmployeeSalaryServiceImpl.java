package com.cafe24.phoenixooo.crm.employeeManagement.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cafe24.phoenixooo.crm.employeeManagement.Model.EmployeeSalary;
import com.cafe24.phoenixooo.crm.employeeManagement.Model.PageHelper;
import com.cafe24.phoenixooo.crm.employeeManagement.Repository.EmployeeSalaryDao;

@Service
public class EmployeeSalaryServiceImpl implements EmployeeSalaryService {
	private final int LINE_PER_PAGE = 10;
	
	@Autowired
	private EmployeeSalaryDao employeeSalaryDao;
	
	/**
	 * (Service) 급여지급 등록
	 */
	@Override
	public int insertEmployeeSalary(EmployeeSalary employeeSalary) {
		return employeeSalaryDao.insertEmployeeSalary(employeeSalary);
	}

	/**
	 * (Service) 마지막 페이지 구하기
	 */
	@Override
	public int getLastPage() {
		return (int)(Math.ceil((double)employeeSalaryDao.selectTotalCount()/LINE_PER_PAGE));
	}

	/**
	 * (Service) 리스트 보기
	 */
	@Override
	public List<EmployeeSalary> getEmployeeSalaryList(int page, String word) {
		PageHelper pageHelper = new PageHelper(page, LINE_PER_PAGE);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("pageHelper", pageHelper);
		map.put("word", word);
		return employeeSalaryDao.selectEmployeeSalaryList(map);
	}

	/**
	 * (Service) 급여지급 삭제
	 */
	@Override
	public int deleteEmployeeSalary(EmployeeSalary employeeSalary) {
		return employeeSalaryDao.deleteEmployeeSalary(employeeSalary);
	}
}
