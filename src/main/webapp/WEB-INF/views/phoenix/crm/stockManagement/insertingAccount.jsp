<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	여기는 거래처 정보를 입력해서 등록할 수 있는 화면임.
	<br><br>
	
	<form action="/phoenix/crm/process/insertAccount" method="post">
		<table>
			<tr>
				<td>
					거래처명
				</td>
				<td>
					<input type="text" name="accountName">
				</td>
			</tr>
			<tr>
				<td>
					담당자명
				</td>
				<td>
					<input type="text" name="chargerName">
				</td>
			</tr>
			<tr>
				<td>
					핸드폰번호
				</td>
				<td>
					<input type="text" name="cellPhoneNumber">
				</td>
			</tr>
			<tr>
				<td>
					전화번호
				</td>
				<td>
					<input type="text" name="phoneNumber">
				</td>
			</tr>
			<tr>
				<td>
					팩스번호
				</td>
				<td>
					<input type="text" name="faxNumber">
				</td>
			</tr>
			<tr>
				<td>
					메모
				</td>
				<td>
					<textarea name="chargerMemo" cols="150" rows="5"></textarea>
				</td>
			</tr>
			<tr>
				<td>
					<input type="submit" value="등록">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>