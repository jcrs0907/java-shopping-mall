<%@page import="web.util.Utility"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%-- 잘못된 접근 - GET 방식 --%>
<%@ include file="/security/wrong_access.jspf" %>
<%-- 로그인 유무 확인 --%>
<%@ include file="/security/login_check.jspf" %>

<%
	String inputPasswd=Utility.encrypt(request.getParameter("findPassword"));
	
	// 입력한 비밀번호가 다를 경우
	if(!loginMember.getPasswd().equals(inputPasswd)){
		session.setAttribute("message", "비밀번호를 정확하게 입력해 주세요.");
		out.println("<script type='text/javascript'>");
		out.println("location.href='"+request.getContextPath()+"/index.jsp?workgroup=mypage&work=mypage_password'");
		out.println("</script>");
		return;
	}


	out.println("<script type='text/javascript'>");
	out.println("location.href='"+request.getContextPath()+"/index.jsp?workgroup=mypage&work=mypage_info'");
	out.println("</script>");
%>