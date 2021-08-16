<%@page import="web.data.dao.OrdersDAO"%>
<%@page import="java.util.List"%>
<%@page import="web.data.dto.OrdersDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- admin_page.jsp에 위치한 주석을 참고해주세요. --%>
<% 
	List<OrdersDTO> orderList = OrdersDAO.getDAO().selectAllOrder();
%>

<style type="text/css">
.paymentHeader {
	margin-bottom: 50px;
}

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

a {
	text-decoration: none;
	color: black;
}

a:hover {
	color: skyblue;
}
</style>
<body>
	<div class="paymentHeader">
		<p>Payment > <span style="font-weight: 600;">주문 관리</span></p>
	</div>
	<table class="tg">
	<thead>
  		<tr>
    		<th>주문번호</th>
    		<th>회원id</th>
		    <th>주문일자</th>
		    <th>결제수단</th>
		    <th>주문상태</th>
		    <!-- <th>마이페이지 삭제처리</th>  -->
		    <th></th>
		    <th></th>
 		</tr>
	</thead>
	<tbody>
		<% for(OrdersDTO order:orderList) {%>
  		<tr>
    		<td class="orderNo"><%=order.getOrderNo() %></td>
		    <td class="memberId"><%=order.getMemberId() %></td>
		    <td class="orderDate"><%=order.getOrderDate().substring(0, 10) %></td>
		    <td class="payMethod"><%=order.getPayMethod() %></td>
		    <td class="orderStatus">
		    	<select class="status" name="<%=order.getOrderNo() %>">
		    		<option value="0" <% if(order.getOrderStatus() == 0) { %> selected="selected" <% } %>>입금대기</option>
		    		<option value="1" <% if(order.getOrderStatus() == 1) { %> selected="selected" <% } %>>결제완료</option>
		    		<option value="2" <% if(order.getOrderStatus() == 2) { %> selected="selected" <% } %>>배송중</option>
		    		<option value="3" <% if(order.getOrderStatus() == 3) { %> selected="selected" <% } %>>배송완료</option>
		    	</select>
		    </td>
		    <!-- 
		    <td class="orderBoardStatus">
		    	<select class="board_tatus" name="<%=order.getOrderNo() %>">
		    		<option value="1" <% if(order.getOrderBoardStatus() == 1) { %> selected="selected" <% } %>>게시</option>
		    		<option value="0" <% if(order.getOrderBoardStatus() == 0) { %> selected="selected" <% } %>>삭제</option>
		    	</select>
		    </td>
		    -->
		    <td class="tg-0lax">
		    	<a href="<%=request.getContextPath()%>/admin/admin_page.jsp?group=payment&work=payment_detail&orderNo=<%=order.getOrderNo() %>">상세정보</a>
		    </td>
		    <td class="tg-0lax">
		    	<a href="<%=request.getContextPath()%>/admin/admin_page.jsp?group=payment&work=payment_delivery&orderNo=<%=order.getOrderNo() %>">배송정보</a>
		    </td>
  		</tr>
  		<% } %>
  	</tbody>
  	</table>
	<hr>
</body>
<script type="text/javascript">
//주문상태 업데이트 이벤트
$(".status").change(function() {
	var orderNo = $(this).attr("name");
	var orderStatus = $(this).val();
	location.href = "<%=request.getContextPath() %>/admin/admin_page.jsp?group=payment&work=status_update_action&orderBoardstatus=&orderNo=" + orderNo + "&orderStatus=" + orderStatus;
});

//마이페이지 게시상태 업데이트 이벤트
$(".board_tatus").change(function() {
	var orderNo = $(this).attr("name");
	var orderBoardStatus = $(this).val();
	location.href = "<%=request.getContextPath() %>/admin/admin_page.jsp?group=payment&work=status_update_action&orderStatus=&orderNo=" + orderNo + "&orderBoardStatus=" + orderBoardStatus;
});
</script>