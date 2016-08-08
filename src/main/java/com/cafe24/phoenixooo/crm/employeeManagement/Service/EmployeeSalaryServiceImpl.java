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
	
	public int insertEmployeeSalary(EmployeeSalary employeeSalary) {
		return employeeSalaryDao.insertEmployeeSalary(employeeSalary);
	}

	@Override
	public int getLastPage() {
		return (int)(Math.ceil((double)employeeSalaryDao.selectTotalCount()/LINE_PER_PAGE));
	}

	@Override
	public List<EmployeeSalary> getEmployeeSalaryList(int page, String word) {
		PageHelper pageHelper = new PageHelper(page, LINE_PER_PAGE);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("pageHelper", pageHelper);
		map.put("word", word);
		return employeeSalaryDao.selectEmployeeSalaryList(map);
	}
}
