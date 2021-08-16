<%@page import="java.util.ArrayList"%>
<%@page import="web.data.dao.CartDAO"%>
<%@page import="web.data.dto.CartDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <% 
	request.setCharacterEncoding("UTF-8");
	String mId=request.getParameter("member_id");
	String[] pId = request.getParameterValues("product_id");
	
	try {
		for (int i = 0; i < pId.length; i++) {
			CartDAO.getDAO().deleteCartProduct(mId, pId[i]);	
		}
	}
	catch(IndexOutOfBoundsException e) {
		System.out.println(e);
	}

	
	out.println("<script type='text/javascript'>");
	out.println("location.href='"+request.getContextPath()+"/index.jsp?workgroup=cart&work=cart_list';");
	out.println("</script>");	
%>   