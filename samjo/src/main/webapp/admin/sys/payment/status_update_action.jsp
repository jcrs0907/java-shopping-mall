<%@page import="web.data.dao.OrdersDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//전달값이 없으면 에러페이지로 이동
	if(request.getParameter("orderNo").equals("")) {
		out.println("<script type='text/javascript'>");
		out.println("location.href='"+request.getContextPath()+"/admin/admin_page.jsp?group=error&work=error400'");
		out.println("</script>");
		return;
	}
	
	//전달값을 받아 변수에 저장
	int orderNo = Integer.parseInt(request.getParameter("orderNo"));
	
	if(request.getParameter("orderStatus") != "") {//orderStatus 변경인 경우
		int orderStatus = Integer.parseInt(request.getParameter("orderStatus"));
		int orderBoardStatus = 9;
		OrdersDAO.getDAO().updateOrderStatus(orderNo, orderStatus, orderBoardStatus);
	
	} else if(request.getParameter("orderBoardStatus") != "") {//orderBoardStatus 변경인 경우
		int orderBoardStatus = Integer.parseInt(request.getParameter("orderBoardStatus"));
		int orderStatus = 9;
		OrdersDAO.getDAO().updateOrderStatus(orderNo, orderStatus, orderBoardStatus);
	}
	
	//페이지 이동
	out.println("<script type='text/javascript'>");
	out.println("location.href='"+request.getContextPath()+"/admin/admin_page.jsp?group=payment&work=payment1'");
	out.println("</script>");
%>