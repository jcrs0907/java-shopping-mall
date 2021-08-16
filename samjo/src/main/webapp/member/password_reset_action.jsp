<%@page import="web.data.dao.MemberDAO"%>
<%@page import="web.util.Utility"%>
<%@page import="web.data.dto.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/security/wrong_access.jspf" %>

<%
	MemberDTO member=(MemberDTO)session.getAttribute("member");
	String passwd=Utility.encrypt(request.getParameter("memPw"));
	
	// 테이블에 변경내용 저장
	MemberDAO.getDAO().updatePasswd(member.getId(), passwd);

	
	out.println("<script type='text/javascript'>");
	out.println("location.href='"+request.getContextPath()+"/index.jsp?workgroup=member&work=find_password_complete'");
	out.println("</script>");
%>