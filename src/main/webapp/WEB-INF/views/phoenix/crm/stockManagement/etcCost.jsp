<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>etcCostLIst</title>
</head>
<!-- 
	1.��Ÿ ���� ����
	2.��Ÿ ���� ���� �˻� =>�˻��� ���߿�
	3.��Ÿ ���� ���� ���
 -->
 <!-- �������̿��� -->
<body>
	<div>
		<!-- ���� -->
		<table>
			<tr>
				<td>
					<input type="button" value="�˻�">
					<input type="button" value="������">
				</td>
			</tr>
		</table>
	</div>

	<form action="/phoenixooo/crm/form/etcCostList" method="post">
		<h1>������</h1>
		<!-- ������ -->
		<table>
			<tr>
				<td>������</td>
				<!-- �޷� date type -->
				<td><input class="" type="date" name=""></td>
			</tr>
		</table>
			<table>
			<tr>
				<td>�����׸�</td>
				<td>
					<SELECT NAME= SIZE=1>
				        <OPTION VALUE=1>1�� �����Դϴ�.</OPTION>
				        <OPTION VALUE=2>2�� �����Դϴ�.</OPTION>
				        <OPTION VALUE=3>3�� �����Դϴ�.</OPTION>
				        <OPTION VALUE=4>4�� �����Դϴ�.</OPTION>
				    </SELECT>
				</td>
			</tr>
		</table>
			<table>
			<tr>
				<td>�����׸�</td>
				<td>
					<SELECT NAME= SIZE=1>
				        <OPTION VALUE=1>1�� �����Դϴ�.</OPTION>
				        <OPTION VALUE=2>2�� �����Դϴ�.</OPTION>
				        <OPTION VALUE=3>3�� �����Դϴ�.</OPTION>
				        <OPTION VALUE=4>4�� �����Դϴ�.</OPTION>
				    </SELECT>
				</td>
			</tr>
		</table>
			<table>
			<tr>
				<td>����ݾ�</td>
				<td><input class="" type="text" name=""></td>
			</tr>
		</table>
			<table>
			<tr>
				<td>�����</td>
				<td><input class="" type="text" name=""></td>
			</tr>
			</table>
				<table>
				<tr>
					<td>�޸�</td>
					<td><textarea class="" cols="30" rows="10" name=""></textarea></td>
				</tr>
			</table>
			<input class="" type="submit" value="���">
		</form>	
</body>
</html>