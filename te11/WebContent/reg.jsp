<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
<form action="">
	아이디 : <input type="text" id="id"/><span id="rst"></span><br/>
	비번 : <input type="password" id="pass"/>
</form>
<script>
	$("#id").blur(function() {
		$.ajax({
			method : "GET",
			url : "chk.jsp",
			dataType : "text",
			data : { //파라미터 전달
				id : $('#id').val()
			}
		}).success(function(msg) { // 수행하고난 다음 .done, 성공하고 난 다음 .success
			$("#rst").html("<b>"+msg+"</b>");
		})
	});
</script>
