<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqPlot/1.0.8/jquery.jqplot.min.css">
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jqPlot/1.0.8/jquery.jqplot.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jqPlot/1.0.8/plugins/jqplot.barRenderer.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jqPlot/1.0.8/plugins/jqplot.canvasAxisLabelRenderer.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jqPlot/1.0.8/plugins/jqplot.canvasAxisTickRenderer.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jqPlot/1.0.8/plugins/jqplot.categoryAxisRenderer.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jqPlot/1.0.8/plugins/jqplot.dateAxisRenderer.min.js"></script>
<script>
	$(document).ready(function($){
		
			
		$('#ySearch').click(function(){
			console.log("클릭")
			$.ajax({
			    url : "/phoenix/crm/salesManagement/ys",
			    type : "post",
			    data : {paymentYear : $('#paymentYear').val()}, 
			    success: function(data) {
					console.log("성공"+data);
					
					$("#Ryear").empty();
					$('#cashTotal').empty();
					$('#cardTotal').empty();
					$('#total').empty();
					$('#chart').empty();
					$('#selectYear').empty();
					
					var total=0;
					var cashTotal = 0;
					var cardTotal = 0;
					var selectYear = null;
					var totalArray = [];
					var array = null;
					$(data).each(function(index, item){
						array = [];
						console.log(item.paymentMonth);	
						$("#Ryear").append("<tr><td>"+item.paymentMonth+"월</td><td>"+item.totalCash+" / "+item.countCash+"</td><td>"+item.totalCard+" / "+item.countCard+"</td></tr>");
						cashTotal = cashTotal+item.totalCash*1;
						cardTotal = cardTotal+item.totalCard*1;
						selectYear = item.paymentYear;
						array.push(item.paymentMonth+"월");
						array.push((item.totalCash*1)+(item.totalCard*1));
						totalArray.push(array);
						
					});
					total = cashTotal+cardTotal;
					$('#cashTotal').text(cashTotal);
					$('#cardTotal').text(cardTotal);
					$('#selectYear').text(selectYear);
					$('#total').text(total);
					
					console.log(totalArray);
					var line = totalArray;
					$('#chart').jqplot([line], {
				        title:'월간 매출 그래프',
				        // Provide a custom seriesColors array to override the default colors.
				        seriesColors:['#85802b', '#00749F', '#73C774', '#C7754C', '#17BDB8', '#85802b', '#00749F', '#73C774', '#C7754C', '#17BDB8', '#85802b', '#00749F', '#73C774', '#C7754C', '#17BDB8', '#85802b', '#00749F', '#73C774', '#C7754C', '#17BDB8','#85802b', '#00749F', '#73C774', '#C7754C', '#17BDB8', '#85802b', '#00749F', '#73C774', '#C7754C', '#17BDB8', '#C7754C'], 
				        seriesDefaults:{
				            renderer:$.jqplot.BarRenderer,
				            rendererOptions: {
				                // Set varyBarColor to tru to use the custom colors on the bars.
				                varyBarColor: true
				            }
				        },
				        axes:{
				            xaxis:{
				                renderer: $.jqplot.CategoryAxisRenderer
				            }
				        }
				    });
					
			    },
			    error:function(request,status,error){
					console.log("실패");
			    }
			}); 
		});
		$('#ySearch').trigger("click");
		
		$('.monthlySales').removeClass("active");
		$('.yearlySales').addClass("active");
		
	});
</script>
<style>
	#all {
			width : 70%;
			margin : auto;
		}
</style>
</head>
<body>
	<!-- CRM 탭 -->
	<c:import url="../crmTemp.jsp"></c:import>
	
	<div id="all">
		<!-- 매출관리 탭 -->
		<div>
			<ul class="nav nav-tabs">
				<li class="dailySales"><a href="/phoenix/crm/salesManagement/ds">일간총매출</a></li>
			 	<li class="monthlySales"><a href="/phoenix/crm/salesManagement/ms">월간총매출</a></li>
			 	<li class="yearlySales"><a href="/phoenix/crm/salesManagement/ys">연간총매출</a></li>
			 	<li class=""><a href="/phoenix/crm/form/salesManagement/dailyEmployeeSales">일간직원매출</a></li>
			 	<li class=""><a href="/phoenix/crm/form/salesManagement/monthlyEmployeeSales">월간직원매출</a></li>
			 	<li class=""><a href="/phoenix/crm/form/salesManagement/yearEmployeeSales">연간직원매출</a></li>
			 	<!-- <li class=""><a href="/phoenix/crm/salesManagement/periodSales">기간별매출통계</a></li> -->	
			</ul>
		</div>
		<br>
		<!-- 매출그래프 -->
		<div id="chart"></div>
		<br>
		
			<div class="col-sm-2">
				<!-- 년간 검색 : 년 -->
				<select id="paymentYear" class="form-control">
					<option value="${paymentYear}">${paymentYear}</option>
					<option value="2016">2016년</option>
					<option value="2015">2015년</option>
					<option value="2014">2014년</option>
					<option value="2013">2013년</option>
					<option value="2012">2012년</option>
					<option value="2011">2011년</option>
					<option value="2010">2010년</option>
					<option value="2009">2009년</option>
					<option value="2008">2008년</option>
					<option value="2007">2007년</option>
					<option value="2006">2006년</option>
				</select>
			</div>
			
			<div class="col-sm-1">
				<input id="ySearch" class="form-control" type="button" value="검색">
			</div>
			
	


		<br>
		<br>
		<br>
		<!-- 날짜에 대한 월간 매출 리스트 -->
		
		<div>
			<strong><span id="selectYear">년</span>시술 매출 내역</strong>
					
			<table class="table table-striped">
				<thead>
					<tr>
						<th>월</th>
						<th>현금/(건)</th>
						<th>카드/(건)</th>
					</tr>
				</thead>
				<tbody id="Ryear">
					
				</tbody>
				<tr>
					<td>총합계</td>
					<td id=cashTotal></td>
					<td id=cardTotal></td>
				</tr>
			</table>
			
			<div class="totalMoney">
				<div class="col-sm-5">최종결산금액</div>
				<div id="total" class="col-sm-7"></div>
			</div>	
		</div>
	</div>		
</body>
</html>