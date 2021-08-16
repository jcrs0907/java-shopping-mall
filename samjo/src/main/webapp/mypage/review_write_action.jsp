<%@page import="web.data.dao.ReviewDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/security/login_check.jspf" %>
<%
	String memberId = loginMember.getId();
	String productId = request.getParameter("productId");
	String reviewSubject = request.getParameter("reviewSubject");
	String reviewContext = request.getParameter("reviewContext");
	int reviewNo = ReviewDAO.getDAO().selectNextNum();
	
	//테이블 삽입 메소드 호출
	ReviewDAO.getDAO().insertReview(reviewNo, memberId, productId, reviewContext, reviewSubject);
	
	out.println("<script type='text/javascript'>");
	out.println("location.href='"+request.getContextPath()+"/index.jsp?workgroup=mypage&work=my_review'");
	out.println("</script>");
%>