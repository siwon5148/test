<%@ page language="java" contentType="text/plain; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%--text/plain 단순문자열 --%>
<%
	String id = request.getParameter("id");
	String rst;	
	if(id.contains("GM")|| id.contains("gm")){
		rst="아이디에 gm을 사용할수 없습니다.";
	}else{
		rst=id+"는 사용가능합니다.";
	}
%>
<%=rst%>