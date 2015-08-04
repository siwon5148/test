<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="http://code.highcharts.com/highcharts.js"></script>
<script src="http://code.highcharts.com/modules/exporting.js"></script>

<div id="container"
	style="min-width: 310px; height: 400px; margin: 0 auto"></div>
<script>
	$(function() {
		alert("시작");
		$.ajax({
			method : "GET",
			url : "data03.jsp",
			dataType : "xml",
		}).done(function(msg) {
			alert(msg);
		})
	});
</script>
