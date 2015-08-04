<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<script type="text/javascript">
	function opens(){
		var kong = document.getElementById("kong");
		var son = document.getElementById("son");
		var bt = document.getElementById("bt");
		if(kong.style.display=='none'){
			kong.style.display='';
			son.innerHTML = "hello";
			bt.setAttribute("value","닫기");
		}else{
			kong.style.display='none'
			son.innerHTML="안녕하세요!!";
			bt.setAttribute("value", "열기");
		}
	}
</script>
<input type="button" value="열기" onclick="opens()" id="bt"/>
<div id="son">
	안녕하세요!!
</div>
<div id="kong" style="display:none">
	ㅋㅋㅋㅋ이건 있는지 모르겠지
</div>