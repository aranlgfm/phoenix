package com.cafe24.phoenixooo.crm.employeeManagement.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cafe24.phoenixooo.crm.employeeManagement.Model.Employee;
import com.cafe24.phoenixooo.crm.employeeManagement.Model.PageHelper;
import com.cafe24.phoenixooo.crm.employeeManagement.Repository.EmployeeDao;

@Service
public class EmployeeServiceImpl implements EmployeeService{
	private final int LINE_PER_PAGE = 10;
	
	@Autowired
	private EmployeeDao employeeDao;

	/**
	 * (Service) 직원 입력
	 */
	@Override
	public int insertEmployee(Employee employee) {
		return employeeDao.insertEmployee(employee);
	}
	
	/**
	 * (Service) 마지막 페이지 구하기
	 */
	@Override
	public int getLastPage() {
		return (int)(Math.ceil((double)employeeDao.selectTotalCount()/LINE_PER_PAGE));
	}

	/**
	 * (Service) 리스트 보기
	 */
	@Override
	public List<Employee> getEmployeeList(int page, String word) {
		PageHelper pageHelper = new PageHelper(page, LINE_PER_PAGE);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("pageHelper", pageHelper);
		map.put("word", word);
		return employeeDao.selectEmployeeList(map);
	}

	/**
	 * (Service) 직원 상세보기
	 */
	@Override
	public Employee employeeDetail(Employee employee) {
		return employeeDao.employeeDetail(employee);
	}

	/**
	 * (Service) 직원 수정
	 */
	@Override
	public int updateEmployee(Employee employee) {
		return employeeDao.updateEmployee(employee);
	}

	/**
	 * (Service) 직원 삭제
	 */
	@Override
	public int deleteEmployee(Employee employee) {
		return employeeDao.deleteEmployee(employee);
	}
}
