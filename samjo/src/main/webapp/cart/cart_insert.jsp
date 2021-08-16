<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="web.data.dao.CartDAO"%>
<%@page import="web.data.dto.CartDTO"%>
<%@page import="web.data.dao.MemberDAO"%>
<%@page import="web.data.dto.MemberDTO"%>
<%@page import="web.data.dao.ProductDAO"%>
<%@page import="web.data.dto.ProductDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("UTF-8");

	//세션에 로그인된 정보 가져오기
	MemberDTO loginMember=(MemberDTO)session.getAttribute("loginMember");
	
	//productList 생성 
	List<ProductDTO> productList = new ArrayList<ProductDTO>(); 
	
	
	String mId = loginMember.getId();
	String pId = request.getParameter("productId");
	int count = Integer.parseInt(request.getParameter("productQuantity"));
	
	
	//product id받아 product 리스트 생성
	ProductDTO product = ProductDAO.getDao().selectIdProduct(pId);
	productList.add(product);
	
	//default type = insert 
	String type = "insert";
	
	//CART 리스트에 해당 product id가 있으면 수량, price, sum price 변경
	List<CartDTO> cartList = CartDAO.getDAO().selectCart(mId);
	for(CartDTO cart : cartList) {
		
		//선택한 product가 이전 cart에 추가한 적이 있는 경우 타입 update
		if(pId.equals(cart.getcProductId())){
			type = "update";
			count += cart.getcQuantity();
		}
	}
	
	
	int price = 0;

	for(ProductDTO pro :productList) {
		 price = pro.getpPrice();
	}
	
	int total = count * price;
	
	CartDTO cart= new CartDTO();
	
	switch(type){
		case "insert":
			int num = CartDAO.getDAO().selectNextNum();
			cart.setcNo(num);
			cart.setcMemberId(mId);
			cart.setcProductId(pId);
			cart.setcQuantity(count);
			cart.setcPrice(price);
			cart.setcTotal(total);
			
			CartDAO.getDAO().insertCart(cart); 
			break;
		case "update":
			
			cart.setcPrice(price);
			cart.setcQuantity(count);
			cart.setcTotal(total);
			cart.setcMemberId(mId);
			cart.setcProductId(pId);
			CartDAO.getDAO().updateCart(cart); 
			
			break;
	}
	
	out.println("<script type='text/javascript'>");
	out.println("location.href='"+request.getContextPath()+"/index.jsp?workgroup=cart&work=cart_list';");
	out.println("</script>");	
%>