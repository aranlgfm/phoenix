<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>insertingGoods</title>
</head>
<body>
	
	<form action="/phoenix/crm/process/insertGoods" method="post">
			<table>
		
				
				<tr>
					<td>
						�ŷ�ó����
					</td>
					<td>					 
							<input type="text" name="accountCode">
							<!--
							<SELECT NAME=accountCode SIZE=1> 
					            <OPTION VALUE=1>�ϳ�</OPTION> 
					            <OPTION VALUE=2>��</OPTION> 
					            <OPTION VALUE=3 SELECTED>�ٺ�</OPTION> 
					      	</SELECT> 
					      	-->  
				      	
					</td>
				</tr>
				<tr>
					<td>
						��ǰ��
					</td>
					<td>
						<input type="text" name="goodsName">
					</td>
				</tr>
				<tr>
					<td>
						���԰�
					</td>
					<td>
						<input type="text" name="butingGoodsUnitWon">��
					</td>
				</tr>
				<tr>
					<td>
						�ǸŰ�
					</td>
					<td>
						<input type="text" name="saleGoodsUnitWon">��
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
						<textarea name="goodsMemo" cols="150" rows="5"></textarea>
					</td>
				</tr>
				<tr>
					<td>
						<input type="submit" value="���">
					</td>
				</tr>
			</table>
		</form>
</body>
</html>