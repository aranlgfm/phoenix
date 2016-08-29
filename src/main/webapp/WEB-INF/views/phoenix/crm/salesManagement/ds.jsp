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
		
		//ID : paymentDate인 태그를 누르면 달력 나와서 format방식에 해당하는 data-type(String)을 value값으로 준다.

		$('#paymentDate').datepicker({	
			dateFormat : "yymmdd",
	    	prevText: '이전 달',
	    	nextText: '다음 달',
	    	monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
	    	monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
	    	dayNames: ['일', '월', '화', '수', '목', '금', '토'],
	    	dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
	    	dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
	    	showMonthAfterYear: true,
	    	yearSuffix: '년'
		});

	
		$('.Dsearch').click(function(){
			$.ajax({
			    url : "/phoenix/crm/salesManagement/ds",
			    type : "post",
			    data : {paymentDate : $('#paymentDate').val()}, 
			    success: function(data) {
					console.log("성공"+data);
					
					$("#itemDesignName").empty();
					$('#cashTotal').empty();
					$('#cardTotal').empty();
					$('#total').empty();
					$('#chart').empty();
					$('#Rtoday').empty();
					
					var total=0;
					var cashTotal = 0;
					var cardTotal = 0;
					var today = null;
					var totalArray = [];
					var array = null;
					$(data).each(function(index, item){
						array = [];
						console.log(item.itemDesignName);
						$("#itemDesignName").append("<tr><td>"+item.itemDesignName+"</td><td>"+item.totalCash+" / "+item.countCash+"</td><td>"+item.totalCard+" / "+item.countCard+"</td></tr>");
						
						cashTotal = cashTotal+item.totalCash*1;
						cardTotal = cardTotal+item.totalCard*1;
						today = item.paymentDate;
						array.push(item.itemDesignName);
						array.push((item.totalCash*1)+(item.totalCard*1));
						totalArray.push(array);
					});
					total = cashTotal+cardTotal;
					$('#cashTotal').text(cashTotal);
					$('#cardTotal').text(cardTotal);
					$('#Rtoday').text(today)
					$('#total').text(total);
					
					console.log(totalArray);
					var line = totalArray;
					$('#chart').jqplot([line], {
				        title:'일일 매출 그래프',
				        // Provide a custom seriesColors array to override the default colors.
				        seriesColors:['#85802b', '#00749F', '#73C774', '#C7754C', '#17BDB8'],
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
		
		$(".dailySales").addClass("active");
		
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
			 	<li class="monthlySales"><a href="/phoenix/crm/salesManagement/monthlySales">월간총매출</a></li>
			 	<li class="yearlySales"><a href="/phoenix/crm/salesManagement/yearlySales">연간총매출</a></li>
			 	<li class=""><a href="/phoenix/crm/form/salesManagement/dailyEmployeeSales">일간직원매출</a></li>
			 	<li class=""><a href="/phoenix/crm/form/salesManagement/monthlyEmployeeSales">월간직원매출</a></li>
			 	<li class=""><a href="/phoenix/crm/form/salesManagement/yearEmployeeSales">연간직원매출</a></li>
			 	<!-- <li class=""><a href="/phoenix/crm/salesManagement/periodSales">기간별매출통계</a></li> -->	
			</ul>
		</div>
		
		<!-- 매출그래프 -->
		<div id="chart"></div>
		
		<!-- 날짜 선택 -->
		<div>
			<div class="form-group">
				<div class="col-sm-2">
					<input id="paymentDate" class="form-control" type="text" value="">
				</div>
				<div class="col-sm-1">
					<input class="Dsearch form-control" type="button" value="검색">
				</div>
			</div>
		</div>
		<br>
		<br>
		<br>
		<!-- 날짜에 대한 일일매출 리스트 -->
		<div>
			
			<strong><span id="Rtoday"></span>시술 매출 내역</strong>
			
			<table class="table table-striped">
				<thead>
					<tr>
						<th>품목</th>
						<th>현금/(건)</th>
						<th>카드/(건)</th>
					</tr>
				</thead>
				<tbody id="itemDesignName">
					
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