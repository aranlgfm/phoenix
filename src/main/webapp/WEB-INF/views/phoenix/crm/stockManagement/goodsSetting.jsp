<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="/webjars/bootstrap/3.3.6/css/bootstrap.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<c:import url="stockManagement.jsp"></c:import>
	
	<div id="all">
		<hr>
		<a class="btn btn-primary" href="stockManagementSetting">�ŷ�ó ����</a>
		<a class="btn btn-primary" href="goodsSetting">�̿��ǰ ����</a>
		<br><br>
		<form action="/phoenix/crm/form/insertingGoods" method="get">
			<input class="btn btn-default tag" type="submit" value="�̿��ǰ �������">
		</form>	
		<br>
				<table class="table table-hover">
					<tr class="textCenter">
						<th>
							�ŷ�ó��
						</th>
						<th>
							��ǰ��
						</th>
						<th>
							���Դܰ�
						</th>
						<th>
							�ǸŴܰ�
						</th>
					</tr>
					<c:forEach var="list" items="${goodsSetting}">
						<tr class="textCenter">
		 					<td>
		 						${list.accountName}
		 					</td>		
							<td>
								${list.goodsName}
							</td> 			
							<td>
								${list.butingGoodsUnitWon}
							</td> 
							<td>
								${list.saleGoodsUnitWon}
							</td> 	
						</tr>
					</c:forEach>
		</table>
		
	</div>	
</body>
</html>