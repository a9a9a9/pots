
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	String naver_name = request.getParameter("name");
	String naver_email = request.getParameter("email");
	
    session.setAttribute("name", naver_name);
    session.setAttribute("email", naver_email);
    
	response.sendRedirect("CallBack");
	%>