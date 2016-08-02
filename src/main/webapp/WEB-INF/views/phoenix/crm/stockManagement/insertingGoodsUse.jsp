<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

<!-- select 태그 부분 동적 쿼리로 처리해야 하는데... -->
	<form action="/phoenix/crm/form/insertGoodsUse" method="post">
		<table>
			<tr>
				<td>
					거래처
				</td>
				<td>
					<select>
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
					<select>
						<option value="샴푸">샴푸</option>
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
					<select>
						<option value="조엘">조엘</option>
						<option value="앤디">앤디</option>
						<option value="토마스">토마스</option>
					</select>
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