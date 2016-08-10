<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- JQ-PLOT의 CSS를 설정 -->
<link class="include" rel="stylesheet" type="text/css" href="jquery.jqplot.css"/>
<!-- JQ-PLOT의 기본 설정 -->
<link href="css/jquery.jqplot.min.css" rel="stylesheet">
<script>
	var plot;
	var chartData = [[0,0]];
	
	$(document).ready(function(){
		renderChart();
		update();
		
	});
	
	function renderChart(){
		plot = $.jqplot('chart',[chartData],{
			title:'Current User'
			, axes:{
				xaxis:{
					renderer:$.jqplot.DateAxisRenderer
					,tickOptions:{
						formatString:'%m-%d %H:%M::%S'
						, showLabel:false
						, showGridline:false
					}
					, tickInterval:'5 minutes'
				}
			}
		, series:[{
			color:'#5FAB78'
		}]
		,highlighter:{
			show:true,
			sizeAdjust:7.5
		}
		,cursor:{
			show:false
		}
	});
}
	function getChartData(){
		$
	}
	
</script>

<style>
	#confines 
	{
		border-style: solid;
    	border-width: medium;
	}
</style>
<title>기간별 매출 그래프</title>
</head>
<body>
	<div id="graph" style="width:300px; height:300px;"></div>



</body>
</html>