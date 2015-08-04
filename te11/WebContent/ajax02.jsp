<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
<script>
	$(document).ready(function(){
		var flag = false;
		var xsl;
		if(!flag){
			$.ajax({
				method:"GET",
				url:"movies.xsl",
				dataType:"xml",
			}).done(function(msg){
				xsl = msg;
				flag = true;
			});	
		}
		$.ajax({
			method:"GET",
			url:"data02.jsp",
			dataType:"xml",
		}).done(function(msg){
			if(window.ActiveXObject != null){
				$("#rst").html = msg.transformNode(xsl);
			}else {
				var trans = new XSLTProcessor();
				trans.importStylesheet(xsl);
				var frg = trans.transformToFragment(msg, document);	
				$("#rst").html(frg);
			}
		});
	});
</script>
<h2>영화 인기목록</h2>
<hr/>
<div id="rst"></div>
