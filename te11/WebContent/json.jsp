<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
JSON : java script Object Notation. 자바 스크립트 내에서 인식할수 있는 객체 표기법 -<br/>
자바스크립트에서만 인식할수있기때문에 범용적이지 않음
<script>
	$(document).ready(function(){
		var mem = {
				name:"홍길동",
				age:12,
				hobby:["술","담배","도박"]
		};
		alert(mem.name);
		alert(mem.age);
		alert(mem.hobby[0]);
		alert(mem.hobby[1]);
		alert(mem.hobby[2]);
	})
</script>