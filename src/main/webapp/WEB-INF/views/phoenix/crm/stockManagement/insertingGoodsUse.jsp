<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- select 태그 부분 동적 쿼리로 처리해야 하는데... -->
	<form action="/phoenix/crm/process/insertGoodsUse" method="post">
		<table>
			<tr>
				<td>
					거래처
				</td>
				<td>
					<select name="accountName">
						<option value="삼성">삼성</option>
						<option value="LG">LG</option>
						<option value="SK">SK</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>
					미용용품선택
				</td>
				<td>
					<select name="goodsName">
						<option value="댕기머리린스">댕기머리린스</option>
						<option value="린스">린스</option>
						<option value="에센스">에센스</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>
					총재고량
				</td>
				<td>
					아직
				</td>
			</tr>
			<tr>
				<td>
					사용수량
				</td>
				<td>
					<input type="text" name="useQuantityNumber">
				</td>
			</tr>
			<tr>
				<td>
					사용일
				</td>
				<td>
					<input type="text" name="useDate">
				</td>
			</tr>
			<tr>
				<td>
					사용직원
				</td>
				<td>
					<select name="employeeName">
						<option value="존">존</option>
						<option value="앤디">앤디</option>
						<option value="토마스">토마스</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>
					메모
				</td>
				<td>
					<textarea name="useMemo" cols="150" rows="5" ></textarea>
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