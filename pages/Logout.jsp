<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*, java.util.*"%>

<%
	session.removeAttribute("acc");
	response.sendRedirect("Login.jsp") ;
%>