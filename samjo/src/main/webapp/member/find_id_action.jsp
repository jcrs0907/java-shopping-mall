<%@page import="web.data.dto.MemberDTO"%>
<%@page import="web.data.dao.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/security/wrong_access.jspf" %>
<%
	String name=request.getParameter("userName");
	MemberDTO member=MemberDAO.getDAO().selectNameMember(name);
	
	
	String message="";
	if(member==null){
		message="회원정보를 찾을 수 없습니다.";
		session.setAttribute("message", message);
		out.println("<script type='text/javascript'>");
		out.println("location.href='"+request.getContextPath()+"/index.jsp?workgroup=member&work=find_id'");
		out.println("</script>");
		return;	
	} else {
		if(request.getParameter("userEmail")!=null){
			if(!member.getEmail().equals(request.getParameter("userEmail"))){
				message="회원정보를 찾을 수 없습니다.";
				session.setAttribute("message", message);
				out.println("<script type='text/javascript'>");
				out.println("location.href='"+request.getContextPath()+"/index.jsp?workgroup=member&work=find_id'");
				out.println("</script>");
				return;		
			}
		} else {
			if(!member.getEmail().equals(request.getParameter("userCellPhoneNum"))){
				message="회원정보를 찾을 수 없습니다.";
				session.setAttribute("message", message);
				out.println("<script type='text/javascript'>");
				out.println("location.href='"+request.getContextPath()+"/index.jsp?workgroup=member&work=find_id'");
				out.println("</script>");
				return;
			}
		}
	}
	
	
	session.setAttribute("memberId", member.getId());
	
	out.println("<script type='text/javascript'>");
	out.println("location.href='"+request.getContextPath()+"/index.jsp?workgroup=member&work=find_id'");
	out.println("</script>");
	
	
	

%>