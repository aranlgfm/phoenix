<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

<!-- select �±� �κ� ���� ������ ó���ؾ� �ϴµ�... -->
	<form action="/phoenix/crm/form/insertGoodsUse" method="post">
		<table>
			<tr>
				<td>
					�ŷ�ó
				</td>
				<td>
					<select>
						<option value="�Ｚ">�Ｚ</option>
						<option value="LG">LG</option>
						<option value="SK">SK</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>
					�̿��ǰ����
				</td>
				<td>
					<select>
						<option value="��Ǫ">��Ǫ</option>
						<option value="����">����</option>
						<option value="������">������</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>
					�����
				</td>
				<td>
					����
				</td>
			</tr>
			<tr>
				<td>
					������
				</td>
				<td>
					<input type="text" name="useQuantityNumber">
				</td>
			</tr>
			<tr>
				<td>
					�����
				</td>
				<td>
					<input type="text" name="useDate">
				</td>
			</tr>
			<tr>
				<td>
					�������
				</td>
				<td>
					<select>
						<option value="����">����</option>
						<option value="�ص�">�ص�</option>
						<option value="�丶��">�丶��</option>
					</select>
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