<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
<div id="rst"></div>
<input type="button" id="bt1" /><hr/>
<input type="text" id="id"/><div id="idchk"></div><br/>
<input type="password" id="pass"/>
<script>
	$("#bt1").click(function() {
		$.ajax({
			method : "GET",
			url : "data01.jsp",
			dataType : "text",
			data : { //파라미터 전달
				name : "John",
				location : "Boston"
			}
		}).success(function(msg) { // 수행하고난 다음 .done, 성공하고 난 다음 .success
			alert("Data Saved: " + msg);
			$("#rst").html("<b>"+msg+"</b>");
		})
	});
</script>
