<%@page import="web.data.dao.ReviewDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/security/login_check.jspf" %>
<%
	int reviewNo = Integer.parseInt(request.getParameter("reviewNo"));
	String reviewSubject = request.getParameter("reviewSubject");
	String reviewContext = request.getParameter("reviewContext");
	
	//변경메소드 호출
	ReviewDAO.getDAO().updateReview(reviewNo, reviewContext, reviewSubject);
	
	out.println("<script type='text/javascript'>");
	out.println("location.href='"+request.getContextPath()+"/index.jsp?workgroup=mypage&work=my_review'");
	out.println("</script>");
%>