<%@page import="java.text.DecimalFormat"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="web.data.dao.CartDAO"%>
<%@page import="web.data.dto.CartDTO"%>
<%@page import="web.data.dao.ProductDAO"%>
<%@page import="web.data.dto.ProductDTO"%>
<%@page import="web.data.dto.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%
MemberDTO loginMember=(MemberDTO)session.getAttribute("loginMember");
String mId = loginMember.getId();

List<CartDTO> cartList = CartDAO.getDAO().selectCart(mId);

/*product name을 가져오기 위한 productList 생성*/
List<ProductDTO> productList = new ArrayList<ProductDTO>();


for (CartDTO cart : cartList) {
	String pId = cart.getcProductId();
	ProductDTO product = ProductDAO.getDao().selectIdProduct(pId);
	productList.add(product);
}
%>


<div class="content_box">
	<div class="order_wrap">
		<div class="order_tit">
			<h2>CART</h2>
		</div>
		<!-- //order_tit -->
    	
    	<%if(productList.isEmpty()){%>
   		<div class="cart_cont">
   		<p class="no_data">장바구니에 담겨있는 상품이 없습니다.</p>
   		<div class="btn_order_box">
				<span class="btn_left_box"> 
				<a href="<%=request.getContextPath()%>/index.jsp?workgroup=product&work=shop"
					class="btn_order_choice_wish">쇼핑 계속하기</a>
				</span>
			</div>
   		</div>
		<%}else{ %>
				<div class="cart_cont">
			<form id="frmCart" name="frmCart" method="post" target="ifrmProcess">
				<input type="hidden" name="mode" value="" /> 
				<input type="hidden" name="cart[cartSno]" value="" />
				<input type="hidden" name="cart[goodsNo]" value="" />
				<input type="hidden" name="cart[goodsCnt]" value="" /> <input type="hidden"
					name="cart[addGoodsNo]" value="" /> <input type="hidden"
					name="cart[addGoodsCnt]" value="" /> <input type="hidden"
					name="cart[couponApplyNo]" value="" /> <input type="hidden"
					name="useBundleGoods" value="" /> <input type="hidden"
					name="ac_id" value="" />
				<!-- 장바구니 상품리스트 시작 -->
				<div class="cart_cont_list">
					<!-- //order_cart_tit -->

					<div class="order_table_type">
						<table class="goods">
							<colgroup>
								<col style="width:100px"> 
								<col>					
								<col style="width:150px">  
								<col style="width:170px"> 
								<col style="width:120px">
							</colgroup>
							<thead>
								<tr>
									<th>
										<div class="form_element">
											<input type="checkbox" id="allCheck1"
												class="gd_select_all_goods" data-target-id=""
												data-target-form=""> 
												<label
												for="allCheck1" class="check_s">
												</label>
										</div>
									</th>
									<th>Product</th>
									<th>Quantity</th>
									<th>Price</th>
									<th>Sum Price</th>
						
								</tr>
							</thead>
							<tbody>
							
							<%
							for (int i = 0; i < productList.size(); i++) {
							%>
							<tr>
								 <td class="td_chk">
										<div class="form_element">
											<input type="checkbox" id="cartSno_<%=i%>" name="cartSno" 
												data-quantity="<%=cartList.get(i).getcQuantity()%>" data-product-price="" data-sum-price=""
												value="<%=productList.get(i).getpId()%>" data-member-id="<%=cartList.get(i).getcMemberId()%>"> <label
												for="cartSno_<%=i%>" class="check_s"  ></label>
										</div>
									</td>
		
									<td class="td_left">
										<div class="pick_add_cont">
											<span class="pick_add_img">
											<a href="<%=request.getContextPath()%>/index.jsp?kinds=goods&pId=<%=productList.get(i).getpId()%>">
											<img src="<%= request.getContextPath() %>/product/image/<%=productList.get(i).getpImg()%>" width="40"
													alt="<%=productList.get(i).getpName()%>" 
													title="<%=productList.get(i).getpName()%>" class="middle"></a>
											</span>
											<div class="pick_add_info">
												<em><a href="<%=request.getContextPath()%>/index.jsp?kinds=goods&pId=<%=productList.get(i).getpId()%>">
												<%=productList.get(i).getpName()%></a></em>
											</div>
										</div> 

									</td>
									<td class="td_order_amount">
										<div class="order_goods_num">
											<span class="count">
												<span class="goods_qty">
													<input type="text" name="goodsCnt[]" class="text goodsCnt_0" title="수량" value="<%=cartList.get(i).getcQuantity()%>" data-key="0" data-value="1" data-stock="0" readonly>
													<span>
														<button type="button" class="up goods_cnt" title="증가" value="up^|^0">증가</button>
														<button type="button" class="down goods_cnt" title="감소" value="dn^|^0">감소</button>
													</span>
												</span>
											</span>
										</div>
									</td>
									<td class="fno price">
										<%=DecimalFormat.getCurrencyInstance().format(cartList.get(i).getcPrice())%>
									</td>
						
									<td class="fno">
										<strong class="order_sum_txt"><%=DecimalFormat.getCurrencyInstance().format(cartList.get(i).getcTotal())%></strong>
										<p class="add_currency"></p>
									</td>
								</tr>
								
							<%}%>
								
							</tbody>
						</table>
					</div>
				</div>
				<!-- //cart_cont_list -->
				<!-- 장바구니 상품리스트 끝 -->
			</form>

			<div class="price_sum">
				<div class="price_sum_cont">
					<div class="price_sum_list">
						<!--
						<dl>
							<dt>총 상품금액</dt>
							<dd>
								<strong id="totalGoodsPrice"></strong>
							</dd>
						</dl>
						<dl>
							<dt>배송비</dt>
							<dd>
								<strong id="totalDeliveryCharge"></strong>
							</dd>
						</dl>
							-->

						<dl class="price_total">
							<dt>총 결제금액</dt>
							<dd>
								￦ <strong id="totalSettlePrice">0</strong>
							</dd>
						</dl>
						<div class="btn_right">
							<button type="button" data-member-id=""  class="btn_order_whole_buy" >선택상품구매</button>
						</div>
					</div>
					<em id="deliveryChargeText" class="tobe_mileage"
						style="display: none"></em>
				</div>
				<!-- //price_sum_cont -->
			</div>
			<!-- //price_sum -->

			<div class="btn_order_box">
				<span class="btn_left_box"> 
				<button type="button" data-member-id="" data-action-type="" class="btn_order_choice_del">선택 상품 삭제</button>
				<a href="<%=request.getContextPath()%>/index.jsp?workgroup=product&work=shop"
					class="btn_order_choice_wish">쇼핑 계속하기</a>
				</span>
			</div>
			<!-- //btn_order_box -->
		</div>
		<!-- //cart_cont -->
		<%} %>
   		
    	
	
	</div>
	<!-- //order_wrap -->
