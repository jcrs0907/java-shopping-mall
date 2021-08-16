<%@page import="java.util.Arrays"%>
<%@page import="web.data.dto.MemberDTO"%>
<%@page import="web.data.dao.DeliveryDAO"%>
<%@page import="web.data.dao.OrdersDetailDAO"%>
<%@page import="web.data.dao.OrdersDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	if(request.getMethod().equals("GET")) {
		out.println("<script type='text/javascript'>");
		out.println("location.href='"+ request.getContextPath() +"/index.jsp?workgroup=error&work=error400'");
		out.println("</script>");
		return;
	}

	MemberDTO loginMember = (MemberDTO)session.getAttribute("loginMember");
	if(loginMember == null){
		out.println("<script type='text/javascript'>");
		out.println("location.href='"+request.getContextPath()+"/index.jsp?workgroup=error&work=error400'");
		out.println("</script>");
		return;
	}

	
	//ORDERS, ORDERS_DETAIL, DELIVERY테이블에 삽입할 데이터를 전달받아 변수에 저장 
	int orderNo = OrdersDAO.getDAO().selectNextNum();
	int orderDetailNo = 0;
	String senderName = request.getParameter("senderName");
	String senderPhone = request.getParameter("senderPhone");
	String recipientName = request.getParameter("recipientName");
	String recipientPhone = request.getParameter("recipientPhone");
	String zipcode = request.getParameter("zipcode");
	String address1 = request.getParameter("address1");
	String address2 = request.getParameter("address2");
	String orderMessage = request.getParameter("orderMessage");
	String payMethod = request.getParameter("payMethod");
	String memberId = loginMember.getId();
	
	String[] productIdList = null;
	String[] productQuantityList = null;
	String productId = null;
	int productQuantity = 0;

	if(request.getParameterValues("productIdList") != null) {//장바구니에서 전달받은 경우
		productIdList = request.getParameterValues("productIdList");
		productQuantityList = request.getParameterValues("productQuantityList");
		
		//주문정보 삽입메소드 호출
		OrdersDAO.getDAO().insertOrder(orderNo, memberId, payMethod);
		DeliveryDAO.getDAO().insertOrderDetail(orderNo, senderName, senderPhone, recipientName, recipientPhone
				, zipcode, address1, address2, orderMessage);
		for(int i = 0; i < productIdList.length; i++) {
			orderDetailNo = OrdersDetailDAO.getDAO().selectNextNum();
			OrdersDetailDAO.getDAO().insertOrderDetail(orderDetailNo, orderNo, productIdList[i].toString(), Integer.parseInt(productQuantityList[i].toString()));	
		}
		
	} else {//상품페이지에서 전달받은 경우
		orderDetailNo = OrdersDetailDAO.getDAO().selectNextNum();
		productId = request.getParameter("productId");
		productQuantity = Integer.parseInt(request.getParameter("productQuantity"));
		
		//주문정보 삽입메소드 호출
		OrdersDAO.getDAO().insertOrder(orderNo, memberId, payMethod);
		OrdersDetailDAO.getDAO().insertOrderDetail(orderDetailNo, orderNo, productId, productQuantity);
		DeliveryDAO.getDAO().insertOrderDetail(orderNo, senderName, senderPhone, recipientName, recipientPhone
				, zipcode, address1, address2, orderMessage);
	}

	//페이지 이동 - order_confirm.jsp
	out.println("<script type='text/javascript'>");
	out.println("location.href='"+ request.getContextPath() +"/index.jsp?workgroup=order&work=order_confirm'");
	out.println("</script>");
%>