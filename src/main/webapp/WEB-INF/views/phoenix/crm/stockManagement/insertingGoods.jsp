<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="/webjars/bootstrap/3.3.6/css/bootstrap.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>insertingGoods</title>
</head>
<body>
	<c:import url="stockManagement.jsp"></c:import>
	<div id="all">
	<br>
		<form action="/phoenix/crm/process/insertGoods" method="post">
			<table>
				<tr>
					<td>
						�ŷ�ó����
					</td>
					<td>					 
						<SELECT class="form-control" NAME=accountCode SIZE=1> 
				            <OPTION VALUE=1>�ϳ�</OPTION> 
				            <OPTION VALUE=2>��</OPTION> 
				            <OPTION VALUE=3 SELECTED>�ٺ�</OPTION> 
				      	</SELECT> 
					</td>
				</tr>
				<tr>
					<td>
						��ǰ��
					</td>
					<td>
						<input class="form-control" type="text" name="goodsName">
					</td>
				</tr>
				<tr>
					<td>
						���԰�
					</td>
					<td>
						<input class="form-control" type="text" name="butingGoodsUnitWon" value="��">
					</td>
				</tr>
				<tr>
					<td>
						�ǸŰ�
					</td>
					<td>
						<input class="form-control" type="text" name="saleGoodsUnitWon" value="��">
					</td>
				</tr>
				<!-- <tr>
					<td>
						�ʱ�����(�÷��� ����)
					</td>
					<td>
						<input type="text" name="">��
					</td>
				</tr> -->
				<tr>
					<td>
						�޸�
					</td>
					<td>
						<textarea class="form-control" name="goodsMemo" cols="110" rows="5"></textarea>
					</td>
				</tr>
				<tr>
					<td>
						<input class="form-control" type="submit" value="���">
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>