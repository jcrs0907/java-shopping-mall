<%@page import="web.data.dao.FaqDAO"%>
<%@page import="web.data.dto.FaqDTO"%>   
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
int fNo = Integer.parseInt(request.getParameter("fNo"));
String filterType = request.getParameter("filterType");


System.out.println(filterType);
FaqDAO.getDAO().deleteFaq(fNo);

out.println("<script type='text/javascript'>");
out.println("location.href='"+request.getContextPath()+"/admin/admin_page.jsp?group=faq&work=faq_manager&filterType="+filterType+"'");
out.println("</script>");
%>