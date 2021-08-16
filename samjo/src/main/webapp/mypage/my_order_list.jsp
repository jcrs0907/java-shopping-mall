<%@page import="java.text.DecimalFormat"%>
<%@page import="web.data.dto.ProductDTO"%>
<%@page import="web.data.dao.ProductDAO"%>
<%@page import="web.data.dao.OrdersDetailDAO"%>
<%@page import="web.data.dto.OrdersDetailDTO"%>
<%@page import="web.data.dto.OrdersDTO"%>
<%@page import="web.data.dao.OrdersDAO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/security/login_check.jspf" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<%
	List<OrdersDTO> orderList = OrdersDAO.getDAO().selectIdOrder(loginMember.getId());
	int count = 0;
	for(OrdersDTO order:orderList) {
		List<OrdersDetailDTO> orderDetailList = OrdersDetailDAO.getDAO().selectOrderDetail(order.getOrderNo());
		for(OrdersDetailDTO orderDetail:orderDetailList) {
			count++;
		}
	}
	
%>
<style type="text/css">
#container {margin-top: 80px;}
</style>

<%-- 페이지 이동 링크 - MY PAGE --%>
<%@ include file="/mypage/mypage_transition.jspf" %>

<div class="content">
    <div class="mypage_cont">
        <div class="mypage_lately_info">
            <div class="mypage_lately_info_cont">
                <span class="pick_list_num" style="display:block">
                    주문목록 / 배송조회 내역 총 <strong><%=count %></strong> 건
                </span>
                <!-- 주문상품 리스트 -->
                <div class="mypage_table_type">
				    <table>
				        <colgroup>
				            <col>					<!-- 상품명/옵션 -->
				            <col style="width:120px"> <!-- 상품금액/수량 -->
				            <col style="width:80px"> <!-- 주문상태 -->
				            <col style="width:200px"> <!-- 확인/리뷰 -->
				            <col style="width:167px"> <!-- 날짜/주문번호 -->
				        </colgroup>
				        <thead>
						<tr>
							<th>Product</th>
							<th>Quantity</th>
							<th>Price</th>
							<th>Status<div style="display:none">확인/리뷰</div></th>
							<th>Date/Order number</th>
						</tr>
				
				        </thead>
				        <tbody>
				        <% if(orderList.size() == 0) { %>
				        	<tr><td colspan="6"><p class="no_data">조회내역이 없습니다.</p></td></tr>
				        <% } else { %>
				        	<% for(OrdersDTO order:orderList) { %>
				        	<% List<OrdersDetailDTO> orderDetailList = OrdersDetailDAO.getDAO().selectOrderDetail(order.getOrderNo()); %>
					        	<% for(OrdersDetailDTO orderDetail:orderDetailList) { %>
						        	<% ProductDTO product = ProductDAO.getDao().selectIdProduct(orderDetail.getProductId()); %>
							        <tr>
							       		<td class="td_left">
											<div class="pick_add_cont">
												<span class="pick_add_img">
													<a href="#"><img src="<%=request.getContextPath() %>/product/image/<%=product.getpImg() %>" width="40" class="middle" class="imgsize-s" /></a>
												</span>
												<div class="pick_add_info">
													<em><a href="#"><%=product.getpName() %></a></em>
												</div>
											</div>
										</td>
										<td><div class="order_goods_num">수량 :  <span class="fno"><%=orderDetail.getProductQuantity() %></span></div></td>
										<td><%=DecimalFormat.getCurrencyInstance().format(product.getpPrice() * orderDetail.getProductQuantity()) %></td>
										<% if(order.getOrderStatus() == 0) { %><td>입금전</td><% } %>
										<% if(order.getOrderStatus() == 1) { %><td>배송준비</td><% } %>
										<% if(order.getOrderStatus() == 2) { %><td>배송중</td><% } %>
										<% if(order.getOrderStatus() == 3) { %><td>배송완료</td><% } %>
										<td><%=order.getOrderDate().substring(0, 10) %> / <%=order.getOrderNo() %></td>
							        </tr>
						        <% } %>
				        	<% } %>
				        <% } %>
				        </tbody>
				    </table>
				</div>
			</div>
		</div>
	</div>
</div>

