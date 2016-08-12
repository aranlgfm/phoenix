<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true"%>
<!DOCTYPE html>
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
	<script src="<c:url value="/webjars/jquery/3.1.0/jquery.min.js"/>"></script>
</head>

<body>
	<c:import url="businessManagementMain.jsp"></c:import>
	<hr>
	<div>
		<a type="button" class="btn btn-default tag" href="/phoenix/crm/form/procedureItemSetting">시술품목설정</a>
		<a type="button" class="btn btn-default tag" href="/phoenix/crm/form/procedureItemDesignSetting">시술디자인설정</a>
	</div>
	<br>
	<div class="itemregisterCenter">
		<div class="textCenter">
			<div class="divTh">시술품목디자인수정</div>
			
			<form class="form-inline" action="/phoenix/crm/process/modifyProcedureItemDesign" method="post">
				<input type="hidden" name="itemDesignCode" value="${item.itemDesignCode}">
				<table class="table">
					<tr class="textCenter">
						<td class="bgColorGray tdVertical"><div class="tdVertical"><label>시술디자인명</label></div></td>
						<td class="textLeft"><input class="form-control" type="text" name="itemDesignName" value="${item.itemDesignName}"></td>
					</tr>
					<tr>
						<td class="bgColorGray tdVertical"><div class="tdVertical"><label>시술가격</label></div></td>
						<td class="textLeft"><input class="form-control" type="text" name="itemDesignPrice" value="${item.itemDesignPrice}"></td>
					</tr>
				</table>
				<hr>
				<div>
					<input class="btn btn-default tag" type="submit" value="수정">
					<a type="button" class="btn btn-default tag" href="/phoenix/crm/form/procedureItemDesignSetting">취소</a>
				</div>
				<br>
			</form>	
		</div>
	</div>		
</body>
</html>