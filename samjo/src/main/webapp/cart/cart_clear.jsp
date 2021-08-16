<%@page import="web.data.dao.CartDAO"%>
<%@page import="web.data.dto.CartDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("UTF-8");
	String mId=request.getParameter("member_id");
	
	CartDAO.getDAO().clearCartProduct(mId);

	out.println("<script type='text/javascript'>");
	out.println("location.href='"+request.getContextPath()+"/index.jsp?workgroup=cart&work=cart_list';");
	out.println("</script>");	
%>    