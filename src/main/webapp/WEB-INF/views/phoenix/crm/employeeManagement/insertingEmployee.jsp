<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>직원 등록</title>
</head>
<body>
	
	<h1>직원 등록 페이지</h1>
	
	<form action="/phoenix/crm/employeeManagement/insertingEmployee" method="POST">
		<table border="1">
			<tr>
				<td>* 직급선택</td>
				<td><input type="text" name="LevelName" /></td>
			</tr>
			<tr>
				<td>* 직원명</td>
				<td><input type="text" name="EmployeeName" /></td>
			</tr>
			<tr>
				<td>* 비밀번호</td>
				<td><input type="password" name="EmployeePw" /></td>
			</tr>
			<tr>
				<td>생일</td>
				<td>
					<select>
						<option>2016년</option>
						<option>2015년</option>
						<option>2014년</option>
						<option>2013년</option>
						<option>2012년</option>
						<option>2011년</option>
						<option>2010년</option>
						<option>2009년</option>
						<option>2008년</option>
						<option>2007년</option>
						<option>2006년</option>
						<option>2005년</option>
						<option>2004년</option>
						<option>2003년</option>
						<option>2002년</option>
						<option>2001년</option>
						<option>2000년</option>
						<option>1999년</option>
						<option>1998년</option>
						<option>1997년</option>
						<option>1996년</option>
						<option>1995년</option>
						<option>1994년</option>
						<option>1993년</option>
						<option>1992년</option>
						<option>1991년</option>
						<option>1990년</option>
						<option>1989년</option>
						<option>1988년</option>
						<option>1987년</option>
						<option>1986년</option>
						<option>1985년</option>
						<option>1984년</option>
						<option>1983년</option>
						<option>1982년</option>
						<option>1981년</option>
						<option>1980년</option>
						<option>1979년</option>
						<option>1978년</option>
						<option>1977년</option>
					</select>
					<select>
						<option>1월</option>
						<option>2월</option>
						<option>3월</option>
						<option>4월</option>
						<option>5월</option>
						<option>6월</option>
						<option>7월</option>
						<option>8월</option>
						<option>9월</option>
						<option>10월</option>
						<option>11월</option>
						<option>12월</option>
					</select>
					<select>
						<option>1일</option>
						<option>2일</option>
						<option>3일</option>
						<option>4일</option>
						<option>5일</option>
						<option>6일</option>
						<option>7일</option>
						<option>8일</option>
						<option>9일</option>
						<option>10일</option>
						<option>11일</option>
						<option>12일</option>
						<option>13일</option>
						<option>14일</option>
						<option>15일</option>
						<option>16일</option>
						<option>17일</option>
						<option>18일</option>
						<option>19일</option>
						<option>20일</option>
						<option>21일</option>
						<option>22일</option>
						<option>23일</option>
						<option>24일</option>
						<option>25일</option>
						<option>26일</option>
						<option>27일</option>
						<option>28일</option>
						<option>29일</option>
						<option>30일</option>
						<option>31일</option>
					</select>
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
				<td><input type="text" name="Addr" /></td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td><input type="text" name="Num1" /><!-- -<input type="text" name="Num2" />-<input type="text" name="Num3" /> --></td>
			</tr>
			<tr>
				<td>핸드폰번호</td>
				<td><input type="text" name="CellNum1" /><!-- -<input type="text" name="CellNum2" />-<input type="text" name="CellNum3" /> --></td>
			</tr>
			<tr>
				<td>* 입사일</td>
				<td><input type="text" name="JoinDate" />ex) 20160801</td>
			</tr>
			<tr>
				<td>메모</td>
				<td><textarea rows="20" cols="50"></textarea></td>
			</tr>
		</table>
		<button>등록</button>
	</form>
	
</body>
</html>