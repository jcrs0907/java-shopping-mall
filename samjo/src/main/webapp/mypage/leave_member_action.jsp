<%@page import="web.data.dao.MemberDAO"%>
<%@page import="web.util.Utility"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%-- 잘못된 접근 - GET방식 --%>
<%@ include file="/security/wrong_access.jspf" %>

<%-- 로그인 유무 확인 --%>
<%@ include file="/security/login_check.jspf" %>


<%
	
	String passwd=Utility.encrypt(request.getParameter("memPw"));
	
	if(!passwd.equals(loginMember.getPasswd())){
		session.setAttribute("message", "입력한 비밀번호를 확인해주세요.");
		out.println("<script type='text/javascript'>");
		out.println("location.href='"+request.getContextPath()+"/index.jsp?workgroup=mypage&work=leave_member&status=-1'");
		out.println("</script>");
		return;
	} 
	
	MemberDAO.getDAO().deleteMember(loginMember.getId());
	
	session.setAttribute("name", loginMember.getName());
	session.removeAttribute("loginMember");
	out.println("<script type='text/javascript'>");
	out.println("location.href='"+request.getContextPath()+"/index.jsp?workgroup=mypage&work=leave_finish'");
	out.println("</script>");

%>
