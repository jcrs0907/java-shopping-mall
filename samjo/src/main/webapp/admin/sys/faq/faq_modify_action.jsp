<%@page import="web.data.dao.FaqDAO"%>
<%@page import="web.data.dto.FaqDTO"%>   
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");



int num = Integer.parseInt(request.getParameter("changeNo"));
String title = request.getParameter("changeTitle");
String content = request.getParameter("changeContent");
String type =  request.getParameter("changeType");

 FaqDTO faq = new FaqDTO();
faq.setfType(type);
faq.setfTitle(title);
faq.setfContent(content);
faq.setfNo(num);
FaqDAO.getDAO().updateFaq(faq); 

out.println("<script type='text/javascript'>");
out.println("location.href='"+request.getContextPath()+"/admin/admin_page.jsp?group=faq&work=faq_manager'");
out.println("</script>");
%>