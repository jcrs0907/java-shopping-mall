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
		
	// 로그인 되어 있을 경우 세션의 멤버객체 저장
	MemberDTO loginMember=(MemberDTO)session.getAttribute("loginMember");
	
	/*장바구니 개수를 위한 productList 생성*/
	List<ProductDTO> productList = new ArrayList<ProductDTO>();

	//장바구니 개수
	if(loginMember != null){
		String mId = loginMember.getId();
		
		List<CartDTO> cartList = CartDAO.getDAO().selectCart(mId);

		for (CartDTO cart : cartList) {
			String pId = cart.getcProductId();
			ProductDTO product = ProductDAO.getDao().selectIdProduct(pId);
			productList.add(product);
		}
	}
	
%>
    
    <div id="header_in">
	<ul class="h_menu">
		<li><a href="<%= request.getContextPath() %>/index.jsp"><img src="images/deamr3_logo.png" alt="디마르3 로고"></a></li>
		<li><a href="<%= request.getContextPath() %>/index.jsp?workgroup=product&work=shop">Shop</a></li>
		<li><a href="<%= request.getContextPath() %>/index.jsp?workgroup=review&work=review">Review</a></li>
		<!-- 해성씨 href에 아래 faq url 추가 부탁해여 -->
		<li><a href="<%= request.getContextPath() %>/index.jsp?workgroup=faq&work=faq_list">CS center</a></li>
		<!--// 해성씨 href에 아래 faq url 추가 부탁해여 -->
	</ul>
	<ul class="h_util">
	<% if(loginMember != null && loginMember.getStatus()==9) { %>
		<li><a href="<%= request.getContextPath() %>/admin/admin_page.jsp">ADMIN</a></li>
	<% } %>
	<% if(loginMember==null) { %>
		<li><a href="<%= request.getContextPath() %>/index.jsp?workgroup=member&work=login">LOGIN</a></li>
	<% } else { %>
		<li><a href="<%= request.getContextPath() %>/index.jsp?workgroup=member&work=logout_action&status=0">LOGOUT</a></li>	
	<% } %>
		<li><a href="<%= request.getContextPath() %>/index.jsp?workgroup=mypage&work=my_order_list">MYPAGE</a></li>
		
	<% if(loginMember==null) { %>
	<li><a href="<%= request.getContextPath() %>/index.jsp?workgroup=member&work=login" class="ico_bag"><span class="cart_count">0</span></a></li>
	<% } else { %>
	<li><a href="<%= request.getContextPath() %>/index.jsp?workgroup=cart&work=cart_list" class="ico_bag"><span class="cart_count"><%=productList.size() %></span></a></li>
	<% } %>
	</ul>
</div>