<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
<style>
#son{backgroung-color:#ededed;}
.bt3{
	color:#ededed;
	background-color: #abcdef;
}
</style>
<input type="button" value="열기" id="bt"/>
<input type="button" value="열기" id="bt2"/>
<input type="button" value="가나다" class="bt3"/>
<div id="son">
	안녕하세요!!
</div>
<div id="kong" style="display:none">
	ㅋㅋㅋㅋ이건 있는지 모르겠지
</div>
<script>
		$("#bt").click(function(){
			$("#kong").attr("style","display:;");
			$("#son").text("hello");
		});
		$("#bt").mouseover(function(){
			$("#kong").attr("style","display:none");
		});
		$("#bt2").mouseover(function(){
			$("#son").append("bt2 event<br/>");
		});
</script>