<%@page import="web.data.dao.MemberDAO"%>
<%@page import="web.data.dto.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/security/wrong_access.jspf" %>

<%
	String id=request.getParameter("memberId");
	MemberDTO member=MemberDAO.getDAO().selectIdMember(id);
	
	if(member==null){
		session.setAttribute("message", "*입력하신 ID에 대한 회원정보를 찾을 수 없습니다.");
		out.println("<script type='text/javascript'>");
		out.println("location.href='"+request.getContextPath()+"/index.jsp?workgroup=member&work=find_password'");
		out.println("</script>");
		return;
	}
	
	session.setAttribute("member", member);
	
	out.println("<script type='text/javascript'>");
	out.println("location.href='"+request.getContextPath()+"/index.jsp?workgroup=member&work=user_certification'");
	out.println("</script>");
%>