</div>
<!-- //content_box -->
<script>



//장바구니 삭제 버튼 
$(document).on("click",".btn_order_choice_del",function(){
	let type = $(this).data('action-type');
	let mId = $(this).data('member-id');
	var arr = $('input[name="cartSno"]:checked').map(function () {
	    return this.value; 
	}).get();  
	
	if(type == "clear"){
		if(window.confirm("선택하신 제품을 삭제하시겠습니까?")) {
			location.href="<%=request.getContextPath()%>/index.jsp?workgroup=cart&work=cart_clear&member_id="+mId;
		}
	}else if(type == "delete"){
		if(window.confirm("선택하신 제품을 삭제하시겠습니까?")) {
			location.href="<%=request.getContextPath()%>/index.jsp?workgroup=cart&work=cart_remove&member_id="+mId+"&product_id="+arr;
		}
	}else{
		return  alert('선택하신 상품이 없습니다. 상품을 선택해주세요.');
	}
});


//선택 장바구니 구매 버튼
$(document).on("click",".btn_order_whole_buy",function(){
	let checkItem = $('input[name="cartSno"]:checked');
	let row = checkItem.closest('tr');
	let quantityInput = row.find('input[name="goodsCnt[]"]');
	//상품 선택 여부 체크
	if(checkItem.length == 0){
		return  alert('선택하신 상품이 없습니다. 상품을 선택해주세요.');
	}else{
		var cartIdArr = $('input[name="cartSno"]:checked').map(function () {
		    return this.value; 
		}).get();  
		
		var quantityArr = $('input[name="cartSno"]:checked').map(function () {
		    return $(this).data('quantity'); 
		}).get();  
		
		 location.href="<%=request.getContextPath()%>/index.jsp?workgroup=order&work=order&cart_id="+cartIdArr+"&check_quantity="+quantityArr;
	}
});
</script>
