<%@page import="java.text.DecimalFormat"%>
<%@page import="web.data.dao.ProductDAO"%>
<%@page import="web.data.dto.ProductDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
******************************************************************************* 
	[카테고리]를 변경한 경우 제품목록 출력페이지(product_manager.jsp)로 이동 - 카테고리 전달 
	 
	[제품등록]을 클릭한 경우 제품정보 입력페이지(product_add.jsp)로 이동 
	 
	[제품명]을 클릭한 경우 제품정보 출력페이지(product_detail.jsp)로 이동 - 제품번호 전달
******************************************************************************* 
--%>


<% 
	//카테고리 반환받아 저장
	int pKinds=0;
	if(request.getParameter("pKinds")!=null){
		pKinds=Integer.parseInt(request.getParameter("pKinds"));		
	} 
	
	//반환받은 카테고리 DAO메소드에 전달하여 검색
	List<ProductDTO> productList=ProductDAO.getDao().selectKindsProduct(pKinds);
	int count=1;
%>
<style type="text/css">
#product {
	width: 1000px;
	margin: 10px auto;
}

#btnDiv {
	text-align: right;
	margin-bottom: 5px;
}

.product-T {
	border: 1px solid black;
	border-collapse: collapse;
}

td {
	border: 1px solid black;
	text-align: center;
	width: 200px;
	background: white;	
}
.T-header td {
	background: #a9a9a9;
}

.numbering {width: 60px;}

.pName { width: 400px; }


.nameLink {
	text-decoration: none;
	color: black;
}

.nameLink:hover {color: #00CED1;}
#categoryForm {
	text-align: right;
	padding-bottom: 5px;
}
#pKinds option, #pKinds {font-size: 14px;}

#addBtn {
	margin-top: 10px;
	font-size: 13px;
	width: 80px;
	height: 30px;	
}
</style>

<div class="productHeader">
	<p>Product > <span style="font-weight: 600;">상품 목록</span></p>
</div> 

<div id="product">
	
	<form method="post" id="categoryForm">
		<select name="pKinds" id="pKinds">
			<option value="0" <% if(pKinds==0) { %>selected="selected"<% } %>>-전체보기-</option>
			<option value="1" <% if(pKinds==1) { %>selected="selected"<% } %>>토너</option>
			<option value="2" <% if(pKinds==2) { %>selected="selected"<% } %>>크림</option>
			<option value="3" <% if(pKinds==3) { %>selected="selected"<% } %>>앰플/세럼</option>
			<option value="4" <% if(pKinds==4) { %>selected="selected"<% } %>>토탈솔루션</option>
			<option value="5" <% if(pKinds==5) { %>selected="selected"<% } %>>주름/탄력</option>
			<option value="6" <% if(pKinds==6) { %>selected="selected"<% } %>>etc</option>
		</select>
	</form>
	
	<table class="product-T">
		<tr class="T-header">
			<td class="numbering">no</td>
			<td>제품코드</td>
			<td class="pName">제품명</td>
			<td>제품가격</td>
			<td>제품재고</td>
		</tr>
		<% if(productList.isEmpty()) { %>
		<tr class="productRow">
			<td colspan="5">등록된 제품이 없습니다.</td>
		</tr>
		<% } else { %>
			<% for(ProductDTO product:productList) { %>
			<tr>
				<td class="numbering"><%=count%></td>
				<td><%=product.getpId() %></td>
				<td>
					<a class="nameLink" href="<%=request.getContextPath()%>/admin/admin_page.jsp?group=product&work=product_detail&pId=<%=product.getpId()%>"><%=product.getpName() %></a>
				<td><%=product.getpPrice() %></td>
				<td><%=product.getpStock() %></td>
			</tr>
				<% count++; %>
			<% } %>
		<% } %>
	</table>
	
	<div id="btnDiv">
		<button type="button" id="addBtn">제품등록</button>
	</div>
	

</div>
<script type="text/javascript">
	$("#addBtn").click(function() {
		location.href="<%=request.getContextPath()%>/admin/admin_page.jsp?group=product&work=product_add";
	});
	
	$("#pKinds").change(function() {
		$("#categoryForm").submit();
	});
</script>