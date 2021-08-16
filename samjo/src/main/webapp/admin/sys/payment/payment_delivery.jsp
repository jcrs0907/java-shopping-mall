<%@page import="web.data.dao.DeliveryDAO"%>
<%@page import="web.data.dto.DeliveryDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int orderNo = Integer.parseInt(request.getParameter("orderNo"));
	DeliveryDTO delivery = DeliveryDAO.getDAO().selectDelivery(orderNo);
	
%>
<style type="text/css">
table {
	width: 70%;
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
	<h3>배송정보</h3>
	
	<table class="tg">
	<thead>
		<tr>
	    	<th class="tg-mxcs">주문자</th>
		    <th class="tg-91he">주문자 연락처</th>
		    <th class="tg-fymr">받는사람</th>
		    <th class="tg-fymr">받는사람 연락처</th>
		    <th class="tg-fymr">우편번호</th>
		    <th class="tg-fymr">주소</th>
		    <th class="tg-fymr">상세주소</th>
		    <th class="tg-fymr">배송메모</th>
		</tr>
	</thead>
	<tbody>
		<tr>
		    <td class="tg-0pky"><%=delivery.getSenderName() %></td>
		    <td class="tg-0pky"><%=delivery.getSenderPhone() %></td>
		    <td class="tg-0pky"><%=delivery.getRecipientName() %></td>
		    <td class="tg-0pky"><%=delivery.getRecipientPhone() %></td>
		    <td class="tg-0pky"><%=delivery.getZipcode() %></td>
		    <td class="tg-0pky"><%=delivery.getAddress1() %></td>
		    <td class="tg-0pky"><%=delivery.getAddress2() %></td>
		    <td class="tg-0pky"><%=delivery.getOrderMessage() %></td>
		</tr>
	</tbody>
	</table>
	<hr>
</body>