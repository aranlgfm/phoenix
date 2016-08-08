<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%-- <%@ page import="com.cafe24.phoenixooo.crm.employeeManagement.Model.Employee" %> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>직원 수정</title>
</head>
<body>
<%-- <%
	Employee employee = (Employee)request.getAttribute("employee");
System.out.print(employee);
%>
 --%>
	<h1>직원 수정</h1>
	
	<form action="/phoenix/crm/employeeManagement/updateEmployee" method="POST">
	<input type="hidden" name="employeeCode" value="${employee.employeeCode}" />
		<table border="1">
			<tr>
				<td>* 직급선택</td>
				<td><input type="text" name="EmployeeLevelName" /></td>
			</tr>
			<tr>
				<td>직원명</td>
				<td><input type="text" name="EmployeeName" value="${employee.employeeName}" readonly="readonly"/></td>
			</tr>
			<tr>
				<td>* 비밀번호</td>
				<td><input type="password" name="EmployeePw" /></td>
			</tr>
			<tr>
				<td>생일</td>
				<td>
					<input type="text" name="EmployeeBirthDate" value="${employee.employeeBirthDate}" readonly="readonly"/>
					<!-- <input type="checkbox" name="Gregorian" value="양" />
					<input type="checkbox" name="Lunar" value="음" /> -->
				</td>
			</tr>
			<!-- <tr>
				<td>우편번호</td>
				<td><input type="text" name="ZipCode" /></td>
			</tr> -->
			<tr>
				<td>주소</td>
				<td><input type="text" name="EmployeeAddr" /></td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td><input type="text" name="EmployeePhoneNo" /></td>
			</tr>
			<tr>
				<td>핸드폰번호</td>
				<td><input type="text" name="EmployeeCellPhoneNo" /></td>
			</tr>
			<tr>
				<td>입사일</td>
				<td><input type="text" name="EmployeeJoinDate" value="${employee.employeeJoinDate}" readonly="readonly"/></td>
			</tr>
			<tr>
				<td>메모</td>
				<td><textarea rows="20" cols="50" name="EmployeeMemo"></textarea></td>
			</tr>
		</table>
		<button>수정</button>
	</form>
</body>
</html>