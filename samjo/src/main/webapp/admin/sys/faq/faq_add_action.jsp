<%@page import="web.data.dao.FaqDAO"%>
<%@page import="web.data.dto.FaqDTO"%>   
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%

String title = request.getParameter("title");
String content = request.getParameter("content");
String type =  request.getParameter("typeSelect");
int num = FaqDAO.getDAO().selectNextNum();

FaqDTO faq = new FaqDTO();

faq.setfType(type);
faq.setfTitle(title);
faq.setfContent(content);
faq.setfNo(num);
FaqDAO.getDAO().insertFaq(faq);


out.println("<script type='text/javascript'>");
out.println("location.href='"+request.getContextPath()+"/admin/admin_page.jsp?group=faq&work=faq_add'");
out.println("</script>");
%>