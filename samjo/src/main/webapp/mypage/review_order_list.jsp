<%@page import="java.text.DecimalFormat"%>
<%@page import="web.data.dao.ProductDAO"%>
<%@page import="web.data.dto.ProductDTO"%>
<%@page import="web.data.dao.OrdersDetailDAO"%>
<%@page import="web.data.dto.OrdersDetailDTO"%>
<%@page import="web.data.dto.OrdersDTO"%>
<%@page import="java.util.List"%>
<%@page import="web.data.dao.OrdersDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String memberId = request.getParameter("memberId");
	List<OrdersDTO> orderList = OrdersDAO.getDAO().selectIdOrder(memberId);

	int count = 0;
	for(OrdersDTO order:orderList) {
		List<OrdersDetailDTO> orderDetailList = OrdersDetailDAO.getDAO().selectOrderDetail(order.getOrderNo());
		for(OrdersDetailDTO orderDetail:orderDetailList) {
			if(order.getOrderStatus() == 3) count++;
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/swiper.min.css">
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath() %>/css/reset.css">
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath() %>/css/common.css">
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath() %>/css/goods.css">
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath() %>/css/layer.css">
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath() %>/css/layout.css">
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath() %>/css/list.css">
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath() %>/css/order.css">   
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath() %>/css/main.css">
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath() %>/css/member.css">
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath() %>/css/mypage.css">
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath() %>/css/button.css">
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath() %>/css/service.css">
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath() %>/css/custom.css">
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath() %>/css/order.css">
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath() %>/css/board.css">
<title>주문 내역 검색</title>
</head>
<body>
<div id="lyCouponDown" class="layer_wrap add_goods_layer" style="height: 745px; position: fixed; left: 50%; top: 50%; margin-left: -440px; margin-top: -372.5px;">
	<div class="layer_wrap_cont">
		<div class="ly_cont">
			<div class="scroll_box">
				<div class="top_table_type">
					<span class="pick_list_num">주문목록 / 배송조회 내역 총 <strong><%=count %></strong> 건</span>
					<span style="color: tomato;">배송 완료된 주문만 후기를 작성할 수 있습니다.</span>
					<form id="frmSelect" name="popupForm">
						<table>
							<colgroup>
								<col style="width:60px">
								<col>
								<col style="width:100px">
								<col style="width:110px">
								<col style="width:130px">
							</colgroup>
							<thead>
							<tr>
								<th>선택</th>
								<th>상품명</th>
								<th>날짜/주문번호</th>
								<th>상품금액/수량</th>
								<th>주문상태</th>
							</tr>
							</thead>
							<tbody>
								<% for(OrdersDTO order:orderList) { %>
									<% List<OrdersDetailDTO> orderDetailList = OrdersDetailDAO.getDAO().selectOrderDetail(order.getOrderNo()); %>
									<% for(OrdersDetailDTO orderDetail:orderDetailList) { %>
										<% ProductDTO product = ProductDAO.getDao().selectIdProduct(orderDetail.getProductId()); %>
										<% if(order.getOrderStatus() == 3) { %>
											<tr>
												<td><input type="checkbox" name="productName" id="<%=product.getpId() %>" value="<%=product.getpName() %>" onclick="doOpenCheck(this)" /></td>
												<td><%=product.getpName() %></td>
												<td><%=order.getOrderDate().substring(0,10) %> / <%=order.getOrderNo() %></td>
												<td><%=DecimalFormat.getCurrencyInstance().format(product.getpPrice() * orderDetail.getProductQuantity()) %><br>수량 : <%=orderDetail.getProductQuantity() %></td>
												<td>배송완료</td>
											</tr>
										<% } %>
									<% } %>
								<% } %>
							</tbody>
						</table>
						
					</form>
				</div>
					
				<div class="pagination"><ul></ul></div>
			</div>
			<!-- //scroll_box -->
			<div class="btn_center_box">
				<button type="button" class="btn_ly_cancel layer_close" onclick="window.close()">취소</button>
				<button type="submit" class="btn_ly_ok js_select_confirm" id="confirmBtn">확인</button>
			</div>
		</div>
	</div>
	<!-- //layer_wrap_cont -->
</div>
</body>
<script type="text/javascript">
function doOpenCheck(chk){
    var obj = document.getElementsByName("productName");
    for(var i=0; i<obj.length; i++){
        if(obj[i] != chk){
            obj[i].checked = false;
        }
    }
}

$("#confirmBtn").click(function() {
	let checkItem = $('input[name="productName"]:checked');
	if(checkItem.length == 0){
		alert('선택하신 주문이 없습니다. 주문을 선택해주세요.');
		return false;
	} else {
		window.opener.document.getElementById("order").innerHTML = $('input[name="productName"]:checked').val();
		window.opener.document.getElementById("productId").value = $('input[name="productName"]:checked').attr('id');
		window.close();
	}
});
</script>
</html>