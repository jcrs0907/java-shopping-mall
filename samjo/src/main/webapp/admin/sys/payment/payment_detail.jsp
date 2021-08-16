<%@page import="java.text.DecimalFormat"%>
<%@page import="web.data.dao.ProductDAO"%>
<%@page import="web.data.dto.ProductDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="web.data.dao.OrdersDetailDAO"%>
<%@page import="web.data.dto.OrdersDetailDTO"%>
<%@page import="web.data.dao.OrdersDAO"%>
<%@page import="web.data.dto.OrdersDTO"%>
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

	int orderNo = Integer.parseInt(request.getParameter("orderNo"));
	OrdersDTO order = OrdersDAO.getDAO().selectOrder(orderNo);
	List<OrdersDetailDTO> orderDetailList = OrdersDetailDAO.getDAO().selectOrderDetail(orderNo);
	
	int totalPrice = 0;
%>
<style type="text/css">
table {
	width: 50%;
	margin: 0 auto;
	border: 1px solid black;
	border-collapse: collapse;
	text-align: center;
}

th, td {
	border: 1px solid black;
}

th {
	background: lightgray;
	font-wight: normal;
}
</style>
<body>
	<h3>주문상세</h3>
	<table class="tg">
	<thead>
		<tr>
		    <th class="tg-mxcs">상품아이디</th>
		    <th class="tg-91he">상품이름</th>
		    <th class="tg-fymr">상품가격</th>
		    <th class="tg-fymr">주문수량</th>
	  	</tr>
	</thead>
	<tbody>
		<% for(OrdersDetailDTO ordersDetail:orderDetailList) { %>
	    <tr>
		    <td class="tg-0pky"><%=ordersDetail.getProductId() %></td>
		    <% 
		    	String productId = ordersDetail.getProductId();
		    	ProductDTO product = ProductDAO.getDao().selectIdProduct(productId);
		    	totalPrice += product.getpPrice() * ordersDetail.getProductQuantity();
		    %>
		    <td class="tg-0pky"><%=product.getpName() %></td>
		    <td class="tg-0pky"><%=DecimalFormat.getCurrencyInstance().format(product.getpPrice()) %></td>
		    <td class="tg-0pky"><%=ordersDetail.getProductQuantity() %></td>
	    </tr>
	    <% } %>
		<tr>
	    	<td class="tg-0pky" colspan="4">총 금액 : <%=DecimalFormat.getCurrencyInstance().format(totalPrice) %></td>
		</tr>
	</tbody>
	</table>
	<hr>
</body>
